import 'package:flutter/material.dart';

class artTile extends StatelessWidget {

  final String artImag;
  final String artName;
  final String artSub;
  final String artPrice;

   artTile(
      {required this.artImag,
      required this.artName,
      required this.artPrice,
      required this.artSub});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
         padding: EdgeInsets.all(10),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(artImag), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              artName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 4,),
           Text(
              artSub,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "\$" + artPrice,
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.add)),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
