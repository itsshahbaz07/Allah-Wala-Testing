import 'package:flutter/material.dart';

class MyWithoutEditBoxx extends StatelessWidget {
  final String text;
  final String sectionName;
  final void Function()? onPressed;

  const MyWithoutEditBoxx({
    super.key,
    required this.text,
    required this.sectionName,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.only(left: 15, bottom: 15),
      margin: EdgeInsets.only(left: 20, right: 20, top: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionName,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.edit,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}