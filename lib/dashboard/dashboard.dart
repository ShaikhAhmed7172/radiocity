import 'package:flutter/material.dart';
import 'package:radiocity/dashboard/customAppBar.dart';
import 'package:radiocity/dashboard/future_poadcast.dart';
import 'package:radiocity/dashboard/slider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0),
        child: CustomAppBar(),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [CustomSlider(), FeaturedPodcasts()],
      ),
    );
  }
}
