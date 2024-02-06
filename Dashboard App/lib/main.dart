
import 'package:dashboard_app/widgets/category_rounded_widget.dart';
import 'package:flutter/material.dart';

import 'consts/app_constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  DashBoard({super.key});
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color(0xFF7F27FF),
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF7F27FF),
              ),
              height: height * 0.34,
              width: width,
              child: Column( children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.sort,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      // ClipRRect(
                      //   child: Image.asset('assets/images/man.png', height: 50,),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0, left: 300),
                        child: Icon(Icons.person, color: Colors.white,size: 30,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Icon(Icons.notifications, color: Colors.white, size: 30,),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 50),
                  child: Row(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/man.png",
                          height: 80,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Hello\nThomas', style: TextStyle(
                          color: Colors.white,
                          fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                ),
                height: height * 0.66,
                width: width,
                child: Column(
                  children: [
                    const Text('━', style: TextStyle(fontSize: 30),),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Quick Actions", style: TextStyle(fontSize: 21, color: Colors.indigo, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 4,
                        children:
                        List.generate(AppConstants.categoriesList.length, (index) {
                          return CategoryRoundedWidget(
                            image: AppConstants.categoriesList[index].images,
                            name: AppConstants.categoriesList[index].name,
                          );
                        }),
                          ),
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      height:0,
                      thickness: 10,
                      indent: 5,
                      endIndent: 5,
                    ),
                    MeterCard(),
              ],
                ),
            ),
          ],

        ),

      ),

    );
  }
}


class MeterCard extends StatelessWidget {
  const MeterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: const Card(
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Gas | SA1234567 ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Bills', style: TextStyle(fontSize: 19),),
                    Text('\$43', style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text('20 Jan 2020', style: TextStyle(color: Colors.grey, fontSize: 15),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


