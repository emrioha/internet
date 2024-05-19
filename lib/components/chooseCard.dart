// import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/const/color_utils.dart';

class ChooseCard extends StatefulWidget {
  ChooseCard(
      {super.key,
      required this.dueDate,
      required this.harga,
      required this.image});
  final String harga;
  final String dueDate;
  final String image;

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  final ExpansionTileController controller = ExpansionTileController();

  bool _seeDetails = false;
  bool isChecked = true;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFFE9E9E9))),
      child: Column(
        children: [
          ListTileTheme(
              minVerticalPadding: 0,
              contentPadding: EdgeInsets.all(0),
              dense: true,
              horizontalTitleGap: -8,
              minLeadingWidth: 0,
              child: ExpansionTile(
                controller: controller,
                shape: Border(),
                title: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xFFE9E9E9))),
                          child: Image.asset(widget.image),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        RichText(
                          text: TextSpan(
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: neutral),
                              children: [
                                TextSpan(
                                    text: widget.harga,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                TextSpan(text: "\n"),
                                TextSpan(
                                    text: widget.dueDate,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        color: neutral.withOpacity(0.5),
                                        fontSize: 14))
                              ]),
                        ),
                        Spacer(),
                           Checkbox(value: isChecked,
          activeColor: yipyRed,
          onChanged:(bool ? value){
        setState(() {
          isChecked = value!;
        });
      })
                      ],
                    ),
                  ),
                ),
                children: [
                  Divider(
                    thickness: 0.8,
                    color: Color(0xFFE9E9E9),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Provider"),
                            Text("Nethome"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ID Pelanggan"),
                            Text("1123645718921"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Paket Layanan"),
                            Text("Nethome 100 Mbps"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() => _seeDetails = expanded);
                },
              )),
          Divider(
            thickness: 0.8,
            color: Color(0xFFE9E9E9),
          ),
          GestureDetector(
            onTap: () {
              if (controller.isExpanded) {
                controller.collapse();
              } else {
                controller.expand();
              }
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 12, top: 4),
              child: Center(
                child: Text(
                  _seeDetails ? "Closed" : "See Details",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: yipyRed),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}