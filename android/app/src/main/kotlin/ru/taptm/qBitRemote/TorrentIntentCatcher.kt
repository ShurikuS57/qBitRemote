package ru.taptm.qBitRemote

import android.content.Context
import android.content.Intent
import android.database.Cursor
import android.net.Uri
import android.provider.OpenableColumns
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream

class TorrentIntentCatcher(private val context: Context) {
    var path = ""
    var isFileLink = true

    fun catchIntent(intent: Intent): SharedFile {
        val action: String? = intent.action
        val type: String? = intent.type
        if (Intent.ACTION_SEND == action && type != null) {
            if ("application/x-bittorrent" == type) {
                val uri = intent.extras?.get(Intent.EXTRA_STREAM)
                if (uri != null && uri is Uri) {
                    catchUri(uri)
                }
            }
        } else if (Intent.ACTION_VIEW == action) {
            if (type == "application/x-bittorrent") {
                val uri = intent.data
                if (uri != null) {
                    catchUri(uri)
                }
            } else if (intent.data?.scheme == "magnet" && intent.data is Uri) {
                val uri = intent.data as Uri
                isFileLink = false
                path = uri.toString()
            }
        }
        return SharedFile(isFileLink, path)
    }

    private fun catchUri(uri: Uri) {
        val fileName = uri2filename(uri)
        val newFile = File(context.cacheDir.absolutePath + "/" + fileName)
        val stream = context.contentResolver.openInputStream(uri)
        if (stream != null) {
            newFile.delete()
            copyStreamToFile(stream, newFile)
            path = newFile.absolutePath
        }
    }

    private fun uri2filename(uri: Uri): String {
        var ret = "default_name"
        val scheme = uri.scheme
        if (scheme == "file") {
            ret = uri.lastPathSegment ?: ret
        } else if (scheme == "content") {
            val cursor: Cursor? = context.contentResolver.query(uri, null, null, null, null)
            if (cursor != null && cursor.moveToFirst()) {
                ret = cursor.getString(cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME))
            }
            cursor?.close()
        }
        return ret
    }

    private fun copyStreamToFile(inputStream: InputStream, outputFile: File) {
        inputStream.use { input ->
            val outputStream = FileOutputStream(outputFile)
            outputStream.use { output ->
                val buffer = ByteArray(4 * 1024) // buffer size
                while (true) {
                    val byteCount = input.read(buffer)
                    if (byteCount < 0) break
                    output.write(buffer, 0, byteCount)
                }
                output.flush()
            }
        }
    }
}

data class SharedFile(val isFileLink: Boolean, val path: String) {

    fun isValidate(): Boolean {
        return path.isNotBlank()
    }
}