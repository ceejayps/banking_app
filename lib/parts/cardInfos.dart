import 'package:flutter/material.dart';

class cardInfo extends StatefulWidget {
  const cardInfo({Key? key, required this.heading}) : super(key: key);
  final String heading;

  @override
  _cardInfoState createState() => _cardInfoState();
}

class _cardInfoState extends State<cardInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.6,
        height: 55,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blueGrey[50],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              new RotationTransition(
                  turns: new AlwaysStoppedAnimation(45 / 360),
                  child: Icon(Icons.airplanemode_active_rounded)),
              SizedBox(
                width: 12,
              ),
              Text(
                "Travel Card",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade900),
              )
            ],
          ),
        ),
      ),
    );
  }
}
