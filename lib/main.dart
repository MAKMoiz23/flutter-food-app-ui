import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
              Container(
                width: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_list),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: (Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'All',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.white),
                          primary: Colors.red.shade300,
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45))),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Popular',
                          style: TextStyle(color: Colors.red.shade300),
                        ),
                        style: ElevatedButton.styleFrom(
                          side:
                              BorderSide(width: 1, color: Colors.red.shade300),
                          primary: Colors.red.shade50,
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45))),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Indonesian',
                          style: TextStyle(color: Colors.red.shade300),
                        ),
                        style: ElevatedButton.styleFrom(
                          side:
                              BorderSide(width: 1, color: Colors.red.shade300),
                          primary: Colors.red.shade50,
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45))),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Chinese',
                          style: TextStyle(color: Colors.red.shade300),
                        ),
                        style: ElevatedButton.styleFrom(
                          side:
                              BorderSide(width: 1, color: Colors.red.shade300),
                          primary: Colors.red.shade50,
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45))),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Indian',
                          style: TextStyle(color: Colors.red.shade300),
                        ),
                        style: ElevatedButton.styleFrom(
                          side:
                              BorderSide(width: 1, color: Colors.red.shade300),
                          primary: Colors.red.shade50,
                        ),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45))),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Arabic',
                          style: TextStyle(color: Colors.red.shade300),
                        ),
                        style: ElevatedButton.styleFrom(
                          side:
                              BorderSide(width: 1, color: Colors.red.shade300),
                          primary: Colors.red.shade50,
                        ),
                      )),
                ],
              ),
            ))),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.grey.shade100,
          ),
          height: MediaQuery.of(context).size.height - 200,
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Container(
                  height: MediaQuery.of(context).size.height - 250,
                  child: ListView(
                    children: [
                      buildFoodItems(context,
                          'assets/images/pic_1.jpg', 'Prawns', '\$200'),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildFoodItems(context,
                          'assets/images/pic_2.jpg', 'Salamon', '\$1200'),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildFoodItems(context,
                          'assets/images/pic_3.jpg', 'Noodles', '\$100'),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildFoodItems(context,
                          'assets/images/pic_4.jpg', 'Pizza', '\$150'),
                      SizedBox(
                        height: 10.0,
                      ),
                      buildFoodItems(context,
                          'assets/images/steak_4.jpg', 'Steak', '\$800'),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

Widget buildFoodItems(context ,String imagePath, String foodName, String price) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Details(imagePath, foodName, price)));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Hero(
                        tag: imagePath,
                        child: Image(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0,
                        )),
                    SizedBox(width: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodName,
                          style: GoogleFonts.lato(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          price,
                          style: GoogleFonts.lato(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                color: Colors.red.shade200,
              )
            ],
          ),
        ),
      ));
}
