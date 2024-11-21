// home/view/screen/gift_screen.dart
import 'package:flutter/material.dart';

class GiftScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
                10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tambah Transaksi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0, // equivalent to text-sm in Tailwind CSS
                  fontWeight: FontWeight
                      .w600, // equivalent to font-semibold in Tailwind CSS
                ),
              ),
              SizedBox(height: 24.0), // equivalent to mb-6 in Tailwind CSS
              Container(
                padding:
                    EdgeInsets.all(16.0), // equivalent to p-4 in Tailwind CSS
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(
                      10.0), // equivalent to rounded-lg in Tailwind CSS
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tambah Produk',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14.0, // equivalent to text-sm in Tailwind CSS
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.grey[500],
                      onPressed: () {
                        // Add product button action
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0), // equivalent to mb-6 in Tailwind CSS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Colors.grey[
                          600], // equivalent to text-gray-500 in Tailwind CSS
                      fontSize: 14.0, // equivalent to text-sm in Tailwind CSS
                    ),
                  ),
                  Text(
                    'Rp.300.000',
                    style: TextStyle(
                      color: Colors.grey[
                          800], // equivalent to text-gray-800 in Tailwind CSS
                      fontWeight: FontWeight
                          .w600, // equivalent to font-semibold in Tailwind CSS
                      fontSize: 18.0, // equivalent to text-lg in Tailwind CSS
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0), // equivalent to mb-6 in Tailwind CSS
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .blue[600], // equivalent to bg-blue-600 in Tailwind CSS
                  padding: EdgeInsets.symmetric(
                      vertical: 12.0), // equivalent to py-2 in Tailwind CSS
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // equivalent to rounded-lg in Tailwind CSS
                  ),
                ),
                onPressed: () {
                  // Cetak Barcode button action
                },
                child: Text(
                  'Cetak Barcode',
                  style: TextStyle(
                    color: Colors
                        .white, // equivalent to text-white in Tailwind CSS
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
