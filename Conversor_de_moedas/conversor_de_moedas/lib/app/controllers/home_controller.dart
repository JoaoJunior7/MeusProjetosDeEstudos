import 'package:flutter/cupertino.dart';
import '../models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;

  late final TextEditingController toText;
  late final TextEditingController fromText;

  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    late String text = toText.text;
    late double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    late double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
