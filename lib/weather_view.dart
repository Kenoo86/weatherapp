import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/search_page.dart';
import 'package:weather_app/weather_api.dart';

class WeatherView extends StatefulWidget {
  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  void initState() {
        super.initState();
    Future.delayed(Duration.zero,()async{
    Provider.of<WeatherApi>(context,listen: false).getData();});

  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff30A2C5),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => SearchCity(),
                ),);
              },
              icon: const Icon(
                Icons.search_outlined, size: 35, color: Colors.black,),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff30A2C5),
      body:
      Consumer<WeatherApi>(
          builder: (context, provider, _) {
            return
                  provider.data.isEmpty ? const Center(
              child: CircularProgressIndicator(color: Colors.white,),) :
            Center(
            child: Column(
            children: [
            const SizedBox(
            height: 10,
            ),
             Text(
            provider.data["location"]['localtime'],
            style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
             Text(
                  provider.data["location"]["name"],
            style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
            ),
            const SizedBox(
            height: 3,
            ),
             Text(
                  provider.data["location"]["country"],
            style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
            Container(
            height: 250,
            width: 250,
            decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            ),
            child: Column(
            children: [
            Image.asset(
            'assets/images/image4.png',
                  // provider.data["current"]["condition"]["icon"],
            width: 100,
            height: 100,
            ),
             Text(
            '${provider.data["current"]["temp_c"]}C',
            style: const TextStyle(
            color: Colors.black,
            fontSize: 80,
            fontWeight: FontWeight.w300),
            )
            ],
            ),
            ),
            const SizedBox(
            height: 10,
            ),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Column(
            children: [
            const Text(
            'Wind status',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '${provider.data["current"]["wind_mph"]} mph',
            style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),
            ),
            ],
            ),
             Column(
            children: [
            const Text(
            'Visibility',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '${provider.data["current"]["vis_miles"]} miles',
            style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),
            ),
            ],
            ),
            ],
            ),
            const SizedBox(
            height: 10,
            ),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Column(
            children: [
            const Text(
            'Humidity',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '${provider.data["current"]["humidity"]}%',
            style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),
            ),
            ],
            ),
            Column(
            children: [
            const Text(
            'Air pressure',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '${provider.data["current"]["pressure_mb"]} mb',
            style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),
            ),
            ],
            ),
            ],
            ),
            const SizedBox(
            height: 10,
            ),
            Expanded(
            flex: 1,
            child: Container(
            width: double.infinity,
            // height: 193,
            decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(55),
            topRight: Radius.circular(55),
            ),
            ),
            child: Column(
            children: [
            const SizedBox(
            height: 25,
            ),
            const Text(
            'The Next 5 days',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            ),
            ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
            children: [
            const Text(
            'Sunday',
            style: TextStyle(
            fontSize: 10,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
            Container(
            width: 65,
            height: 75,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
            color: Colors.black,
            ),
            ),
            child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset(
            'assets/images/sun.png',
            width: 35,
            height: 35,
            ),
            const Text(
            '10°C',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300),
            )
            ],
            ),
            ),
            ],
            ),
            Column(
            children: [
            const Text(
            'Monday',
            style: TextStyle(
            fontSize: 10,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
            Container(
            width: 65,
            height: 75,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
            color: Colors.black,
            ),
            ),
            child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset(
            'assets/images/mon.png',
            width: 35,
            height: 35,
            ),
            const Text(
            '8°C',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300),
            )
            ],
            ),
            ),
            ],
            ),
            Column(
            children: [
            const Text(
            'Tuesday',
            style: TextStyle(
            fontSize: 10,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
            Container(
            width: 65,
            height: 75,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
            color: Colors.black,
            ),
            ),
            child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset(
            'assets/images/tue.png',
            width: 35,
            height: 35,
            ),
            const Text(
            '5°C',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300),
            )
            ],
            ),
            ),
            ],
            ),
            Column(
            children: [
            const Text(
            'Thursday',
            style: TextStyle(
            fontSize: 10,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
            Container(
            width: 65,
            height: 75,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
            color: Colors.black,
            ),
            ),
            child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset(
            'assets/images/thu.png',
            width: 35,
            height: 35,
            ),
            const Text(
            '5°C',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300),
            )
            ],
            ),
            ),
            ],
            ),
            Column(
            children: [
            const Text(
            'Friday',
            style: TextStyle(
            fontSize: 10,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
            Container(
            width: 65,
            height: 75,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
            color: Colors.black,
            ),
            ),
            child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset(
            'assets/images/fri.png',
            width: 35,
            height: 35,
            ),
            const Text(
            '9°C',
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300),
            )
            ],
            ),
            ),
            ],
            ),
            ],
            ),
            )
            ],
            ),
            ),
            ),
            ]
            ,
            )
            ,
            );
          }
      ),
    );
  }
}
