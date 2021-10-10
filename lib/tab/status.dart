import 'package:flutter/material.dart';
import 'package:future_job/Style.dart';

String foto = "assets/f1.png";
String nama = "nama";
String isiChat = "tes";
String waktu = "now";

Widget statusFriend(String foto, String nama, String isiChat, String waktu) =>
    Container(
      padding: EdgeInsets.only(left: 14, right: 23, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                foto,
                width: 57,
                height: 57,
              ),
              SizedBox(
                width: 15,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: friend,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      isiChat,
                      style: chat,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
