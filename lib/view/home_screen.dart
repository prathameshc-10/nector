import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar_grocery/database/fruit_data.dart';
import 'package:nectar_grocery/model/fruit_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset("asset/logo.png", height: 30, width: 30),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Color.fromRGBO(76, 79, 77, 1)),
                  const SizedBox(width: 10),
                  Text(
                    "Pune, Maharashta",
                    style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(76, 79, 77, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(76, 79, 77, 1),
                    size: 29,
                  ),
                  hintText: "Search Store",
                  hintStyle: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(76, 79, 77, 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(242, 243, 243, 1),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("asset/banner.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Exclusive Offers",
                    style: GoogleFonts.dmSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(33, 37, 41, 1),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(83, 177, 117, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fruitsList.length,
                  itemBuilder: (context, index) {
                    final Fruit fruit = fruitsList[index]; // ✅ FIXED

                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        width: 175,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  fruit.image,
                                  height: 90,
                                  // fit: BoxFit.cover,
                                ),
                              ),

                              const SizedBox(height: 10),

                              // Fruit Name
                              Text(
                                fruit.name,
                                style: GoogleFonts.dmSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              const SizedBox(height: 5),

                              // Quantity
                              Text(
                                fruit.quantity,
                                style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),

                              Spacer(),

                              // Price
                              Row(
                                children: [
                                  Text(
                                    "₹${fruit.price}",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  FloatingActionButton(
                                    onPressed: () {},
                                    backgroundColor: Color.fromRGBO(
                                      83,
                                      177,
                                      117,
                                      1,
                                    ),
                                    mini: true,
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Best Selling",
                    style: GoogleFonts.dmSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(33, 37, 41, 1),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(83, 177, 117, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fruitsList.length,
                  itemBuilder: (context, index) {
                    final Fruit fruit = fruitsList[index]; // ✅ FIXED

                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        width: 175,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  fruit.image,
                                  height: 90,
                                  // fit: BoxFit.cover,
                                ),
                              ),

                              const SizedBox(height: 10),

                              // Fruit Name
                              Text(
                                fruit.name,
                                style: GoogleFonts.dmSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              const SizedBox(height: 5),

                              // Quantity
                              Text(
                                fruit.quantity,
                                style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),

                              Spacer(),

                              // Price
                              Row(
                                children: [
                                  Text(
                                    "₹${fruit.price}",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  FloatingActionButton(
                                    onPressed: () {},
                                    backgroundColor: Color.fromRGBO(
                                      83,
                                      177,
                                      117,
                                      1,
                                    ),
                                    mini: true,
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Groceries",
                    style: GoogleFonts.dmSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(33, 37, 41, 1),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(83, 177, 117, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 220,
                          child: Image.asset(
                            "asset/Pulses.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fruitsList.length,
                  itemBuilder: (context, index) {
                    final Fruit fruit = fruitsList[index]; // ✅ FIXED

                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        width: 175,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  fruit.image,
                                  height: 90,
                                  // fit: BoxFit.cover,
                                ),
                              ),

                              const SizedBox(height: 10),

                              // Fruit Name
                              Text(
                                fruit.name,
                                style: GoogleFonts.dmSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              const SizedBox(height: 5),

                              // Quantity
                              Text(
                                fruit.quantity,
                                style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),

                              Spacer(),

                              // Price
                              Row(
                                children: [
                                  Text(
                                    "₹${fruit.price}",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  FloatingActionButton(
                                    onPressed: () {},
                                    backgroundColor: Color.fromRGBO(
                                      83,
                                      177,
                                      117,
                                      1,
                                    ),
                                    mini: true,
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
