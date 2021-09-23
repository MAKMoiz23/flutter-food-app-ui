import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final String imagePath, foodName, price;

  Details(this.imagePath, this.foodName, this.price);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Details',
          style: GoogleFonts.lato(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 300.0,
                    child: Hero(
                        tag: widget.imagePath,
                        child: Image(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover,
                        ))),
                SizedBox(height: 20.0,),
                Container(
                  
                  child: Text(
                    widget.price + '.00',
                    style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red.shade300), 
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
