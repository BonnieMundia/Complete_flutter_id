import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Complete(),
  ));
}

class Complete extends StatefulWidget {
  const Complete({Key? key}) : super(key: key);

  @override
  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: showText("FLUTTER ID", Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            cardInformation(),
            showDivider(),
            rowText("Stack", "FLutter"),
            space(),
            rowText("id", "1054/2021"),
            showDivider(),
            rowIcon(Icons.person_sharp, "Google"),
            space(),
            rowIcon(Icons.notification_add, "Facebook"),
            space(),
            rowIcon(Icons.local_airport, "Github"),
          ],
        ),
      ),
    );
  }

  Widget showText(String text, Color choice) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: choice),
    );
  }

  Widget cardInformation() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.red,
          radius: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            showText("Bonnie Mundia", Colors.black),
            showText("bonfacemundia02@gmail.com", Colors.green)
          ],
        )
      ],
    );
  }

  Widget rowText(String text_1, String text_2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        showText(text_1, Colors.blue),
        const SizedBox(
          width: 7,
        ),
        showText(":", Colors.red),
        const SizedBox(
          width: 7,
        ),
        showText(text_2, Colors.black)
      ],
    );
  }

  Widget rowIcon(IconData icon, String text_2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        const SizedBox(
          width: 7,
        ),
        showText(":", Colors.red),
        const SizedBox(
          width: 7,
        ),
        showText(text_2, Colors.black)
      ],
    );
  }

  Widget showDivider() {
    return const Divider(
      thickness: 1,
      color: Colors.black,
      height: 40,
    );
  }

  Widget space() {
    return const SizedBox(
      height: 6,
    );
  }
}
