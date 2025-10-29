import 'package:flutter/material.dart';

class Productpage extends StatelessWidget {
  const Productpage({super.key});

  Widget buildColumn(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: 
          Image.asset('assets/shoe.jpg',
          width: double.infinity,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Product Name: Nike Air Zoom Pegasus',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Description: Best seller shoe on the market wow this is awesome buy this product at adidas.com',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 8),
          const Text(
            'Price: ₱4,999',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star_half, color: Colors.amber),
              Icon(Icons.star_border, color: Colors.amber),
              SizedBox(width: 8),
              Text('3.5 / 5', style: TextStyle(fontSize: 16)),
            ],
          ),

          const SizedBox(height: 16),

          ElevatedButton(onPressed: (){
            showModalBottomSheet(
    context: context,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  ),
  builder: (BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Buy Product', 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text('Nike Air Zoom Pegasus - ₱4,999'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Added to cart!')),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
            child: const Center(child: Text('Confirm Purchase')),
          ),
        ],
      ),
    );
  },
);

          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('Buy Now',
          style: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold),
          ),
          ),
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buildColumn(context),
      ),
    );
  }
}


