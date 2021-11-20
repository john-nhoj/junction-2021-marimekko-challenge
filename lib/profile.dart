import 'package:flutter/material.dart';
import 'latest_transactions.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: Image.network('https://picsum.photos/250?image=9'),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Text("#12345", style: TextStyle(fontSize: 28))
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Text("John Cheng"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Marimekkoins: ", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("120", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: LatestTransactions(),
          ),
        ],
      )
    );
  }
}


