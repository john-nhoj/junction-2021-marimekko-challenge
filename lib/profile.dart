import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'latest_transactions.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1000), () {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 5),
          backgroundColor: Colors.white,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFF4960a3), width: 5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_lmk0pfms.json',
                fit: BoxFit.fill,
              ),
              Text(
                'Congratulations!',
                style: TextStyle(
                    color: Color(0xFF4960a3),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(height: 50),
              Text(
                'The item has been redeemed by another loyal customer.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF4960a3)),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You are rewarded 20 extra Marimekkoins',
                    style: TextStyle(
                        color: Color(0xFF4960a3), fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                        border: Border.all(width: 2, color: Color(0xFF4960a3))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(999),
                      child: Image(
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://eu.snapengage.com/avatar/serve?id=4721488683859968'),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text('John Doe'),
          centerTitle: true,
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
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
                  child: Image.network('https://picsum.photos/200'),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Text("#12345",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold))),
                // const Padding(
                //   padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                //   child: Text("John Cheng"),
                // ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Marimekkoins: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text(
                          "120",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999),
                              border: Border.all(
                                  width: 2, color: Color(0xFF4960a3))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(999),
                            child: Image(
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://eu.snapengage.com/avatar/serve?id=4721488683859968'),
                            ),
                          ),
                        ),
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
        ));
  }
}
