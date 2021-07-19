import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mryr/constants/AppConfig.dart';
import 'package:mryr/constants/GlobalAsset.dart';
import 'package:mryr/widget/MoreScreen/StringForMoreScreen.dart';

class UsingRule extends StatefulWidget {
  @override
  _UsingRuleState createState() => _UsingRuleState();
}

class _UsingRuleState extends State<UsingRule> {
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: screenHeight*(60/640),
                child: Row(
                  children: [
                    SizedBox(width: screenWidth*(8/360),),
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        }),

                    SizedBox(width: screenWidth*(8/360),),
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight*(1.5/640)),child: Text('서비스 이용약관',
                        style: TextStyle(
                          color: hexToColor("#222222"),
                          fontSize:screenWidth*( 16/360),
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: screenHeight*(20/640),),
              Row(children: [
                SizedBox(width: screenWidth*(20/360),),
                SvgPicture.asset(
                  CompanyInfoInMoreScreen,
                  height: screenHeight*(27/640),
                ),
              ],),
              SizedBox(height: screenHeight*(22/640),),
              Image.asset(
                ServiceInfo2InMoreScreen,
                width: screenWidth * (336 / 360),
                //  color: Colors.black,
              ),
              SizedBox(height: screenHeight*(60/640),)
            ],
          ),
        ),
      ),
    );
  }
}
