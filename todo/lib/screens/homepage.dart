import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/widgets/item_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF240A34),
        centerTitle: true,
        title: const Text(
          'APRIL 27 2024',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFF1F5F9),
              width: double.infinity,
              height: 400,
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xFF240A34),
                    height: 200,
                    width: double.infinity,
                    child: const Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'TODO LIST',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        )),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      margin: const EdgeInsets.only(top: 100),
                      width: 350,
                      height: 300,
                      child: const SingleChildScrollView(
                        child: Column(
                          children: [
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                            ItemContainer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'completed',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: 350,
              height: 200,
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                    ItemContainer(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF240A34))),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "ADD NEW ITEM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
