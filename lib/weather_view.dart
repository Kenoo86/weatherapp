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
            return provider.data.isEmpty ? const Center(
              child: CircularProgressIndicator(color: Colors.white,),)
            :
            Center(
            child: Column(
            children: [
            const SizedBox(
            height: 10,
            ),
            const Text(
            'Today, May 7th, 2021',
            style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            ),
            ),
            const SizedBox(
            height: 5,
            ),
            const Text(
            'Barcelona',
            style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
            ),
            const SizedBox(
            height: 3,
            ),
            const Text(
            'Spain',
            style: TextStyle(
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
            width: 100,
            height: 100,
            ),
            const Text(
            '10°C',
            style: TextStyle(
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
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Column(
            children: [
            Text(
            'Wind status',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '7 mph',
            style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),
            ),
            ],
            ),
            Column(
            children: [
            Text(
            'Visibility',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '6.4 miles',
            style: TextStyle(
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
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Column(
            children: [
            Text(
            'Humidity',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '85%',
            style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),
            ),
            ],
            ),
            Column(
            children: [
            Text(
            'Air pressure',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
            ),
            Text(
            '998 mb',
            style: TextStyle(
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
