import 'package:afghan_backpack/screens/welcomeScreen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        elevation: 0,
        automaticallyImplyLeading:
            false, // <- This removes the default back arrow
        leading: IconButton(
          icon: Icon(Icons.list, color: Colors.black87),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Welcomescreen3()),
            );
          },
        ),
        title: Text(
          'Popular Cities of Afghanistan',
          style: TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}

class PopularCitiesPage extends StatelessWidget {
  static const routeName = '/popular-cities';

  final List<Map<String, String>> cities = [
    {
      'name': 'Herat',
      'location': 'western of AFG',
      'image': 'images/Herat.jpg',
    },
    {
      'name': 'Kabul',
      'location': 'eastern of AFG',
      'image': 'images/Kabul.jpg',
    },
    {
      'name': 'Balkh',
      'location': 'northern of AFG',
      'image': 'images/Balkh.jpg',
    },
    {
      'name': 'Bamiyan',
      'location': 'central of AFG',
      'image': 'images/Bamiyan.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
    backgroundColor: Colors.lightBlue[100],
      elevation: 0,
      automaticallyImplyLeading: false, // <- This removes the default back arrow
      leading: IconButton(
        icon: Icon(Icons.list, color: Colors.black87),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Welcomescreen3()),
          );
        },
      ),
      title: Text(
        'Popular Cities of Afghanistan',
        style: TextStyle(color: Colors.black87),
      ),
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index) {
            final city = cities[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: CityCard(
                name: city['name']!,
                location: city['location']!,
                image: city['image']!,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final String name;
  final String location;
  final String image;

  const CityCard({
    required this.name,
    required this.location,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Row(
          children: [
            // Big city image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),

// Text info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star_half, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text("4.8"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
