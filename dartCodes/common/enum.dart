enum distros {
  kaliLinux,
  fedora,
  popOs,
  mint,
  ubuntu,
}

extension ToStringValue on distros {
  String toStr() {
    switch (this) {
      case distros.kaliLinux:
        return "kaliLinux";
      default:
        return "Invalid Type";
    }
  }
}

void main(List<String> args) {
  print(distros.kaliLinux.toStr().runtimeType);
}
