import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textFieldController;
  final String hintName;
  final TextInputType? textInputType;
  final bool? showLabel;
  const CustomTextField(
      {Key? key,
      required this.textFieldController,
      this.showLabel,
      this.textInputType,
      required this.hintName})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textFieldController,
      keyboardType: widget.textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(),
        // focusedBorder: focusOutline,
        // enabledBorder: enabledOutline,
        hintText: widget.hintName,
        // hintStyle: hintTextStyle,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '${widget.hintName} required.';
        }
        return null;
      },
    );

    //   Column(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     // SizedBox(
    //     //   height: 8,
    //     // ),
    //     // if (widget.showLabel != null && (widget.showLabel == true))
    //     //   Text(
    //     //     widget.hintName,
    //     //     style: TextStyle(
    //     //       fontSize: 16,
    //     //       // fontFamily: FontFamily.plusJakartaSans,
    //     //     ),
    //     //   ),
    //     // SizedBox(
    //     //   height: 4,
    //     // ),
    //     TextFormField(
    //       controller: widget.textFieldController,
    //       keyboardType: widget.textInputType ?? TextInputType.text,
    //       decoration: InputDecoration(
    //         isDense: true,
    //         border: OutlineInputBorder(),
    //         // focusedBorder: focusOutline,
    //         // enabledBorder: enabledOutline,
    //         hintText: widget.hintName,
    //         // hintStyle: hintTextStyle,
    //       ),
    //       validator: (value) {
    //         if (value == null || value.isEmpty) {
    //           return '${widget.hintName} required.';
    //         }
    //         return null;
    //       },
    //     )
    //   ],
    // );
  }
}
