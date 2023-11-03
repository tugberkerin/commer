import 'package:commer/models/phone.dart';
import 'package:flutter/material.dart';

class PhoneTile extends StatelessWidget {
  final Phone phone;
  PhoneTile({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25),
        width: 200,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //phone pic
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(phone.imagePath)),

            //desc
            Text(
              phone.description,
              style: TextStyle(color: Colors.black26),
            ),
            //price + details
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //phone name
                      Text(
                        phone.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(height: 10),
                      //price
                      Text(
                        '\$' + phone.price,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                  //plus button
                  Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey[250],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.add,
                        color: Colors.black12,
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
