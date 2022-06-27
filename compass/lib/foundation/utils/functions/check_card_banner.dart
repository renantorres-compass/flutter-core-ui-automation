enum BannerTypes {
  visa,
  mastercard,
  amex;
}

abstract class CheckCardBanner {
  static int? checkCardBanner(String card) {
    card = card.replaceAll(RegExp(r"\s+"), "");
    if (RegExp(r'^4\d{12}(\d{3})?$').hasMatch(card)) {
      return BannerTypes.visa.index;
    }
    if (RegExp(r'^5[1-5]\d{14}$').hasMatch(card)) {
      return BannerTypes.mastercard.index;
    }
    if (RegExp(r'^3[47]\d{13}$').hasMatch(card)) {
      return BannerTypes.amex.index;
    }

    return null;
  }
}
