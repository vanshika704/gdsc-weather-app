import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,//.
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.read_more,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mullana",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 60.0),
              WeatherInfo(),
              SizedBox(height: 90.0),
              box(),
            ],
          ),
        )),
      ),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WeatherDetails(
          time: "Now",
          temperature: "25",
        ),
        WeatherDetails(
          time: "8:00 PM",
          temperature: "24",
        ),
        WeatherDetails(
          time: "9:00 PM",
          temperature: "27",
        ),
        WeatherDetails(
          time: "10:00 PM",
          temperature: "29",
        ),
      ],
    );
  }
}

class WeatherDetails extends StatelessWidget {
  final String time;
  final String temperature;

  WeatherDetails({required this.time, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 97, 230, 223),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            time,
            style: TextStyle(
              color: Color.fromARGB(255, 243, 246, 247),
              fontSize: 20.0,
            ),
          ),
          Text(
            temperature + "°",
            style: TextStyle(
              color: Color.fromARGB(255, 245, 250, 250),
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}

class box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        week(
            day: "today",
            weather: "sunny",
            temperature: "25",
            image: ("assets/sunny.jpg"), imagewidth: 0.1,imageheight: 0.1,),
        week(
            day: "thur",
            weather: "thunder",
            temperature: "24",
            image: ("assets/thunder.jpg"),imagewidth:0.1,imageheight:0.1,),
        week(
            day: "fri",
            weather: "thunder",
            temperature: "27",
            image: ("assets/thunder.jpg"),imagewidth:0.1,imageheight:0.1,),
        week(
            day: "sat",
            weather: "sunny",
            temperature: "29",
            image: ("assets/sunny.jpg"),imagewidth:0.1,imageheight:0.1,),
      ],
    );
  }
}

class week extends StatelessWidget {
  final String day;
  final String temperature;
  final String weather;
  final String image;

  const week(
      {required this.day,
      required this.weather,
      required this.temperature,
      required this.image, required double imagewidth, required double imageheight});

  @override
  Widget build(BuildContext context) {
    var height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 87, 234, 253),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            day,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          Text(
            weather,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          Text(
            temperature + "°",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),SizedBox(height:1),
          Image.asset(
            image,
            
            
          ),
        ],
      ),
    );
  }
}
