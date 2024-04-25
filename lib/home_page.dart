
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/components.dart';
import 'package:resume/pdf_api.dart';
import 'package:resume/pdf_view_screen.dart';
import 'package:resume/web_view_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {

  final String url = "";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 60,
                      bottom: 40
                    ),
                    child: CircleAvatar(
                      radius: 61,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('images/my_photo.jpg'),
                      ),
                    ),
                  ),
                ),
                Center(child: Text('Junior Flutter Developer',style: Theme.of(context).textTheme.headline4,)),
                myHeightDiv(),
                info(width: MediaQuery.sizeOf(context).width,context: context, name: 'Name:', result: 'Abdelaziz Mohamed'),
                myHeightDiv(),
                info(width: 130,context: context, name: 'Age:', result: '24'),
                myHeightDiv(),
                info(width: MediaQuery.sizeOf(context).width,context: context, name: 'Email:', result: 'ae1744@fayoum.edu.eg'),
                myHeightDiv(),
                info(width: MediaQuery.sizeOf(context).width,context: context, name: 'University:', result: 'Fayoum university'),
                myHeightDiv(),
                info(width: MediaQuery.sizeOf(context).width,context: context, name: 'Graduation year:', result: '2022'),
                myHeightDiv(),
                info(context: context, name: 'My skills:', result: 'Flutter - Dart - GIT - FireBase - SQL - Java - REST API - State_Management - Clean_Code', width: MediaQuery.sizeOf(context).width),
                myHeightDiv(),
                Row(
                  children: [
                    socialMedia(imgName: 'git_hub.png',
                        onTap: () {
                      print(WebViewScreen.uri);
                      WebViewScreen.uri = 'https://github.com/AbdelazizMohamed1?tab=repositories';
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen(),));
                    }),
                    myWidthDiv(),
                    socialMedia(imgName:'whats_app1.png',
                        onTap: () {
                          print(WebViewScreen.uri);
                          WebViewScreen.uri = 'https://api.whatsapp.com/send/?phone=%2B201060142496&text&type=phone_number&app_absent=0';
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen(),));
                        }
                    ),
                    myWidthDiv(),
                    socialMedia(imgName: 'cv.png',onTap: (){
                     PDFApi.loadAsset('assets/Abdelaziz_Mohamed_Resume.pdf').then((value) {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => PDFScreen(file: value ),));
                   });

                    })
                ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
