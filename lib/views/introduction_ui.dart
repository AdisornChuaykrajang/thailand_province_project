// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:thailand_province_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUi extends StatefulWidget {
  const IntroductionUi({super.key});

  @override
  State<IntroductionUi> createState() => _IntroductionUiState();
}

class _IntroductionUiState extends State<IntroductionUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.purple[100],
      body: Flexible(
        child: IntroductionScreen(
          autoScrollDuration: 2000,
          infiniteAutoScroll: true,
          scrollPhysics: BouncingScrollPhysics(),
          pages: [
            PageViewModel(
                titleWidget: Text(
                  'อำเภอกะพ้อ',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/1.png'),
                bodyWidget: Text(
                  'อำเภอกะพ้อตั้งอยู่ทางทิศตะวันออกเฉียงใต้ของจังหวัด ห่างจากอำเภอเมืองปัตตานี 68 กิโลเมตร อาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n-ทิศเหนือ ติดต่อกับอำเภอทุ่งยางแดงและอำเภอสายบุรี\n\n-ทิศตะวันออก ติดต่อกับอำเภอบาเจาะ (จังหวัดนราธิวาส)\n-ทิศใต้ ติดต่อกับอำเภอรามัน (จังหวัดยะลา)\n-ทิศตะวันตก ติดต่อกับอำเภอรามัน (จังหวัดยะลา) และอำเภอทุ่งยางแดง',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  '   อำเภอโคกโพธิ์',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/2.png'),
                bodyWidget: Text(
                  'อำเภอโคกโพธิ์ตั้งอยู่ทางทิศตะวันตกของจังหวัด มีอาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n\n-ทิศเหนือ ติดต่อกับอำเภอหนองจิก\n-ทิศตะวันออก ติดต่อกับอำเภอแม่ลาน\n-ทิศใต้ ติดต่อกับอำเภอเมืองยะลา (จังหวัดยะลา) และอำเภอสะบ้าย้อย (จังหวัดสงขลา)\n-ทิศตะวันตก ติดต่อกับอำเภอสะบ้าย้อยและอำเภอเทพา (จังหวัดสงขลา)',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอทุ่งยางแดง',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/3.png'),
                bodyWidget: Text(
                  'อำเภอทุ่งยางแดงตั้งอยู่ทางทิศใต้ของจังหวัด มีอาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n\n-ทิศเหนือ ติดต่อกับอำเภอมายอและอำเภอสายบุรี\n-ทิศตะวันออก ติดต่อกับอำเภอสายบุรีและอำเภอกะพ้อ\n-ทิศใต้ ติดต่อกับอำเภอรามัน (จังหวัดยะลา) และอำเภอยะรัง\n-ทิศตะวันตก ติดต่อกับอำเภอยะรังและอำเภอมายอ',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอปะนาเระ',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/4.png'),
                bodyWidget: Text(
                  'อำเภอปะนาเระตั้งอยู่ริมชายฝั่งทางทิศตะวันออกเฉียงเหนือของจังหวัด มีอาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n\n-ทิศเหนือ ติดต่อกับอ่าวไทย\n-ทิศตะวันออก ติดต่อกับอ่าวไทย\n-ทิศใต้ ติดต่อกับอำเภอสายบุรีและอำเภอมายอ\n-ทิศตะวันตก ติดต่อกับอำเภอยะหริ่ง',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอแม่ลาน',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/5.png'),
                bodyWidget: Text(
                  'อำเภอแม่ลานมีอาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n\n-ทิศเหนือ ติดต่อกับอำเภอหนองจิก\n-ทิศตะวันออก ติดต่อกับอำเภอยะรัง และอำเภอเมืองยะลา (จังหวัดยะลา)\n-ทิศใต้ ติดต่อกับอำเภอเมืองยะลา (จังหวัดยะลา)\n-ทิศตะวันตก ติดต่อกับอำเภอโคกโพธิ์',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอมายอ',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/6.png'),
                bodyWidget: Text(
                  'อำเภอมายอตั้งอยู่ทางตอนกลางของจังหวัด มีอาณาเขตติดต่อกับอำเภอข้างเคียง ดังนี้\n\n-ทิศเหนือ ติดต่อกับอำเภอยะหริ่ง\n-ทิศตะวันออก ติดต่อกับอำเภอปะนาเระ อำเภอสายบุรี และอำเภอทุ่งยางแดง\n-ทิศใต้ ติดต่อกับอำเภอทุ่งยางแดงและอำเภอยะรัง\n-ทิศตะวันตก ติดต่อกับอำเภอยะรัง',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอเมืองปัตตานี',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/7.png'),
                bodyWidget: Text(
                  'อำเภอเมืองปัตตานีตั้งอยู่ริมชายฝั่งทางทิศตะวันตกเฉียงเหนือของจังหวัด มีอาณาเขตติดต่อกับอำเภอข้างเคียง ดังนี้\n\n-ทิศเหนือ ติดต่อกับอ่าวไทย\n-ทิศตะวันออก ติดต่อกับอำเภอยะหริ่ง\n-ทิศใต้ ติดต่อกับอำเภอยะรังและอำเภอหนองจิก\n-ทิศตะวันตก ติดต่อกับอำเภอหนองจิก',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอไม้แก่น',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/8.png'),
                bodyWidget: Text(
                  'อำเภอไม้แก่นตั้งอยู่ริมชายฝั่งทางทิศตะวันออกเฉียงใต้สุดของจังหวัด มีอาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n\n-ทิศเหนือ ติดต่อกับอำเภอสายบุรีและอ่าวไทย\n-ทิศตะวันออก ติดต่อกับอ่าวไทย\n-ทิศใต้ ติดต่อกับอำเภอเมืองนราธิวาสและอำเภอบาเจาะ (จังหวัดนราธิวาส)\n-ทิศตะวันตก ติดต่อกับอำเภอบาเจาะ (จังหวัดนราธิวาส) และอำเภอสายบุรี',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอยะรัง',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/9.png'),
                bodyWidget: Text(
                  'อำเภอยะรังตั้งอยู่ทางตอนกลางของจังหวัด มีอาณาเขตติดต่อกับอำเภอข้างเคียง ดังนี้\n\n-ทิศเหนือ ติดต่อกับอำเภอเมืองปัตตานี\n-ทิศตะวันออก ติดต่อกับอำเภอยะหริ่ง อำเภอมายอ และอำเภอทุ่งยางแดง\n-ทิศใต้ ติดต่อกับอำเภอรามันและอำเภอเมืองยะลา (จังหวัดยะลา)\n-ทิศตะวันตก ติดต่อกับอำเภอเมืองยะลา (จังหวัดยะลา) อำเภอแม่ลาน และอำเภอหนองจิก',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอยะหริ่ง',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/10.png'),
                bodyWidget: Text(
                  'อำเภอยะหริ่งตั้งอยู่ทางทิศเหนือของจังหวัด มีอาณาเขตติดต่อกับอำเภอข้างเคียง ดังนี้\n\n-ทิศเหนือ ติดต่อกับอ่าวไทย\n-ทิศตะวันออก ติดต่อกับอำเภอปะนาเระ\n-ทิศใต้ ติดต่อกับอำเภอมายอ\n-ทิศตะวันตก ติดต่อกับอำเภอยะรัง อำเภอเมืองปัตตานี และอ่าวไทย',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอสายบุรี',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/11.png'),
                bodyWidget: Text(
                  'อำเภอสายบุรีตั้งอยู่ริมชายฝั่งทางทิศตะวันออกของจังหวัด อำเภอสายบุรีห่างจากศาลากลางจังหวัดปัตตานีประมาณ 50 กิโลเมตร มีอาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n\n-ทิศเหนือ ติดต่อกับอำเภอปะนาเระ\n-ทิศตะวันออก ติดต่อกับอ่าวไทย\n-ทิศใต้ ติดต่อกับอำเภอไม้แก่น อำเภอบาเจาะ (จังหวัดนราธิวาส) และอำเภอกะพ้อ\n-ทิศตะวันตก ติดต่อกับอำเภอกะพ้อ อำเภอทุ่งยางแดง และอำเภอมายอ',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
            PageViewModel(
                titleWidget: Text(
                  'อำเภอหนองจิก',
                  style: GoogleFonts.kanit(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                image: Image.asset('assets/images/12.png'),
                bodyWidget: Text(
                  'อำเภอหนองจิกตั้งอยู่ริมชายฝั่งทางทิศตะวันตกเฉียงเหนือของจังหวัด มีอาณาเขตติดต่อกับเขตการปกครองข้างเคียงดังต่อไปนี้\n\n-ทิศเหนือ ติดต่อกับอ่าวไทย\n-ทิศตะวันออก ติดต่อกับอำเภอเมืองปัตตานีและอำเภอยะรัง\n-ทิศใต้ ติดต่อกับอำเภอยะรัง อำเภอแม่ลาน และอำเภอโคกโพธิ์\n-ทิศตะวันตก ติดต่อกับอำเภอเทพา (จังหวัดสงขลา)',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.kanit(),
                )),
          ],
          showSkipButton: true,
          skip: Text(
            'ข้าม',
            style: GoogleFonts.kanit(color: Colors.black,),
            
          ),
          skipOrBackFlex: 0,
          dotsContainerDecorator: BoxDecoration(),
          onSkip: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeUI())),
          dotsDecorator: DotsDecorator(
              size: Size(
                MediaQuery.of(context).size.width * 0.01,
                MediaQuery.of(context).size.width * 0.01,
              ),
              color: Colors.grey,
              activeSize: Size(
                MediaQuery.of(context).size.width * 0.02,
                MediaQuery.of(context).size.width * 0.01,
              ),
              activeColor: Colors.black,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ))),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          nextFlex: 0,
          done: Text(
            'เริ่มต้น',
            style: GoogleFonts.kanit(color: Colors.black),
          ),
          onDone: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeUI())),
        ),
      ),
    );
  }
}
