import 'package:flutter/material.dart';

class WardRobe extends StatelessWidget {
  const WardRobe({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wardrobe"),
          centerTitle: true,
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF4960a3),
          onPressed: () => {
            showModalBottomSheet<void>(
                backgroundColor: Colors.transparent,
                isScrollControlled: false,
                context: context,
                builder: (BuildContext context) {
                  return Wrap(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF4960a3)),
                                    onPressed: () => {
                                      Navigator.pushNamed(
                                        context,
                                        '/register',
                                      )
                                    },
                                    child: Text('Register a new item'),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                    onPressed: () => {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF4960a3)),
                                    child: Text('Find Drop-off Store'),
                                  )),
                                ],
                              ),
                              // TextButton(
                              //   child: Text('Share a new item'),
                              //   onPressed: () => {
                              //     Navigator.pushNamed(
                              //       context,
                              //       '/register',
                              //     )
                              //   },
                              // ),
                            ],
                          ))
                    ],
                  );
                })
          },
          child: Icon(Icons.add),
        ),
        body: Center(
            child: ListView(
          children: [
            ExpansionTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img01.ztat.net/article/spp-media-p1/3a054782762b412bbe038f7f1827bc67/b15e4f55f0f3457590087f040f38ed80.jpg?imwidth=762&filter=packshot'),
              ),
              title: Text("KIOSKI JUOMU UNIKKO (XS)"),
              subtitle: Text("2 person interested"),
              children: [
                ListTile(
                    title: Text('Danielle H.'),
                    subtitle: Text('Helsinki, Finland'),
                    trailing: TextButton(
                      child: Text('Profile'),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/user',
                          arguments: 0,
                        );
                      },
                    )),
                ListTile(
                    title: Text('Arianne F.'),
                    subtitle: Text('Paris, France'),
                    trailing: TextButton(
                      child: Text('Profile'),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/user',
                          arguments: 1,
                        );
                      },
                    )),
              ],
            ),
            ExpansionTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img01.ztat.net/article/spp-media-p1/915e41727af44383a85be1985e24a857/0718b4867d8c41e6a9c90e07c6f2f402.jpg?imwidth=1800&filter=packshot'),
              ),
              title: Text("TOIVEIKAS MAISEMA UNIKKO (S)"),
              subtitle: Text("1 person interested"),
              children: [
                ListTile(
                    title: Text('Danielle H.'),
                    subtitle: Text('Helsinki, Finland'),
                    trailing: TextButton(
                      child: Text('Profile'),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/user',
                          arguments: 0,
                        );
                      },
                    )),
              ],
            )
          ],
        )));
  }
}
