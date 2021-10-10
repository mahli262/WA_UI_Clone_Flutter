import "package:flutter/material.dart";
import 'package:future_job/Style.dart';
import 'package:future_job/tab/chats.dart';
import 'package:future_job/tab/status.dart';

main(List<String> args) {
  runApp(Chats());
}

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("WhatsApp"),
              actions: [
                Icon(Icons.search),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.more_vert),
                ),
              ],
              backgroundColor: green,
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                // isScrollable: true,
                tabs: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 48,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.camera_alt,
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 48,
                      alignment: Alignment.center,
                      child: Text("CHATS")),
                  Container(
                      width: double.infinity,
                      height: 48,
                      alignment: Alignment.center,
                      child: Text("STATUS")),
                  Container(
                      width: double.infinity,
                      height: 48,
                      alignment: Alignment.center,
                      child: Text("CALLS"))
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("No Camera Found"),
                ),
                Scaffold(
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color(0xff20C65A),
                    child: Image.asset(
                      "assets/icon.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  body: Container(
                    constraints: BoxConstraints(maxWidth: double.infinity),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          chatFriend(
                              "assets/f1.png", "Adam Yorsi", "tes", "17:33"),
                          chatFriend(
                              "assets/f2.png", "Valorant AAA", "cuy", "12:34"),
                          chatFriend(
                              "assets/f3.png", "Budi Man", "oi", "12:04"),
                          chatFriend("assets/f4.png", "Cupi Culaman",
                              "tessssssss", "08:00"),
                          chatFriend(
                              "assets/f5.png", "Dani Shidqi", "oi", "07:12"),
                          chatFriend(
                              "assets/f6.png", "Eki Nugroho", "kuy", "06:47"),
                          chatFriend(
                              "assets/f7.png", "Fatur Fatiman", "woi", "05:12"),
                          chatFriend("assets/f8.png", "Gacha Asala", "mabar?",
                              "03:44"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                          chatFriend("assets/f9.png", "Dapa Gaming", "mabar?",
                              "02:45"),
                        ],
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color(0xff20C65A),
                    child: Icon(Icons.camera_alt),
                  ),
                  body: Container(
                    constraints: BoxConstraints(maxWidth: double.infinity),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          statusFriend("assets/status.png", "My Status",
                              "Tap to add status update", ""),
                          Container(
                              color: Color(0xffEEEEEE),
                              width: double.infinity,
                              height: 29,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 14, top: 6, bottom: 7),
                                child: Text(
                                  "Recent updates",
                                  style: TextStyle(fontSize: 14),
                                ),
                              )),
                          statusFriend(
                              "assets/f1.png", "Adam Yorsi", "17:33", ""),
                          statusFriend("assets/f2.png", "Valorant AAA", "12:34",
                              "12:34"),
                          statusFriend(
                              "assets/f3.png", "Budi Man", "12:04", "12:04"),
                          statusFriend("assets/f4.png", "Cupi Culaman", "08:00",
                              "08:00"),
                          statusFriend(
                              "assets/f5.png", "Dani Shidqi", "07:12", "07:12"),
                          statusFriend(
                              "assets/f6.png", "Eki Nugroho", "06:47", "06:47"),
                          statusFriend("assets/f7.png", "Fatur Fatiman",
                              "05:12", "05:12"),
                          statusFriend(
                              "assets/f8.png", "Gacha Asala", "03:44", "03:44"),
                          statusFriend(
                              "assets/f9.png", "Dapa Gaming", "02:45", "02:45"),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(""),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
