import 'package:adstack_project/widgets/all_project.dart';
import 'package:adstack_project/widgets/app_bar.dart';
import 'package:adstack_project/widgets/calender.dart';
import 'package:adstack_project/widgets/drawer.dart';
import 'package:adstack_project/widgets/overall_performance.dart';
import 'package:adstack_project/widgets/top_creators.dart';
import 'package:adstack_project/widgets/top_rating_project.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: height * .98,
            width: width * .7,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.black)
            ),

            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * .004),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)
                      )
                  ),
                  height: double.infinity,
                  width: width * .16,
                  child: const MyDrawer(),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: width * .004,),
                      width: width * .49,
                      height: height * .1,
                      child: const MyAppBar(),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              // margin: EdgeInsets.only(bottom: width * .01),
                              width: width * .37,
                              height: height * .26,
                              child: const TopRatingProject(),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width * .20,
                                  height: height * .29,
                                  child: const AllProject(),
                                ),
                                SizedBox(
                                  width: width * .17,
                                  height: height * .29,
                                  child: const TopCreators(),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: width * .004),
                              width: width * .37,
                              height: height * .3,
                              child: const OverallPerformance(),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width * .004),
                            decoration: BoxDecoration(
                                color: Colors.purple.shade900,
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(15)
                                )
                            ),
                            width: width * .16,
                            height: height * .863,
                          child: const Calender(),
                        )
                      ],
                    ),
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

