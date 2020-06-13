import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BCard(),
        BCard(),
        BCard(),
        BCard(),
        BCard(),
      ],
    );
  }
}

class BCard extends StatefulWidget {
  @override
  _BCardState createState() => _BCardState();
}

class _BCardState extends State<BCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(3.0),
        child: Row(
          children: <Widget>[
            Card(
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                  child: Text("Trust Fund"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sanket Chaudhari",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text("Producer, Developer"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
