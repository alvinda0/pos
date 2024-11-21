// home/view/home_sxreen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      'https://storage.googleapis.com/a1aa/image/aaxBfIxyX80GDyQemYA57nWarbPDQY75ek3w7zA2uVkHHolnA.jpg',
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maisaroh',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Toko Jaya Berkah',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications, color: Colors.grey),
                ],
              ),
            ),
            // Saldo Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saldo Kamu',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.visibility_off, color: Colors.grey),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Rp.3.269.000',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Tarik Dana',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Penjualan & Produk
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSummaryItem('Total Penjualan', 'Rp12.500.000',
                      '26% dari kemarin', Colors.black),
                  _buildSummaryItem('Produk Terjual', '120',
                      '100% dari kemarin', Colors.black),
                ],
              ),
            ),
            // Riwayat Transaksi
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Riwayat Transaksi',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'Hari Ini',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Icon(Icons.arrow_drop_down,
                              size: 16, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildTransactionItem(
                      'Jeruk Limau', 'Rp.21.000', 99, 'Rp.52.000'),
                  _buildTransactionItem(
                      'Jeruk Limau', 'Rp.21.000', 99, 'Rp.52.000'),
                  _buildTransactionItem(
                      'Jeruk Limau', 'Rp.21.000', 99, 'Rp.52.000'),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat lebih detail',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryItem(
      String title, String amount, String change, Color textColor) {
    return Expanded(
      // Use Expanded to allow flexible resizing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold, color: textColor)),
          SizedBox(height: 4),
          Text(amount,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(
            change,
            style: TextStyle(fontSize: 12, color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(
      String productName, String price, int quantity, String total) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                price,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('x$quantity'),
              Text(
                total,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
