import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gari/screens/practice/sample1.dart';

Color primarycolor = Colors.red;
Color backgroundcolor = Colors.blue;

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
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
          "Electronic",
          style: TextStyle(color: Colors.blue[800]),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings, color: Colors.blue[800]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.blue[800]),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Row(
          children: [
            Expanded(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Wrap(children: [
                      Container(
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                                    image:
                                        AssetImage("assets/images/images1.jpg"),
                                    fit: BoxFit.fitWidth),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "Features",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
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
                      ),
                    ]);
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Wrap(children: [
                      Container(
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                                    image:
                                        AssetImage("assets/images/images1.jpg"),
                                    fit: BoxFit.fitWidth),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "Features",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
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
                      ),
                    ]);
                  }),
            ),
          ],
        ),
      ])),
      bottomNavigationBar: Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 2;
  bool isSelected1 = false;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: backgroundcolor,
      height: 55,
      index: index,
      items: [
        Icon(
          Icons.home,
          size: 30,
          color: primarycolor,
        ),
        Icon(
          Icons.messenger_rounded,
          size: 30,
          color: primarycolor,
        ),
        Icon(
          Icons.add,
          size: 30,
          color: primarycolor,
        ),
        Icon(
          Icons.favorite,
          color: primarycolor,
          size: 30,
        ),
        Icon(
          Icons.person,
          size: 30,
          color: primarycolor,
        ),
      ],
    );
  }
}

Widget productcategory(context, categ, categdetail) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      child: Row(children: [
        Image.asset(
          "assets/images/images1.jpg",
          width: MediaQuery.of(context).size.width * 0.2,
        ),
        Column(
          children: [
            Text(
              categ,
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            Text(
              categdetail,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.purple),
            )
          ],
        )
      ]),
    ),
  );
}
