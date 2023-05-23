import 'package:flutter/material.dart';
import 'package:stock_app/pages/loginpage.dart';
import 'package:stock_app/pages/stockpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ElevatedButton(
                child: const Text("Trending Stocks"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Stockpage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text("Logout"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginpage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
