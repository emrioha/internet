import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/chooseCard.dart';
// import 'package:myapp/components/historyCard.dart';
// import 'package:myapp/components/chooseCard.dart';
import 'package:myapp/const/color_utils.dart';
import 'package:myapp/const/image.dart';
import 'package:myapp/screens/transactionDetail.dart';
// import 'package:myapp/const/image.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key });

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:754738546.
  ChooseCard chooseCard = ChooseCard(dueDate: "Due date on feb 17 2024",
                          harga: "Rp450.000",
                          image: netHome);
  final ExpansionTileController controller = ExpansionTileController();
  @override
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
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Transaction History",
          style: GoogleFonts.roboto(color: neutral),
        ),
      ),
      body: ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading:Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xFFE9E9E9))),
                          child: Image.asset('assets/nethome.png'),
                        ),
                        title: Text('Nethome') , 
                        subtitle: Text(chooseCard.dueDate),
                        trailing: Text('RP. 455.000', style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),),
         onTap: ()=> Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Transactiondetail())),
        );
      }, itemCount: 10,
      separatorBuilder: (context, index) {
        return Divider(
          thickness: 0.8,
          color: Color(0xFFE9E9E9),
        );
      },
));
//  Container(
// child: Column(
//         children: [
//           ListTileTheme(
//               minVerticalPadding: 0,
//               contentPadding: EdgeInsets.all(0),
//               dense: true,
//               horizontalTitleGap: -8,
//               minLeadingWidth: 0,
//               child: ExpansionTile(
//                 controller: controller,
//                 shape: Border(),
//                 title: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 32,
//                           height: 32,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8),
//                               border: Border.all(color: Color(0xFFE9E9E9))),
//                           child: Image.asset('assets/nethome.png'),
//                         ),
//                         SizedBox(
//                           width: 12,
//                         ),
//                         RichText(
//                           text: TextSpan(
//                               style: GoogleFonts.roboto(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400,
//                                   color: neutral),
//                               children: [
//                                 TextSpan(
//                                     text: 'Nethome',
//                                     style: GoogleFonts.roboto(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 16)),
//                                 TextSpan(text: "\n"),
//                                 TextSpan(
//                                     text: '',
//                                     style: GoogleFonts.roboto(
//                                         fontWeight: FontWeight.w400,
//                                         color: neutral.withOpacity(0.5),
//                                         fontSize: 14))
//                               ]),
//                         ),
//                         Spacer(),
//                         // Icon(
//                         //   Icons.check_box,
//                         //   color: yipyRed,
//                         //   size: 24,
//                         // )
//                       ],
//                     ),
//                   ),
//                 ),
//                 // children: [
//                 //   Divider(
//                 //     thickness: 0.8,
//                 //     color: Color(0xFFE9E9E9),
//                 //   ),
//                 //   Padding(
//                 //     padding: EdgeInsets.symmetric(horizontal: 16),
//                 //     child: Column(
//                 //       children: [
//                 //         Row(
//                 //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //           children: [
//                 //             Text("Provider"),
//                 //             Text("Nethome"),
//                 //           ],
//                 //         ),
//                 //         SizedBox(
//                 //           height: 10,
//                 //         ),
//                 //         Row(
//                 //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //           children: [
//                 //             Text("ID Pelanggan"),
//                 //             Text("1123645718921"),
//                 //           ],
//                 //         ),
//                 //         SizedBox(
//                 //           height: 10,
//                 //         ),
//                 //         Row(
//                 //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //           children: [
//                 //             Text("Paket Layanan"),
//                 //             Text("Nethome 100 Mbps"),
//                 //           ],
//                 //         ),
//                 //         SizedBox(
//                 //           height: 10,
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ),
//                 // ],
//                 // onExpansionChanged: (bool expanded) {
//                 //   setState(() => _seeDetails = expanded);
//                 // },
//               )),
//           // Divider(
//           //   thickness: 0.8,
//           //   color: Color(0xFFE9E9E9),
//           // ),
//           // GestureDetector(
//           //   onTap: () {
//           //     if (controller.isExpanded) {
//           //       controller.collapse();
//           //     } else {
//           //       controller.expand();
//           //     }
//           //   },
//           //   child: Container(
//           //     padding: EdgeInsets.only(bottom: 12, top: 4),
//           //     child: Center(
//           //       child: Text(
//           //         _seeDetails ? "Closed" : "See Details",
//           //         style: GoogleFonts.roboto(
//           //             fontSize: 15,
//           //             fontWeight: FontWeight.w400,
//           //             color: yipyRed),
//           //       ),
//           //     ),
//           //   ),
//           // )
//         ],
//       ),
// );
// Scaffold(
//       appBar: AppBar(
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(1),
//           child: Divider(
//             height: 1,
//             thickness: 1,
//             color: Color(0xFFE9E9E9).withOpacity(0.8),
//           ),
//         ),
//         centerTitle: true,
//         leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios)),
//         title: Text(
//           "Transaction History",
//           style: GoogleFonts.roboto(color: neutral),
//         ),
//       ),
//       body: SafeArea(
//           child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 children: [
//                   Expanded(
//                       child: ListView(
//                     children: [
//                       SizedBox(
//                         height: 16,
//                       ),
//                       // Container(
//                       //   padding:
//                       //       EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//                       //   decoration: BoxDecoration(
//                       //       color: Color(0xFFFFF5E6),
//                       //       borderRadius: BorderRadius.circular(8),
//                       //       border: Border.all(color: yipyYellow)),
//                       //   child: Row(
//                       //     children: [
//                       //       Icon(
//                       //         Icons.info_outline,
//                       //         color: yipyYellow,
//                       //       ),
//                       //       SizedBox(
//                       //         width: 12,
//                       //       ),
//                       //       RichText(
//                       //         text: TextSpan(
//                       //             style: GoogleFonts.roboto(
//                       //                 fontSize: 12,
//                       //                 fontWeight: FontWeight.w400,
//                       //                 color: neutral),
//                       //             children: [
//                       //               TextSpan(
//                       //                   text:
//                       //                       "Perlu diketahui, proses verifikasi transaksi dapat\nmemakan waktu hingga"),
//                       //               TextSpan(
//                       //                   text: " 1x24 jam",
//                       //                   style: GoogleFonts.roboto(
//                       //                       fontWeight: FontWeight.bold))
//                       //             ]),
//                       //       )
//                       //     ],
//                       //   ),
//                       // ),
//                       // SizedBox(
//                       //   height: 24,
//                       // ),
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       //   children: [
//                       //     Text(
//                       //       "Choose All",
//                       //       style: GoogleFonts.roboto(
//                       //           fontWeight: FontWeight.w500,
//                       //           fontSize: 16,
//                       //           color: neutral),
//                       //     ),
//                       //     Icon(
//                       //       Icons.check_box_outline_blank,
//                       //       color: neutral,
//                       //     )
//                       //   ],
//                       // ),
//                       // SizedBox(
//                       //   height: 16,
//                       // ),
//                       ListView.separated(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemCount: 2,
//                         separatorBuilder: (context, index) => SizedBox(
//                           height: 16,
//                         ),
//                         itemBuilder: (context, index) => HistoryCard(
//                           dueDate: "Due date on feb 17 2024",
//                           harga: "Nethome",
//                           image: '',
//                         ),
//                       ),
//                       SizedBox(
//                         height: 24,
//                       ),
//                     //   Row(
//                     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //     children: [
//                     //       Text(
//                     //         "Transaction History",
//                     //         style: GoogleFonts.roboto(
//                     //             fontWeight: FontWeight.w400,
//                     //             fontSize: 16,
//                     //             color: neutral),
//                     //       ),
//                     //       IconButton(
//                     //  onPressed: () => Navigator.push(
//                     //             context,
//                     //             MaterialPageRoute(
//                     //                 builder: (context) => Transaction())),
//                     //         icon: Icon(
//                     //           Icons.arrow_forward_ios,
//                     //           color: Color(0xFF1C1B1F),
//                     //           size: 18,
//                     //   ),
//                     //       // IconButton(
//                     //       //   Icons.arrow_forward_ios,
//                     //       //   color: Color(0xFF1C1B1F),
//                     //       //   size: 18,
//                     //       )
//                     //     ],
//                     //   ),
//                     ],
//                   )),
//                   // Container(
//                   //   child: Padding(
//                   //     padding: EdgeInsets.all(16),
//                   //     child: Column(
//                   //       children: [
//                   //         Row(
//                   //           children: [
//                   //             Image.asset("assets/ic_bill.png"),
//                   //             SizedBox(
//                   //               width: 12,
//                   //             ),
//                   //             Text(
//                   //               "Total Payment",
//                   //               style: GoogleFonts.roboto(
//                   //                 fontSize: 16,
//                   //                 fontWeight: FontWeight.w500,
//                   //               ),
//                   //             ),
//                   //             Spacer(),
//                   //             Text(
//                   //               "Rp450.000",
//                   //               style: GoogleFonts.roboto(
//                   //                   fontSize: 16,
//                   //                   fontWeight: FontWeight.w500,
//                   //                   color: yipyBlue),
//                   //             ),
//                   //           ],
//                   //         ),
//                   //         SizedBox(
//                   //           height: 16,
//                   //         ),
//                   //         GestureDetector(
//                   //           onTap: () {},
//                   //           child: Container(
//                   //             padding: EdgeInsets.symmetric(vertical: 14),
//                   //             decoration: BoxDecoration(
//                   //                 color: yipyRed,
//                   //                 borderRadius: BorderRadius.circular(8)),
//                   //             child: Row(
//                   //               mainAxisAlignment: MainAxisAlignment.center,
//                   //               children: [
//                   //                 Text(
//                   //                   "PAY NOW",
//                   //                   style: GoogleFonts.roboto(
//                   //                       fontSize: 14,
//                   //                       fontWeight: FontWeight.w700,
//                   //                       color: Colors.white),
//                   //                 )
//                   //               ],
//                   //             ),
//                   //           ),
//                   //         )
//                   //       ],
//                   //     ),
//                   //   ),
//                   // )
//                 ],
//               ))),
//     );
  }
}