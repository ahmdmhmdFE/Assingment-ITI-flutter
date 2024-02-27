import 'package:flutter/material.dart';

class route extends StatelessWidget {
  const route({super.key});
  static String routeName = "route";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/600px-Cat03.jpg"),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Chat",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            radius: 19,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          )
        ],
      ),
      drawer: Text(""),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                print("tap");
              },
              onDoubleTap: () {
                print("doble");
              },
              onLongPress: () {
                print("Long");
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search')
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NameSearch(),
                  NameSearch(),
                  NameSearch(),
                  NameSearch(),
                  NameSearch(),
                  NameSearch(),
                  NameSearch(),
                  NameSearch(),
                  NameSearch(),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                  SizedBox(height: 1),
                  Active(UserName: "Ahmed"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class NameSearch extends StatelessWidget {
  const NameSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: [
          CircleAvatar(),
          Text(
            "Ahmed",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}

class Active extends StatelessWidget {
  final String UserName;
  Active({required this.UserName, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/600px-Cat03.jpg"),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ahmed",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("chat"),
          ],
        )),
        Row(
          children: [
            Text("AM"),
            CircleAvatar(
              radius: 2,
              backgroundColor: Colors.blue,
            ),
            Text("10:50")
          ],
        )
      ],
    );
  }
}
