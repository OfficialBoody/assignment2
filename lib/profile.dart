import 'package:flutter/material.dart';

import 'package:assignment2/edit_profile.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    int current = 3;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (value) {
          setState(() {
            current = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'Analystics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Prescriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 85,
                  height: 100,
                  child: Stack(children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://cdn.discordapp.com/attachments/1100795917998772397/1213928360879726633/1755262193376034892_1.jpg?ex=65f741e2&is=65e4cce2&hm=d3dd2bd0fe616cb87750695079e50528068b1946ba285940c0621e7ddb0520e1&"),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => edit(),
                              ));
                        },
                        child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.edit,
                              color: Colors.lightBlue,
                            )),
                      ),
                    ),
                  ]),
                ),
                Text(
                  "Abdelrhman Mansour",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "gmail@gmail.com",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Become an publisher",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )),
                Row(
                  children: [
                    Text(
                      "Account settings",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                reuse("Personal information"),
                reuse("Notification"),
                reuse("Time spent"),
                reuse("Following"),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "Help & Support",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                reuse("Privacy policy"),
                reuse("Terms & Conditions"),
                reuse("FAQ & Help"),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Log out",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
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

  reuse(
    var txt,
  ) {
    return Container(
      child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          )),
    );
  }
}
