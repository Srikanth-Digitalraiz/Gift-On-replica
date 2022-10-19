import 'package:admintest/models/bar_chart_model.dart';
import 'package:admintest/profile/profile.dart';
import 'package:admintest/widget/mainmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return HomeViewLarge();
          } else {
            return HomeViewLarge();
          }
        },
      ),
    );
  }
}

class HomeViewSmall extends StatefulWidget {
  HomeViewSmall({Key? key}) : super(key: key);

  @override
  State<HomeViewSmall> createState() => _HomeViewSmallState();
}

class _HomeViewSmallState extends State<HomeViewSmall> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);

  // final List<BarChartModel> data = [
  //   BarChartModel(
  //     year: "2014",
  //     financial: 250,
  //     color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
  //   ),
  //   BarChartModel(
  //     year: "2015",
  //     financial: 300,
  //     color: charts.ColorUtil.fromDartColor(Colors.red),
  //   ),
  //   BarChartModel(
  //     year: "2016",
  //     financial: 100,
  //     color: charts.ColorUtil.fromDartColor(Colors.green),
  //   ),
  //   BarChartModel(
  //     year: "2017",
  //     financial: 450,
  //     color: charts.ColorUtil.fromDartColor(Colors.yellow),
  //   ),
  //   BarChartModel(
  //     year: "2018",
  //     financial: 630,
  //     color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
  //   ),
  //   BarChartModel(
  //     year: "2019",
  //     financial: 1000,
  //     color: charts.ColorUtil.fromDartColor(Colors.pink),
  //   ),
  //   BarChartModel(
  //     year: "2020",
  //     financial: 400,
  //     color: charts.ColorUtil.fromDartColor(Colors.purple),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7eeed),
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
              //Navigator.push(context, MaterialPageRoute(builder: (context) => ProFilePage()));
            },
            child: SvgPicture.asset('assets/images/Logo.svg')),
      ),
    );
  }
}

class HomeViewLarge extends StatefulWidget {
  HomeViewLarge({Key? key}) : super(key: key);

  @override
  State<HomeViewLarge> createState() => _HomeViewLargeState();
}

class _HomeViewLargeState extends State<HomeViewLarge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7eeed),
      body: Column(
        children: [
          //Nav
          Container(
            height: 40,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: SvgPicture.asset('assets/images/admin.svg')),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Admin",
                    style: TextStyle(
                      fontFamily: 'monM',
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: _mainMenu()),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 28.0, left: 8.0, right: 8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // #ae985f
                            const Text(
                              'Hello, Admin',
                              style: TextStyle(
                                  color: Color(0xFFae985f),
                                  fontSize: 20,
                                  fontFamily: 'monB'),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Dashboard',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'monM'),
                                ),
                                Spacer(),
                                Container(
                                  width: MediaQuery.of(context).size.width / 9,
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        'Monthly',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'monM'),
                                      ),
                                      Icon(
                                          Icons.arrow_drop_down_circle_outlined)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            _mainDashBoard(),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Sales',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'monM'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // Container(
                            //   color: Colors.black,
                            //   height: 900,
                            //   width: MediaQuery.of(context).size.width,
                            // )
                            _salesGraph(),

                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: InkWell(
      //     onTap: (){
      //        Navigator.pushNamed(context, '/profile');
      //       //Navigator.push(context, MaterialPageRoute(builder: (context) => ProFilePage()));
      //     },
      //     child: SvgPicture.asset('assets/images/Logo.svg')),
      // ),
    );
  }

  //Main Menu

  Widget _mainMenu() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ), //BoxShadow
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/images/Logo.svg'),
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.dashboard_outlined),
                    title: Text(
                      'Dashboard',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.group_outlined),
                    title: Text(
                      'User types',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text(
                      'Vendor',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_outlined),
                    title: Text(
                      'Products',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.supervisor_account_outlined),
                    title: Text(
                      'Customer',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.group_work_outlined),
                    title: Text(
                      'Partners',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.storefront_outlined),
                    title: Text(
                      'Marketing',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.insights_outlined),
                    title: Text(
                      'Analytics',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.card_membership_outlined),
                    title: Text(
                      'Loyalty',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment_outlined),
                    title: Text(
                      'Payments',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_offer_outlined),
                    title: Text(
                      'Offers',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.receipt_long_outlined),
                    title: Text(
                      'Purchase Orders',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.ballot_outlined),
                    title: Text(
                      'Vendor Orders',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.headset_mic_outlined),
                    title: Text(
                      'Customer Support',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'monM',
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//MainDashBoard
  Widget _mainDashBoard() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.4,
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      // height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red.shade400.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/shopping_bag.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '960',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Purchases',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.blue.shade400.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/customer.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '650',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Vendors',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey.shade500.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/product.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '300',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Products Added',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.yellow.shade900.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/sales.svg',
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '1000',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Sales',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.pink.shade800.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/sent.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '650',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Toatl Orders',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.yellow.shade900.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/exchange.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '300',
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Total Number Of \nReplacements',
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red.shade900.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/cancel.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '300',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Number Of \nCancellation',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.blue.shade900.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/qrcode.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '300',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'QR Code \nRedemption',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xFF2d2756).withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/coupon.svg',
                                height: MediaQuery.of(context).size.height / 10,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '188',
                                style: TextStyle(
                                    color: Color(0xFF2d2756),
                                    fontSize: 20,
                                    fontFamily: 'monB'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Cupon Code \nRedemption',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'monM'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _salesGraph() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF655D8A),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 400,
      ),
    );
  }
}
