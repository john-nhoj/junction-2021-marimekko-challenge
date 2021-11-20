import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mari n Go"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          children: [
            Card(
                color: Colors.amber[600],
                child: InkWell(
                  onTap: () {
                    // Navigate to card
                    Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (BuildContext context) => Scaffold(
                        appBar: AppBar(
                          title: const Text('second Page'),
                        ),
                        body: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const <Widget>[
                            Hero(
                              tag: 'hero-rectangle',
                              child: Image(
                                image: NetworkImage(
                                    'https://picsum.photos/250?image=9'),
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ));
                  },
                  child: Column(
                    children: [
                      const Expanded(
                        child: Hero(
                          tag: "hero-rectangle",
                          child: Image(
                            image: NetworkImage(
                                'https://picsum.photos/250?image=9'),
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("Location:"),
                              const SizedBox(height: 8),
                              Text("Price: ")
                            ]),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
