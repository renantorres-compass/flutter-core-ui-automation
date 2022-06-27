class FullNameValidator {
  final String errorMessage;

  FullNameValidator({required this.errorMessage});

  String? validateFullName(String? fullName) {
    String firstName = "";
    String lastName = "";
    List<String> listName = [];

    if (fullName != null && fullName.isNotEmpty) {
      listName = fullName.split(' ');
      if (listName.length > 1) {
        firstName = listName[0];
        lastName = listName[1];
      }
    }

    if (fullName == null ||
        fullName.trim().isEmpty ||
        fullName.trim().length < 3) {
      return errorMessage;
    } else if (listName.length <= 1) {
      return errorMessage;
    } else if (firstName.length < 2 || lastName.isEmpty) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
