import 'package:flutter/material.dart';
import 'package:gari/screens/sample.dart';

class Sample1 extends StatefulWidget {
  const Sample1({Key? key}) : super(key: key);

  @override
  _Sample1State createState() => _Sample1State();
}

class _Sample1State extends State<Sample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_left, color: Colors.blue[800])),
        title: Center(
            child: Text(
          "T-Shirt",
          style: TextStyle(color: Colors.blue[800]),
        )),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              width: MediaQuery.of(context).size.width,
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
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/images1.jpg",
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.share)],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "lorem Product",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text("Dallas "),
                    trailing: Text("2 week ago"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      "Description Product",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(
                        "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum "),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
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
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/images1.jpg"),
                    ),
                    title: Text(
                      "lkaris ",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Row(children: [
                      Text("Dallas "),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                      )
                    ]),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {},
                            icon: Icon(Icons.chat),
                            label: Text("Chat")),
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {},
                            icon: Icon(Icons.call),
                            label: Text("Call")),
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {},
                            icon: Icon(Icons.mail),
                            label: Text("Email"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
