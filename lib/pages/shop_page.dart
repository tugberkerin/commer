import 'package:commer/components/phone_tile.dart';
import 'package:commer/models/phone.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(12)),
          child: Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        //message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text("Creativity is just connecting things.",
              style: TextStyle(color: Colors.grey)),
        ),
        //hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Best Prices",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Phone phone = Phone(
                    name: "Iphone 14",
                    price: "999",
                    imagePath: "lib/images/iphone-14-sari.jpg",
                    description: "Latest one");
                return PhoneTile(phone: phone);
              }),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 25.0,
            left: 25,
            right: 25,
          ),
          child: Divider(color: Colors.white),
        ),
      ],
    );
  }
}
