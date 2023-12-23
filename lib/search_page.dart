import 'package:flutter/material.dart';

class SearchCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController c1 = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xff30A2C5),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 70),
          alignment: Alignment.center,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {Navigator.pop(context);},
                      icon: const Icon(Icons.close_outlined, size: 35),
                      ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: c1,
                    decoration: InputDecoration(
                        label: const Text(
                          'Search Location',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            color: Colors.black
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xffEDEDED),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
