import 'package:cinema_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class MyTicketPage extends StatefulWidget {
  @override
  _MyTicketPageState createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 40,
                margin: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Cari bioskop',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.account_circle),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'JAKARTA',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  MovieCard(
                    title: "Moana 2",
                    ageRating: "D 13+",
                    genre: "Action, Adventure",
                    rating: 9.5,
                    imageAsset: 'assets/moana.jpeg', // Asset Path
                  ),
                  MovieCard(
                    title: "Oppenheimer",
                    ageRating: "R 17+",
                    genre: "Action, Science",
                    rating: 9.3,
                    imageAsset: 'assets/oppenheimer.jpeg', // Asset Path
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavbar(currentIndex: 3));
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String ageRating;
  final String genre;
  final double rating;
  final String imageAsset;

  MovieCard({
    required this.title,
    required this.ageRating,
    required this.genre,
    required this.rating,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
              child: Image.asset(
                imageAsset,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      ageRating,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Text(genre),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
