import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({Key? key}) : super(key: key);

  @override
  State<MainMenuWidget> createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/images/Logo.svg'),
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
}
