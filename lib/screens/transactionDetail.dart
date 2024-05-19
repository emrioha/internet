import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/const/color_utils.dart';

class Transactiondetail extends StatefulWidget {
  const Transactiondetail({super.key});

  @override
  State<Transactiondetail> createState() => _TransactiondetailState();
}

class _TransactiondetailState extends State<Transactiondetail> {
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
          "Transaction Detail",
          style: GoogleFonts.roboto(color: neutral),
        ),
      ),
      body: SafeArea(child: ListView(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child : (Center(child: Image.asset('assets/succes.gif', width: 80, height: 80,)))
          ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Center(
              child: Text('RP. 455.000', style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32,
                                  color: neutral),),
            )),
                                SizedBox(height: 10),
                                Center(
                                  child: RichText(text: TextSpan(
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: yipyGreen),
                                    children: [
                                      TextSpan(
                                          text:
                                              "Pembayaran Berhasil"  ),
                                      
                                    ],),),
                                ),
                                  SizedBox(height: 16),
                                   Divider(
            height: 10,
            thickness: 10,
            color: Color(0xFFE9E9E9).withOpacity(0.8),
          ),
          SizedBox(height: 16),
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
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ID Pelanggan"),
                            Text("1123645718921"),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Paket Layanan"),
                            Text("Nethome 100 Mbps"),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        
                      ],
                    ),
                  ),
                  //          
                  Divider(height: 10,
            thickness: 10,
            

            color: Color(0xFFE9E9E9).withOpacity(0.8),),
             SizedBox(
                          height: 16,
                        ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("No. Transaksi"),
                            Text("BC444724669887648110"),
                          ],
                        ),
              
                        SizedBox(
                          height: 16,
                        ),
                             Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE9E9E9).withOpacity(0.8),
          ),SizedBox(
                          height: 16,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Waktu Transaksi"),
                            Text("15 Feb 2024 10:32"),
                          ],
                        ),
                
                        SizedBox(
                          height: 16,
                        ),
                             Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE9E9E9).withOpacity(0.8),
          ),
          SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Jumlah Tagihan"),
                            Text("Rp450.000"),
                          ],
                        ),
              
                        SizedBox(
                          height: 16,
                        ),
                             Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE9E9E9).withOpacity(0.8),
          ),
          SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Convenience Fee"),
                            Text("Rp5.000"),
                          ],
                        ),
                   
                        SizedBox(
                          height: 16,
                        ),
                             Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE9E9E9).withOpacity(0.8),
          ),
          SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Method"),
                            Text("BCA Virtual Account"),
                          ],
                        ),
                        
                        SizedBox(
                          height: 16,
                        ),Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE9E9E9).withOpacity(0.8),
          ),
          SizedBox(height: 18),
          Container(
  
            // padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            
                                  child: RichText(
                                    
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: neutral.withOpacity(0.5),),
                                    children: [
                                      // WidgetSpan(child: Text('Proses verifikasi transaksi dapat memakan waktu\nhingga 1x24 jam.', textAlign: TextAlign.justify,))
                                      TextSpan(
                                          text:
                      
                                              "Proses verifikasi transaksi dapat memakan waktu\nhingga 1x24 jam.")
                                      
                                    ],),),
                                    
                                  
                                ),
                                SizedBox(height: 25,)

                      ],
                    ),
                  ),
                              
          
      ],
      
      ),
      
      ),
      );
//       ListView.separated(itemBuilder: (context, index){
//         return Container(
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//           child: Center(child: Image.asset('assets/succes.gif', width: 80, height: 80,),
          
//           ),
//         );
//       }, itemCount: 1,
//       separatorBuilder: (context, index) {
//         return Divider(
//           thickness: 0.8,
//           color: Color(0xFFE9E9E9),
//         );
//       },
// ));
    
  }
}