import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 35,
            ),
            title: const Text(
              "MAGAZINES",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FluentSystemIcons.ic_fluent_person_regular,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                    FluentSystemIcons.ic_fluent_settings_dev_regular),
                color: Colors.black,
              ),
            ],
            bottom: const PreferredSize(
                child: Text("Searc bar"), preferredSize: Size.fromHeight(50)),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  boxes(),
                  boxes(),
                  boxes(),
                  boxes(),
                  boxes(),
                  boxes(),
                  boxes(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container boxes() {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 80,
      width: 80,
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}
