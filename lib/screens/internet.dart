import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/chooseCard.dart';
import 'package:myapp/const/image.dart';
import 'package:myapp/const/color_utils.dart';
import 'package:myapp/screens/transaction.dart';

class InternetPage extends StatefulWidget {
  const InternetPage({super.key});

  @override
  State<InternetPage> createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> {
  @override
  bool isChecked = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE9E9E9).withOpacity(0.8),
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          "Internet",
          style: GoogleFonts.roboto(color: neutral),
        ),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFF5E6),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: yipyYellow)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: yipyYellow,
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
                                        text:
                                            "Perlu diketahui, proses verifikasi transaksi dapat\nmemakan waktu hingga"),
                                    TextSpan(
                                        text: " 1x24 jam",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold))
                                  ]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Choose All",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: neutral),
                          ),
                          Checkbox(value: isChecked,
          activeColor: yipyRed,
          onChanged:(bool ? value){
        setState(() {
          isChecked = value!;
        });
      })
                          // Icon(
                          //   Icons.check_box_outline_blank,
                          //   color: neutral,
                          // )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        separatorBuilder: (context, index) => SizedBox(
                          height: 16,
                        ),
                        itemBuilder: (context, index) => ChooseCard(
                          dueDate: "Due date on feb 17 2024",
                          harga: "Rp450.000",
                          image: netHome,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction History",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: neutral),
                          ),
                          IconButton(
                     onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Transaction())),
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF1C1B1F),
                              size: 18,
                      ),
                          // IconButton(
                          //   Icons.arrow_forward_ios,
                          //   color: Color(0xFF1C1B1F),
                          //   size: 18,
                          )
                        ],
                      ),
                    ],
                  )),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/ic_bill.png"),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "Total Payment",
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Rp450.000",
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: yipyBlue),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              decoration: BoxDecoration(
                                  color: yipyRed,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "PAY NOW",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}