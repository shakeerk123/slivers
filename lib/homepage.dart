

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            pinned: true,
            stretch: true,
            centerTitle: false,
            expandedHeight: 260.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage("assets/MojoPizza.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            pinned: true,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(40.0),
                child: SizedBox(
                  height: 30,
                )),
            flexibleSpace: const SearchBar(),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/page.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                ),
              );
            },
            childCount: 20,
          ))
        ],
      ),
    );
  }
}
