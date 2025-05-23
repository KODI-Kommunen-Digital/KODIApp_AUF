import 'dart:io';
import 'package:flutter/material.dart';
import 'package:heidi/src/utils/configs/routes.dart';
import 'package:heidi/src/utils/translate.dart';

class CitiesDropDown extends StatefulWidget {
  final ValueSetter<String>? setLocationCallback;
  final List<String>? cityTitlesList;
  final String? hintText;
  final String? selectedOption;
  final bool showQR;

  const CitiesDropDown({
    super.key,
    required this.setLocationCallback,
    required this.cityTitlesList,
    this.hintText,
    this.selectedOption,
    this.showQR = true
  });

  @override
  State<CitiesDropDown> createState() => _CitiesDropDownState();
}

class _CitiesDropDownState extends State<CitiesDropDown> {
  @override
  Widget build(BuildContext context) {
    String? chosenOption =
        widget.selectedOption != "" ? widget.selectedOption : null;
    EdgeInsets contentPadding = Platform.isIOS
        ? const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0)
        : const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0);

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 16, bottom: 8),
        child: Card(
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
          child: DropdownButtonFormField<String>(
            value: chosenOption,
            onChanged: (newValue) {
              setState(() {
                widget.setLocationCallback!(newValue!);
                chosenOption = newValue;
              });
            },
            items: widget.cityTitlesList?.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 10.0),
                  child: Text(option, style: const TextStyle(fontSize: 16)),
                ),
              );
            }).toList(),
            decoration: InputDecoration(
              contentPadding: contentPadding,
              suffixIcon: (widget.showQR)
                  ? IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.qrCodeScreen);
                      },
                      icon: const Icon(Icons.qr_code))
                  : null,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              labelText: widget.hintText ??
                  Translate.of(context).translate('select_location'),
              labelStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color ??
                    Colors.white,
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
