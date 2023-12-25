import 'package:flutter/material.dart';
import 'package:tugas_dicoding/opsi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimalList(),
    );
  }
}

class AnimalModel {
  final String name;
  final String description;
  final String imageUrl;

  AnimalModel(this.name, this.description, this.imageUrl);
}

class AnimalList extends StatefulWidget {
  @override
  _AnimalListState createState() => _AnimalListState();
}

class _AnimalListState extends State<AnimalList> {
  final List<AnimalModel> animals = [
    AnimalModel(
      'Kucing',
      'Penguasa Dunia.',
      'assets/images/cat',
    ),
    AnimalModel(
      'Anjing',
      'Hewan galak.',
      'assets/images/dog',
    ),
    AnimalModel(
      'Kura-Kura',
      'Hewan Lambat.',
      'assets/images/kura',
    ),
    AnimalModel(
      'Elang',
      'Hewan Terbang.',
      'assets/images/elang',
    ),
    AnimalModel(
      'Harimau',
      'Suka Makan.',
      'assets/images/harimau',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF005466),
        title: Text(
          'Jual Hewan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios_new),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OpsiScreen()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var animal in animals) AnimalItem(animal: animal),
          ],
        ),
      ),
    );
  }
}

class AnimalItem extends StatelessWidget {
  final AnimalModel animal;

  const AnimalItem({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3.0,
        child: ListTile(
          leading: SizedBox(
            width: 70,
            height: 70,
            child: CircleAvatar(
              backgroundImage: AssetImage(animal.imageUrl),
            ),
          ),
          title: Text(
            animal.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              animal.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
