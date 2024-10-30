import 'package:A/components/tab_widget_1.dart';
import 'package:A/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
          centerTitle: true, // Center the AppBar title
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.contact_mail)), // Contact icon for Tab 1
              Tab(icon: Icon(Icons.settings)),     // Settings icon for Tab 2
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: TabWidget1()), // Centered content for Tab 1
            Center(child: TabWidget2()), // Centered content for Tab 2
          ],
        ),
      ),
    );
  }
}
