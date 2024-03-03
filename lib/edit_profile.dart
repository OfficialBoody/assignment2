import 'package:flutter/material.dart';

import 'package:assignment2/profile.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_left),
                  Text(
                    "Edit profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                ]),
              ),
              Text(
                "Edit image",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              reuse("gmail@gmail.com", Icons.mail),
              reuse("Abdelrhman Mansour", Icons.person_4_rounded),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Change password",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 10),
              reuse1("Enter old password"),
              SizedBox(height: 10),
              reuse1("Enter new password"),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(),
                      ));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(7)),
                    height: 40,
                    width: 400,
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  reuse(var txt, var icon) {
    return Container(
      child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    SizedBox(width: 10),
                    Text(
                      txt,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.remove_circle)
              ],
            ),
          )),
    );
  }

  reuse1(var txt) {
    return Container(
      child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      txt,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
