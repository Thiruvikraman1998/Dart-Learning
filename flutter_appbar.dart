import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://salonestilo.ca/wp-content/uploads/2015/05/george-town-salon-instagram-title.png",
                  fit: BoxFit.fill,
                  height: 40,
                  width: 120,
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.favorite_outline),
                      Stack(
                        children: [
                          const Icon(
                            Icons.brightness_1,
                            size: 10,
                            color: Colors.red,
                          ),
                          Positioned(
                            top: 2,
                            right: 1,
                            child: Container(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(Icons.messenger_outline),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_filter_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "")
          ],
        ),
      ),
    );
  }
}
