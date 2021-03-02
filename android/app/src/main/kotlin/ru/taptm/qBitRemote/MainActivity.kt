package ru.taptm.qBitRemote

import android.content.Intent
import android.os.Bundle
import androidx.annotation.NonNull
import com.google.firebase.crashlytics.FirebaseCrashlytics
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    private var sharedIntentData: Map<String, String>? = null
    private val intentCatcher = TorrentIntentCatcher(context)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        FirebaseCrashlytics.getInstance().setCrashlyticsCollectionEnabled(!BuildConfig.DEBUG)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        catchIntent(intent, true)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        catchIntent(intent, false)
    }

    private fun catchIntent(intent: Intent, isInitLaunch: Boolean) {
        val sharedFile = intentCatcher.catchIntent(intent)
        if (sharedFile.isValidate()) {
            sharedIntentData = mapOf(
                    "isFileLink" to sharedFile.isFileLink.toString(),
                    "path" to sharedFile.path,
                    "isInitLaunch" to isInitLaunch.toString()
            )
        }
        event?.success(sharedIntentData)
    }

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        val eventChannel = EventChannel(flutterEngine.dartExecutor.binaryMessenger, EVENT_CHANNEL_DATA)
        eventChannel.setStreamHandler(EventStreamPlugin())

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, METHOD_CHANNEL_CALLBACK)
                .setMethodCallHandler { call, _ ->
                    if (call.method?.contentEquals("getSharedData") == true) {
                        event?.success(sharedIntentData)
                    }
                }
    }

    companion object {
        var event: EventChannel.EventSink? = null
        private const val EVENT_CHANNEL_DATA = "app.channel.shared.data"
        private const val METHOD_CHANNEL_CALLBACK = "app.channel.shared.method"
    }
}

class EventStreamPlugin : EventChannel.StreamHandler {
    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        MainActivity.event = events
    }

    override fun onCancel(arguments: Any?) {
        MainActivity.event = null
    }
}