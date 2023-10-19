import 'package:flutter/material.dart';


class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
    );
  }
}


class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.transparent, actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.read_more,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ]),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mullana",
                  style: TextStyle(
                      color: Colors.white, fontSize: devicePixelRatio * 12),
                ),
                SizedBox(
                  height: height / 9,
                ),
                Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                      text: "25°",
                      style: TextStyle(fontSize: devicePixelRatio * 30)),
                  TextSpan(
                      text: "Sunny",
                      style: TextStyle(fontSize: devicePixelRatio * 8))
                ])),
                SizedBox(
                  height: height / 200,
                ),
                Text(
                  "Wed 31°/18° Air Quality:83 - Satisfactory",
                  style: TextStyle(
                      color: Colors.white, fontSize: devicePixelRatio * 5.5),
                ),
                SizedBox(
                  height: height / 20,
                ),
                Container(
                  height: height / 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(179, 189, 188, 197),
                  ),
                  child: Row(
                    children: const [
                      CustomContainerTemperature("Now", "25"),
                      CustomContainerTemperature("8:00 PM", "24"),
                      CustomContainerTemperature("9:00 PM", "27"),
                      CustomContainerTemperature("10:00 PM", "29"),
                    ],
                  ),
                )
              ],
            ),
          ))),
    );
  }
}

class CustomContainerTemperature extends StatelessWidget {
  const CustomContainerTemperature(this.time, this.temperature);
  final String time;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 6),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: height / 6,
          ),
          Text(
            time,
            style:
                TextStyle(color: Colors.white, fontSize: devicePixelRatio * 6),
          ),
          SizedBox(
            height: height / 6,
          ),
          SizedBox(
            height: height / 6,
          ),
          Text(
            temperature + "°",
            style:
                TextStyle(color: Colors.white, fontSize: devicePixelRatio * 6),
          ),
          Container(
            height: height/6,
            width: width/6 ,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),



            child: Row(
              children: [
                box("today", "sunny", "30"),
                box("tomorrow", "sunny", "31"),
                box("fri", "partially cloudy", "27"),
                box("sat", "rain", "29"),
              ],
            ),
          )
        ]));
  }
}

class box extends StatelessWidget {
  const box(this.day, this.whether, this.temperature);
  final String day;
  final String temperature;
  final String whether;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height / 5,
          ),
          Text(
            day,
            style: TextStyle(
                color: const Color.fromARGB(255, 83, 79, 79),
                fontSize: devicePixelRatio * 6),
          ),
          SizedBox(
            height: height / 5,
          ),
          SizedBox(
            height: height / 5,
          ),
          Text(
            temperature + "°",
            style: TextStyle(
                color: const Color.fromARGB(255, 235, 81, 81),
                fontSize: devicePixelRatio * 8),
          ),
          Text(
            whether,
            style: TextStyle(
                color: const Color.fromARGB(255, 219, 102, 102),
                fontSize: devicePixelRatio * 8),
          ),
          
        ],
      ),
    );
  }
}
