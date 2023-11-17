import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final Widget customWidget;
  final String text;
  final String imageUrl;

  CustomCard(
      {required this.customWidget, required this.imageUrl, required this.text});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Card(
        elevation: 3, // Set the elevation for a shadow effect
        margin: EdgeInsets.all(10), // Set margin for the card
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 160,
            width: double.infinity - 40,
            child: Column(
              children: [
                // First row with image and text
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      // Image widget
                      Image.asset(
                        widget.imageUrl, // Replace with your image URL
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                          width: 10), // Add some spacing between image and text
                      // Text widget
                      Text(
                        widget.text,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Add some spacing between the rows
                // Second row with custom widget
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: widget.customWidget,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
