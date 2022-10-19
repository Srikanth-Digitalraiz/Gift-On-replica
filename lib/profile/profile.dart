import 'package:flutter/material.dart';

class ProFilePage extends StatefulWidget {
  ProFilePage({Key? key}) : super(key: key);

  @override
  State<ProFilePage> createState() => _ProFilePageState();
}

class _ProFilePageState extends State<ProFilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return ProfileViewSmall();
          } else {
            return ProfileViewLarge();
          }
        },
      ),
    );
  }
}

class ProfileViewSmall extends StatefulWidget {
  ProfileViewSmall({Key? key}) : super(key: key);

  @override
  State<ProfileViewSmall> createState() => _ProfileViewSmallState();
}

class _ProfileViewSmallState extends State<ProfileViewSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text("Welcom User to Profile Small Screen"),
      ),
    );
  }
}

class ProfileViewLarge extends StatefulWidget {
  ProfileViewLarge({Key? key}) : super(key: key);

  @override
  State<ProfileViewLarge> createState() => _ProfileViewLargeState();
}

class _ProfileViewLargeState extends State<ProfileViewLarge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7eeed),
      body: Center(
        child: InkWell(
          onTap:()=>Navigator.pushNamed(context, '/home'),
          child: Text("Welcome User to Profile Large Screen")),
      ),
    );
  }
}