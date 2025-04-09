import 'package:boelicious/bottons/category_button.dart';
import 'package:boelicious/cards/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFEB6A2C),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFEB6A2C),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      'Boe.Licious',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CategoryButton(icon: Icons.cookie, label: 'Cookies'),
                    CategoryButton(icon: Icons.breakfast_dining, label: 'Croissants'),
                    CategoryButton(icon: Icons.cake, label: 'Cheese Cakes'),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Recomended',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: const [
                    ProductCard(
                      image: 'assets/img3.jpg',
                      name: 'Classic Croissant',
                      descrip: 'Classic french croissant ',
                      price: '10 £',
                    ),
                    ProductCard(
                      image: 'assets/img4.jpg',
                      name: 'Lotus Cheese Cake',
                      descrip: 'The classic cheese cake ',
                      price: '20 £',
                    ),
                    ProductCard(
                      image: 'assets/img5.jpg',
                      name: 'Choclate Cookies',
                      descrip: 'Basic choclate cookies',
                      price: '18 £',
                    ),
                    ProductCard(
                      image: 'assets/img6.jpg',
                      name: 'Hazlenut Brownie',
                      descrip: 'The real Brownie taste',
                      price: '25 £',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

