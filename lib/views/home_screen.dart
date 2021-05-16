import 'package:flutter/material.dart';
import 'package:tracker_ui/asset.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> activities = [];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff602B59),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Asset.background2),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14,left: 14,right: 14),
              child: Container(
                height: screenSize.height,
                width: screenSize.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "BarlowLight",
                          fontSize: 24,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Amanda",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "JungleFever",
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Text(
                        "How are you doing?",
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "BarlowRegular",
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Text(
                        "Daily activity",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "JungleFever",
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      DailyActivityCard(
                        screenSize: screenSize,
                        activiyQnt: "3680",
                        activiyName: 'steps',
                        activiygraph: Asset.graph,
                        activiyicon: Asset.step,
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      DailyActivityCard(
                        screenSize: screenSize,
                        activiyQnt: "90",
                        activiyName: 'bpm',
                        activiygraph: Asset.wave,
                        activiyicon: Asset.heart,
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      DailyActivityCard(
                        screenSize: screenSize,
                        activiyQnt: "960",
                        activiyName: 'calories',
                        activiygraph: Asset.graph,
                        activiyicon: Asset.fire,
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: "BarlowRegular",
                                  fontSize: 30,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Performances",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "BarlowLight",
                                  fontSize: 16,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.red),
                              Icon(Icons.star, color: Colors.red),
                              Icon(Icons.star, color: Colors.red),
                              Icon(Icons.star, color: Colors.red),
                              Icon(
                                Icons.star,
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DailyActivityCard extends StatelessWidget {
  const DailyActivityCard({
    Key? key,
    required this.screenSize,
    required this.activiyQnt,
    required this.activiyName,
    required this.activiygraph,
    required this.activiyicon,
  }) : super(key: key);

  final Size screenSize;
  final String activiyQnt;
  final String activiyName;
  final String activiygraph;
  final String activiyicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  activiyQnt,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "BarlowRegular",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  activiyName,
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "BarlowRegular",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(activiygraph, width: 100),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(activiyicon, width: 20),
            ),
          ],
        ),
      ),
    );
  }
}
