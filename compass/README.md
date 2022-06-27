# Features

## Extensions

### Context

- _.screenSize_

  Returns the **Size** of Screen, can be used to determinate the Width or Height for example: _Container( height: screenSize.heigth \* 2)_

- _.appTextTheme_

  Get the Text Theme easily. <br/> <br/>

### Double

- _.moneyFormat_

  Converts a **double** value to BRL money format (ex: R$ 1.234,00). <br/> <br/>

### Int

- _.moneyFormat_

  Converts a **int** value to BRL money format (ex: R$ 1.234,00).<br/> <br/>

### String

**Date Formats**

- _.dateFormatCompact_

  "dd/MM" <br/>

- _.dateFormatCompactHyphenated_

  "dd/MM - HH:mm" <br/>

- _.dateFormatShort_

  "dd/MM/yyyy" <br/>

- _.dateFormatMedium_

  "dd/MM/yyyy HH:mm" <br/>

- _.dateFormatMediumHyphenated_

  "dd/MM/yyyy - HH:mm" <br/>

- _.dateFormatFull_

  "dd/MM/yyyy HH:mm:ss" <br/>

- _.dateFormatFullHyphenated_

  "dd/MM/yyyy - HH:mm:ss" <br/>

- _.dateFormatMonthYear_

  "MMMM / YYYY" <br/>

- _.dateFormatDayShortNamedMonth_

  "dd / MMMM" <br/> <br/>

**Parse**

- _.parseInt()_

  Easy way to convert String to int <br/>

- _.parseDouble()_

  Easy way to convert String to double <br/> <br/>

**Other Formats**

- _.toBirthDayFormat()_

  Convert String text to birthday format (ex: 22/08/1990). <br/>

- _.toCardNumber()_

  Convert String to card number format (ex: "#### #### #### ####") <br/>

- _.toCNPJFormat()_

  Convert String to CNPJ format (ex: "##.###.###/####-##") <br/>

- _.toCPFFormat()_

  Convert String to CPF format (ex: "###.###.###-##") <br/>

- _.toPhoneFormat()_

  Convert String to Phone format (ex:"(##) #####-####") <br/>

- _.toZipCodeFormat()_

  Convert String to Zip Code format (ex:"#####-###") <br/>

- _.removeWhiteSpace()_

  Remove All white spaces. <br/> <br/>

## Utils

### Formats

#### Abstract Class _CompassDateFormat_

Convert **DateTime International** (YYYY-MM-DD HH:MM:SS ±HHMM) String format to **Brazilian Formats**: <br/><br/>

1. _CompassDateFormat.**compact**(String dateTime)_

   "dd/MM"<br/>

2. _CompassDateFormat.**compactHyphenated**(String dateTime)_

   "dd/MM - HH:mm"<br/>

3. _CompassDateFormat.**short**(String dateTime)_

   "dd/MM/yyyy"<br/>

4. _CompassDateFormat.**medium**(String dateTime)_

   "dd/MM/yyyy HH:mm"<br/>

5. _CompassDateFormat.**mediumHyphenated**(String dateTime)_

   "dd/MM/yyyy - HH:mm"<br/>

6. _CompassDateFormat.**full**(String dateTime)_

   "dd/MM/yyyy HH:mm:ss"<br/>

7. _CompassDateFormat.**fullHyphenated**(String dateTime)_

   "dd/MM/yyyy - HH:mm:ss"<br/>

8. _CompassDateFormat.**monthYear**(String dateTime)_

   "MMMM / YYYY"<br/>

9. _CompassDateFormat.**dayShortNamedMonth**(String dateTime)_

   "dd / MMMM"<br/>

10. _CompassDateFormat.**monthName**(String month)_

    Ex: "01" == Janeiro.<br/>

## Utils

### Formats

#### - Abstract Class _CompassDateFormat_

Convert **DateTime International** (YYYY-MM-DD HH:MM:SS ±HHMM) String format to **Brazilian Formats**: <br/><br/>

1. _CompassDateFormat.**compact**(String dateTime)_

   "dd/MM"<br/>

2. _CompassDateFormat.**compactHyphenated**(String dateTime)_

   "dd/MM - HH:mm"<br/>

3. _CompassDateFormat.**short**(String dateTime)_

   "dd/MM/yyyy"<br/>

4. _CompassDateFormat.**medium**(String dateTime)_

   "dd/MM/yyyy HH:mm"<br/>

5. _CompassDateFormat.**mediumHyphenated**(String dateTime)_

   "dd/MM/yyyy - HH:mm"<br/>

6. _CompassDateFormat.**full**(String dateTime)_

   "dd/MM/yyyy HH:mm:ss"<br/>

7. _CompassDateFormat.**fullHyphenated**(String dateTime)_

   "dd/MM/yyyy - HH:mm:ss"<br/>

8. _CompassDateFormat.**monthYear**(String dateTime)_

   "MMMM / YYYY"<br/>

9. _CompassDateFormat.**dayShortNamedMonth**(String dateTime)_

   "dd / MMMM"<br/>

10. _CompassDateFormat.**monthName**(String month)_

    Ex: "01" == Janeiro.<br/><br/>

#### - Abstract Class _CompassMoneyFormat_

Convert **num** to a String **BRL Money**: <br/><br/>

1. _CompassMoneyFormat.**moneyBRLformat**(num value)_

   "R$ 1.234,00"<br/>

### Functions

#### - _CheckCardBanner.checkCardBanner(String cardNumber)_

Get the Card Banner enum type from the String card number value.

This function uses the enum **BannerTypes {visa, mastercard, amex}** localized inside the same file from abstract class _CheckCardBanner_

<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).


TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

### Extensions



## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.

-->
