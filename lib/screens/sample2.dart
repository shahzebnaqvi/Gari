import 'package:flutter/material.dart';
import 'package:gari/screens/sample.dart';
import 'package:gari/screens/sample1.dart';

class Sample2 extends StatefulWidget {
  const Sample2({Key? key}) : super(key: key);

  @override
  _Sample2State createState() => _Sample2State();
}

class _Sample2State extends State<Sample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.blue[800]),
        title: Center(
            child: Text(
          "Home",
          style: TextStyle(color: Colors.blue[800]),
        )),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintText: 'Search your location',
                      prefixIcon: Icon(Icons.pin_drop)),
                )),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Browse Categories",
                  ),
                  Text("View All")
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sample()));
                },
                child: Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text(
                        "Properties",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sample()));
                },
                child: Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text(
                        "Properties",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ), // Expanded(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sample()));
                },
                child: Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text(
                        "Properties",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sample()));
                },
                child: Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text(
                        "Properties",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ), // Expanded(
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recently Viewed",
                  ),
                ],
              )),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                veriticalpr(context),
                veriticalpr(context),
                veriticalpr(context),
                veriticalpr(context),
                veriticalpr(context),
              ]))
        ]),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}

Widget veriticalpr(context) {
  return Container(
    margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.03,
        left: MediaQuery.of(context).size.width * 0.03),
    width: MediaQuery.of(context).size.width * 0.45,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/images1.jpg"),
                fit: BoxFit.fitWidth),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Features",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
                Icon(Icons.favorite)
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sample1(),
                ));
          },
          child: ListTile(
            title: Text("lorem ipsum"),
            subtitle: Text("Details "),
            trailing: Text("\$ 150"),
          ),
        ),
      ],
    ),
  );
}
