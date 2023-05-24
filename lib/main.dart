import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("extract widget"),
        ),
        body: ListView.builder(
          itemCount: 150,
          itemBuilder: (context, index) {
            return chatitem(
                imageUrl: "https://picsum.photos/id/$index/200/300",
                title: faker.person.name(),
                subtitle: faker.lorem.sentence());
          },
        ),
      ),
    );
  }
}

class chatitem extends StatelessWidget {
  final imageUrl;
  final title;
  final subtitle;
  chatitem({this.imageUrl, this.subtitle, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text("10:00"),
    );
  }
}
