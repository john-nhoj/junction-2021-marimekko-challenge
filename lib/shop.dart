import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _titleTextDecoration = TextStyle(
        color: Color(0xFF4960a3), fontSize: 25, fontWeight: FontWeight.bold);
    final children = <Widget>[
      Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              // Navigate to card
              Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Ohikulkeva Kivet'),
                    backgroundColor: Colors.white,
                    titleTextStyle: _titleTextDecoration,
                    iconTheme: const IconThemeData(color: Color(0xFF4960a3)),
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Hero(
                        tag: 'item-090400-059',
                        child: Image(
                          image: NetworkImage(
                              'https://www.marimekko.com/media/catalog/product/0/9/090400-059_X191868_10_1631714482.jpg?width=750&height=938&canvas=750:938&quality=100&bg-color=255,255,255&fit=bounds'),
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
                    tag: 'item-090400-059',
                    child: Image(
                      image: NetworkImage(
                          'https://www.marimekko.com/media/catalog/product/0/9/090400-059_X191868_10_1631714482.jpg?width=750&height=938&canvas=750:938&quality=100&bg-color=255,255,255&fit=bounds'),
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
      Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              // Navigate to card
              Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Kulkeville Kivet'),
                    backgroundColor: Colors.white,
                    titleTextStyle: _titleTextDecoration,
                    iconTheme: const IconThemeData(color: Color(0xFF4960a3)),
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Hero(
                        tag: 'item-090221-059',
                        child: Image(
                          image: NetworkImage(
                              'https://www.marimekko.com/media/catalog/product/0/9/090221-059_X192944_20_1631716068.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
                    tag: 'item-090221-059',
                    child: Image(
                      image: NetworkImage(
                          'https://www.marimekko.com/media/catalog/product/0/9/090221-059_X192944_20_1631716068.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
      Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              // Navigate to card
              Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Pituus Kivet'),
                    backgroundColor: Colors.white,
                    titleTextStyle: _titleTextDecoration,
                    iconTheme: const IconThemeData(color: Color(0xFF4960a3)),
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Hero(
                        tag: 'item-090401-059',
                        child: Image(
                          image: NetworkImage(
                              'https://www.marimekko.com/media/catalog/product/0/9/090401-059_X191682_10_1631714257.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
                    tag: 'item-090401-059',
                    child: Image(
                      image: NetworkImage(
                          'https://www.marimekko.com/media/catalog/product/0/9/090401-059_X191682_10_1631714257.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
      Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              // Navigate to card
              Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Loiva Ruutu-Unikko'),
                    backgroundColor: Colors.white,
                    titleTextStyle: _titleTextDecoration,
                    iconTheme: const IconThemeData(color: Color(0xFF4960a3)),
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Hero(
                        tag: 'item-090243-559',
                        child: Image(
                          image: NetworkImage(
                              'https://www.marimekko.com/media/catalog/product/0/9/090243-559_X192616_20_1632900311.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
                    tag: 'item-090243-559',
                    child: Image(
                      image: NetworkImage(
                          'https://www.marimekko.com/media/catalog/product/0/9/090243-559_X192616_20_1632900311.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
      Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              // Navigate to card
              Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Lehmus Mini Unikko'),
                    backgroundColor: Colors.white,
                    titleTextStyle: _titleTextDecoration,
                    iconTheme: const IconThemeData(color: Color(0xFF4960a3)),
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Hero(
                        tag: 'item-090361-099',
                        child: Image(
                          image: NetworkImage(
                              'https://www.marimekko.com/media/catalog/product/0/9/090361-099_X191674_10_1629517569.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
                    tag: 'item-090361-099',
                    child: Image(
                      image: NetworkImage(
                          'https://www.marimekko.com/media/catalog/product/0/9/090361-099_X191674_10_1629517569.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
      Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              // Navigate to card
              Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Palokärki'),
                    backgroundColor: Colors.white,
                    titleTextStyle: _titleTextDecoration,
                    iconTheme: const IconThemeData(color: Color(0xFF4960a3)),
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Hero(
                        tag: 'item-090276-003',
                        child: Image(
                          image: NetworkImage(
                              'https://www.marimekko.com/media/catalog/product/0/9/090276-003_X191680_10_1634734283.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
                    tag: 'item-090276-003',
                    child: Image(
                      image: NetworkImage(
                          'https://www.marimekko.com/media/catalog/product/0/9/090276-003_X191680_10_1634734283.jpg?quality=100&bg-color=255,255,255&fit=bounds&height=469&width=375&canvas=375:469'),
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
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: Color(0xFF4960a3),
              fontSize: 25,
              fontWeight: FontWeight.bold),
          title: SvgPicture.network(
            'https://www.marimekko.com/static/version1637055171/frontend/Improove/marimekko2/en_GB/images/logo.svg',
            placeholderBuilder: (BuildContext context) => Container(
                padding: const EdgeInsets.all(30.0),
                child: const CircularProgressIndicator()),
          ),
          backgroundColor: Colors.white,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          children: children,
        ));
  }
}
