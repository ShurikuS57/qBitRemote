
RegExp _magnetLink = RegExp(r"magnet:\?xt=urn:btih:[a-zA-Z0-9]*");

bool isMagnetLink(String str) {
  return _magnetLink.hasMatch(str);
}