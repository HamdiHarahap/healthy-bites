import 'package:flutter/material.dart';
import 'package:resep_makanan/detail_screen.dart';
import 'package:resep_makanan/models/resep.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2C69D1),
              Color(0xFF0ABCF9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search',
                          hintText: 'Search here...',
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.blue[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0),
                        ),
                      ),
                    ),
                    Icon(Icons.menu, size: 30.0, color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "Healthy food for your lifestyle",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        buildCategory("images/food.png", "Food"),
                        buildCategory("images/drink.png", "Drink"),
                        buildCategory("images/toast.png", "Toast"),
                        buildCategory("images/soup.png", "Soup"),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Popular Recipe",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    RecipeGrid(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String imagePath, String title) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(imagePath, width: 40, height: 40),
        ),
        const SizedBox(height: 5.0),
        Text(title,
            style:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class RecipeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: ResepLists.map(
        (resep) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(resep: resep);
                },
              ));
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(resep.image),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      resep.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
