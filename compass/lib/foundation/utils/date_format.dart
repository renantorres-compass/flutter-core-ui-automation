abstract class CompassDateFormat {
  /// DateTime international (YYYY-MM-DD HH:MM:SS ±HHMM)

  /// "dd/MM"
  static String compact(String dateTime) {
    return "${dateTime.substring(8, 10)}/${dateTime.substring(5, 7)}";
  }

  /// "dd/MM - HH:mm"
  static String compactHyphenated(String dateTime) {
    return "${dateTime.substring(8, 10)}/${dateTime.substring(5, 7)} - ${dateTime.substring(11, 16)}";
  }

  /// "dd/MM/yyyy"
  static String short(String dateTime) {
    return "${dateTime.substring(8, 10)}/${dateTime.substring(5, 7)}/${dateTime.substring(0, 4)}";
  }

  /// "dd/MM/yyyy HH:mm"
  static String medium(String dateTime) {
    return "${dateTime.substring(8, 10)}/${dateTime.substring(5, 7)}/${dateTime.substring(0, 4)} ${dateTime.substring(11, 16)}";
  }

  /// "dd/MM/yyyy HH:mm"
  static String mediumHyphenated(String dateTime) {
    return "${dateTime.substring(8, 10)}/${dateTime.substring(5, 7)}/${dateTime.substring(0, 4)} - ${dateTime.substring(11, 16)}";
  }

  /// "dd/MM/yyyy HH:mm:ss"
  static String full(String dateTime) {
    return "${dateTime.substring(8, 10)}/${dateTime.substring(5, 7)}/${dateTime.substring(0, 4)} ${dateTime.substring(11, 19)}";
  }

  /// "dd/MM/yyyy HH:mm:ss"
  static String fullHyphenated(String dateTime) {
    return "${dateTime.substring(8, 10)}/${dateTime.substring(5, 7)}/${dateTime.substring(0, 4)} - ${dateTime.substring(11, 19)}";
  }

  /// "MMMM / YYYY"
  static String monthYear(String dateTime) {
    return "${monthName(dateTime.substring(5, 7))} / ${dateTime.substring(0, 4)}";
  }

  /// "dd / MMMM"
  static String dayShortNamedMonth(String dateTime) {
    return "${dateTime.substring(8, 10)} / ${monthName(dateTime.substring(5, 7))}";
  }

  static String monthName(String month) {
    switch (month) {
      case "01":
        return "Janeiro";
      case "02":
        return "Fevereiro";
      case "03":
        return "Março";
      case "04":
        return "Abril";
      case "05":
        return "Maio";
      case "06":
        return "Junho";
      case "07":
        return "Julho";
      case "08":
        return "Agosto";
      case "09":
        return "Setembro";
      case "10":
        return "Outubro";
      case "11":
        return "Novembro";
      case "12":
      default:
        return "Dezembro";
    }
  }
}
