import 'package:flutter/material.dart';
import 'dart:core';

class Article {
  final String name;
  final int price;
  final String image;

  Article({
    required this.name,
    required this.price,
    required this.image,
  });
}

class User {
  final String username;
  final int index;
  final List<Article> interestedItems;

  User({
    required this.username,
    required this.index,
    required this.interestedItems,
  });
}

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> users = [
      User(username: 'danielle97', index: 0, interestedItems: [
        Article(
            name: 'KIOSKI JUOMU UNIKKO',
            price: 10,
            image:
                'https://img01.ztat.net/article/spp-media-p1/3a054782762b412bbe038f7f1827bc67/b15e4f55f0f3457590087f040f38ed80.jpg?imwidth=762&filter=packshot'),
        Article(
            name: 'TOIVEIKAS MAISEMA UNIKKO',
            price: 10,
            image:
                'https://img01.ztat.net/article/spp-media-p1/915e41727af44383a85be1985e24a857/0718b4867d8c41e6a9c90e07c6f2f402.jpg?imwidth=1800&filter=packshot'),
      ]),
      User(username: 'arianne97', index: 1, interestedItems: [
        Article(
            name: 'name',
            price: 10,
            image:
                'https://img01.ztat.net/article/spp-media-p1/3a054782762b412bbe038f7f1827bc67/b15e4f55f0f3457590087f040f38ed80.jpg?imwidth=762&filter=packshot'),
        Article(
            name: 'name',
            price: 10,
            image:
                'https://img01.ztat.net/article/spp-media-p1/915e41727af44383a85be1985e24a857/0718b4867d8c41e6a9c90e07c6f2f402.jpg?imwidth=1800&filter=packshot'),
      ])
    ];
    final userId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text(users[userId].username),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 30,
              child: Text(users[userId].username.substring(0, 2).toUpperCase()),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                users[userId].username,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              '${users[userId].username} is interested in',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Column(children: [
              for (var item in users[userId].interestedItems)
                ListTile(
                  title: Text(item.name),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item.image),
                  ),
                  trailing: TextButton(
                    child: Text('Send'),
                    onPressed: () => {
                      users.removeWhere((item2) => item2.username == item.name)
                    },
                  ),
                )
            ])
          ],
        ),
      ),
    );
  }
}
