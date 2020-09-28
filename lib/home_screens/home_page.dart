import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/data/data.dart';
import 'package:flutter_responsive_ui/size_config.dart';
import 'package:flutter_responsive_ui/widgets/rating_starts.dart';
import 'package:flutter_responsive_ui/widgets/recent_order.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((restaurant) {
      restaurantList.add(GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey[200], width: 1)),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: restaurant.imageUrl,
                    child: Image(
                      height: setHeightSize(15),
                      width: setWidthSize(40),
                      image: AssetImage(
                        restaurant.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: setWidthSize(4)),
                    ),
                    RatingStarts(restaurant.rating),
                    SizedBox(
                      height: setHeightSize(1),
                    ),
                    Text(restaurant.address),
                    SizedBox(
                      height: setHeightSize(1),
                    ),
                    Text(
                      '0.2 miles away',
                      style: TextStyle(fontSize: setFontSize(3)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
    });

    return Column(
      children: restaurantList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ),
        title: Text('Food Delivery'),
        actions: [
          FlatButton(
              child: Text(
                'Card(${currentUser.cart.length})',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0.8,
                        color: Theme.of(context).primaryColor,
                      )),
                  hintText: 'Search Food or Restaurants',
                  prefixIcon: Icon(Icons.search, size: setWidthSize(6)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  )),
            ),
          ),
          RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                      fontSize: setWidthSize(3),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2),
                ),
              ),
              _buildRestaurants(),
            ],
          ),
        ],
      ),
    );
  }
}
