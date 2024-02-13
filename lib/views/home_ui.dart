// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_element, avoid_unnecessary_containers, unnecessary_brace_in_string_interps, annotate_overrides

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_image_slider/carousel.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 13, vsync: this, initialIndex: _currentTabIndex);
  }

  void dispose() {
   _tabController.dispose();
   super.dispose();
 }


  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.pink,
          title: Text(
            'Thailand province app',
            style: GoogleFonts.kanit(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0);
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.yellow,
            indicatorWeight: 5,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.flag),
                text: 'ปัตตานี',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.city),
                text: 'อำเภอกะพ้อ',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.building),
                text: 'อำเภอโคกโพธิ์',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.house),
                text: 'อำเภอทุ่งยางแดง',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.houseMedical),
                text: 'อำเภอปะนาเระ',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.hospital),
                text: 'อำเภอแม่ลาน',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.hotel),
                text: 'อำเภอมายอ',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.school),
                text: 'อำเภอเมืองปัตตานี',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.road),
                text: 'อำเภอไม้แก่น',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.store),
                text: 'อำเภอยะรัง',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.train),
                text: 'อำเภอยะหริ่ง',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.car),
                text: 'อำเภอสายบุรี',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.church),
                text: 'อำเภอหนองจิก',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Thailand province app',
                  style: GoogleFonts.kanit(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  'เขตในจังหวัดปัตตานี',
                  style: GoogleFonts.kanit(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.flag),
                title: Text(
                  'ปัตตานี',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 1;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.city),
                title: Text(
                  'อำเภอกะพ้อ',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 2;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.building),
                title: Text(
                  'อำเภอโคกโพธิ์',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 3;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.house),
                title: Text(
                  'อำเภอทุ่งยางแดง',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 4;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.houseMedical),
                title: Text(
                  'อำเภอปะนาเระ',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 5;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.hospital),
                title: Text(
                  'อำเภอแม่ลาน',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 6;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.hotel),
                title: Text(
                  'อำเภอมายอ',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 7;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.school),
                title: Text(
                  'อำเภอเมืองปัตตานี',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 8;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.road),
                title: Text(
                  'อำเภอไม้แก่น',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 9;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.store),
                title: Text(
                  'อำเภอยะรัง',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 10;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.train),
                title: Text(
                  'อำเภอยะหริ่ง',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 11;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.car),
                title: Text(
                  'อำเภอสายบุรี',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 12;
                  });
                  Navigator.pop(context);
                },
                leading: Icon(FontAwesomeIcons.church),
                title: Text(
                  'อำเภอหนองจิก',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  'ออก',
                  style: GoogleFonts.kanit(),
                ),
              )
            ],
          ),
        ),
   
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'ปัตตานี',
                      style: GoogleFonts.kanit(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Carousel(
                        indicatorBarColor: Colors.transparent,
                        autoScrollDuration: Duration(seconds: 2),
                        animationPageDuration: Duration(milliseconds: 500),
                        activateIndicatorColor: Colors.black,
                        animationPageCurve: Curves.bounceInOut,
                        indicatorHeight: 10,
                        indicatorWidth: 10,
                        unActivatedIndicatorColor: Colors.grey,
                        stopAtEnd: false,
                        autoScroll: true,
                        height: MediaQuery.of(context).size.height * 0.28,
                        items: [
                          Image.asset(
                            'assets/images/10_1.png',
                          ),
                          Image.asset(
                            'assets/images/11_1.png',
                          ),
                          Image.asset(
                            'assets/images/12_1.png',
                          ),
                        ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Text(
                      '         ปัตตานี เป็นจังหวัดทางใต้ของประเทศไทย มีลักษณะภูมิประเทศเป็นที่ราบชายฝั่ง มีวัฒนธรรมและศาสนาหลากหลาย มีแหล่งท่องเที่ยวทางธรรมชาติและวัฒนธรรมที่น่าสนใจ มีการเลี้ยงสัตว์และเกษตรกรรมเป็นกิจกรรมหลัก และเป็นจุดเชื่อมต่อการค้ากับประเทศมาเลเซีย มีสถานีรถไฟและท่าเรือสำคัญ อีกทั้งยังมีอุตสาหกรรมเล็กๆ อยู่ในพื้นที่ด้วย',
                      style: GoogleFonts.kanit(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: ListTile(
                        onTap: () {
                          _makePhoneCall('073-218-000');
                        },
                        tileColor: Colors.pink,
                        leading: Icon(
                          FontAwesomeIcons.phone,
                        ),
                        title: Text('073-218-000'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: ListTile(
                        onTap: () {
                          _launchInBrowser(
                              Uri.parse('http://www.pattani.go.th/'));
                        },
                        tileColor: Colors.pink,
                        leading: Icon(
                          FontAwesomeIcons.chrome,
                        ),
                        title: Text('http://www.pattani.go.th/'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: ListTile(
                        onTap: () {
                          _launchInBrowser(Uri.parse(
                              'https://www.google.com/maps/@${'6.868597515172105,101.24960896491264'},17z'));
                        },
                        tileColor: Colors.pink,
                        leading: Icon(
                          FontAwesomeIcons.mapLocationDot,
                        ),
                        title: Text('นำทาง'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            showProvinceWidget(
                context,
                'อำเภอกะพ้อ',
                'assets/images/1_1.png',
                'assets/images/1_2.png',
                'assets/images/1_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://district.cdd.go.th/kapho/'),
            showProvinceWidget(
                context,
                'อำเภอโคกโพธิ์',
                'assets/images/2_1.png',
                'assets/images/2_2.png',
                'assets/images/2_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://khokpho.go.th/public'),
            showProvinceWidget(
                context,
                'อำเภอทุ่งยางแดง',
                'assets/images/3_1.png',
                'assets/images/3_2.png',
                'assets/images/3_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'www.thungyangdaeng.go.th'),
            showProvinceWidget(
                context,
                'อำเภอปะนาเระ',
                'assets/images/4_1.png',
                'assets/images/4_2.png',
                'assets/images/4_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://district.cdd.go.th/kapho/'),
            showProvinceWidget(
                context,
                'อำเภอแม่ลาน',
                'assets/images/5_1.png',
                'assets/images/5_2.png',
                'assets/images/5_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://www.panare.go.th/index.php'),
            showProvinceWidget(
                context,
                'อำเภอมายอ',
                'assets/images/6_1.png',
                'assets/images/6_2.png',
                'assets/images/6_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://mayodistrict.weebly.com/'),
            showProvinceWidget(
                context,
                'อำเภอเมืองปัตตานี',
                'assets/images/7_1.png',
                'assets/images/7_2.png',
                'assets/images/7_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://www.pattanicity.go.th/'),
            showProvinceWidget(
                context,
                'อำเภอไม้แก่น',
                'assets/images/8_1.png',
                'assets/images/8_2.png',
                'assets/images/8_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://district.cdd.go.th/maikaen/'),
            showProvinceWidget(
                context,
                'อำเภอยะรัง',
                'assets/images/9_1.png',
                'assets/images/9_2.png',
                'assets/images/9_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://www.yarang.go.th/'),
            showProvinceWidget(
                context,
                'อำเภอยะหริ่ง',
                'assets/images/10_1.png',
                'assets/images/10_2.png',
                'assets/images/10_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'http://tbyaring.go.th/'),
            showProvinceWidget(
                context,
                'อำเภอสายบุรี',
                'assets/images/11_1.png',
                'assets/images/11_2.png',
                'assets/images/11_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'http://www.lahansaiburi.go.th/'),
            showProvinceWidget(
                context,
                'อำเภอหนองจิก',
                'assets/images/12_1.png',
                'assets/images/12_2.png',
                'assets/images/12_3.png',
                '073 494 004',
                '073 494 037',
                '6.5596101654789,101.53452869559662',
                'https://district.cdd.go.th/nongchik/'),
          ],
        ),
      ),
    );
  }

  Widget showProvinceWidget(
      BuildContext context,
      String pvName,
      String pvImage1,
      String pvImage2,
      String pvImage3,
      String pvpPhone,
      String pvhPhone,
      String pvWeb,
      String pvMap) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              pvName,
              style:
                  GoogleFonts.kanit(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              child: Carousel(
                  indicatorBarColor: Colors.transparent,
                  autoScrollDuration: Duration(seconds: 2),
                  animationPageDuration: Duration(milliseconds: 500),
                  activateIndicatorColor: Colors.black,
                  animationPageCurve: Curves.bounceInOut,
                  indicatorHeight: 10,
                  indicatorWidth: 10,
                  unActivatedIndicatorColor: Colors.grey,
                  stopAtEnd: false,
                  autoScroll: true,
                  height: MediaQuery.of(context).size.height * 0.4,
                  items: [
                    Image.asset(
                      pvImage1,
                    ),
                    Image.asset(
                      pvImage2,
                    ),
                    Image.asset(
                      pvImage3,
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ListTile(
                onTap: () {
                  _makePhoneCall(pvpPhone);
                },
                tileColor: Colors.pink,
                leading: Icon(
                  FontAwesomeIcons.phone,
                ),
                title: Text('โทรไปสถานีตำรวจ'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ListTile(
                onTap: () {
                  _makePhoneCall(pvhPhone);
                },
                tileColor: Colors.pink,
                leading: Icon(
                  FontAwesomeIcons.phone,
                ),
                title: Text('โทรไปโรงพยาบาล'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(
                      Uri.parse('https://www.google.com/maps/@${pvMap},17z'));
                },
                tileColor: Colors.pink,
                leading: Icon(
                  FontAwesomeIcons.mapLocationDot,
                ),
                title: Text('นำทางไปที่ว่าการอำเภอ'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(Uri.parse(pvWeb));
                },
                tileColor: Colors.pink,
                leading: Icon(
                  FontAwesomeIcons.chrome,
                ),
                title: Text('เว็บไซต์'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
