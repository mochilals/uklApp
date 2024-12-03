import 'package:cinema_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Tiket());
}

class Tiket extends StatelessWidget {
  const Tiket({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Film Bioskop'),
          bottom: const TabBar(
              tabs: [Tab(text: 'SEDANG TAYANG'), Tab(text: 'AKAN DATANG')]),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                  children: const [
                    MovieCard(
                      title: 'Bila Esok Ibu Tiada',
                      genre: 'Drama, Romance',
                      rating: 4.5,
                      imageUrl: 'assets/Poster1.jpg',
                    ),
                    MovieCard(
                      title: 'Sekawan Limo',
                      genre: 'Horror',
                      rating: 4.0,
                      imageUrl: 'assets/Poster2.png',
                    ),
                    MovieCard(
                      title: 'Sekawan Limo',
                      genre: 'Horror',
                      rating: 4.0,
                      imageUrl: 'assets/Poster2.png',
                    ),
                    MovieCard(
                      title: 'Sekawan Limo',
                      genre: 'Horror',
                      rating: 4.0,
                      imageUrl: 'assets/Poster2.png',
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                  children: const [
                    MovieCard(
                      title: 'Agak Lain',
                      genre: 'Action, Adventure',
                      rating: 4.0,
                      imageUrl: 'assets/Poster3.jpg',
                    ),
                    MovieCard(
                      title: 'Red One',
                      genre: 'Action, Adventure',
                      rating: 4.0,
                      imageUrl: 'assets/Poster1.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavbar(currentIndex: 2),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String genre;
  final double rating;
  final String imageUrl;

  const MovieCard({
    super.key,
    required this.title,
    required this.genre,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Stack(
              children: [
                Image.asset(
                  imageUrl,
                  height: 236,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
