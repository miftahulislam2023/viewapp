import 'package:flutter/material.dart';

class CatView extends StatelessWidget {
  final String name;
  final int age;
  final String color;
  final String address;
  final String phone;
  final String photo;

  const CatView({
    super.key,
    required this.name,
    required this.age,
    required this.color,
    required this.address,
    required this.phone,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 180,
      height: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 130,
              width: 180,
                child: Image.asset(photo,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 10,),
          Text(name,
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
          ),
          Row(
            children: [
              Text("Age: $age",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 10
              ),
              ),
              SizedBox(width: 10,),
              Text("Color: $color",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 10
              ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.phone, size: 14,),
              SizedBox(width: 5,),
              Text(phone,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, size: 14,),
              SizedBox(width: 5,),
              Expanded(
                child: Text(address,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}