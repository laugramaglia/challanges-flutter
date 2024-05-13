import 'package:challange/features/data/models/test.dart';
import 'package:flutter/material.dart';

class CardTest extends StatefulWidget {
  final Test data;
  const CardTest({super.key, required this.data});
  @override
  State<CardTest> createState() => _CardTestState();
}

class _CardTestState extends State<CardTest> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 3,
        child: SizedBox(
            height: 360,
            width: 440,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: NetworkImage(widget.data.imageUrl),
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(height: 5),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.data.name,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Text(
                            widget.data.slug,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ]),
                    Text("", style: TextStyle(fontSize: 20)),
                    Text(
                      widget.data.description,
                      maxLines: 6,
                    ),
                  ],
                ))));
  }
}
