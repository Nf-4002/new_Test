import 'package:afghan_backpack/screens/herat_screens/restaraunts.dart';
import 'package:flutter/material.dart';
import 'package:afghan_backpack/screens/herat_screens/heratHotelsScreen.dart';

class HeratCityPage extends StatelessWidget {
  const HeratCityPage({Key? key}) : super(key: key);

  static Widget categoryIcon(String assetPath, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          backgroundImage: AssetImage(assetPath),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEFEF),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                  child: SizedBox(
                    height: 340,
                    width: double.infinity,
                    child: Image.asset('images/herat_1.jpg', fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 24,
                  left: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Weather info aligned to right
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.wb_sunny, color: Colors.amber, size: 28),
                          SizedBox(width: 8),
                          Text(
                            '25°C',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Herat + Location icon (moved here)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.location_on, color: Colors.orange),
                          SizedBox(width: 8),
                          Text(
                            'Herat',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Tab Section
                      DefaultTabController(
                        length: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TabBar(
                              labelColor: Colors.black,
                              indicatorColor: Colors.deepOrange,
                              tabs: const [
                                Tab(text: 'About'),
                                Tab(text: 'Review'),
                                Tab(text: 'Photo'),
                                Tab(text: 'Video'),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              child: TabBarView(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 12),
                                    child: Text(
                                      'Herat is an oasis city and the third-largest city in Afghanistan. In 2020, it had an estimated population of 574,276...',
                                    ),
                                  ),
                                  const Center(
                                    child:
                                        Text('User reviews will appear here.'),
                                  ),
                                  const Center(
                                    child: Text('Photos related to Herat.'),
                                  ),
                                  const Center(
                                    child: Text('Videos about Herat.'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Description Section
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Herat is an oasis city and the third-largest city in Afghanistan. In 2020, it had an estimated population of 574,276, and serves as the capital of Herat Province...',
                      ),
                      const SizedBox(height: 24),

                      // Explore Section
                      const Text(
                        'Explore',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          categoryIcon('images/historical_place.jpg',
                              'Historical Places'),
                          categoryIcon('images/park.jpg', 'Parks'),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HeratRestaurantsScreen(),
                                ),
                              );
                            },
                            child: categoryIcon(
                                'images/restaurant.jpg', 'Restaurants'),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HeratHotelsScreen(),
                                ),
                              );
                            },
                            child: categoryIcon('images/hotel.jpg', 'Hotels'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
