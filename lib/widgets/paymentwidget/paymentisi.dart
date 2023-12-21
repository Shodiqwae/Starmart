import 'package:ecomerce_app/pages/payment.dart';
import 'package:ecomerce_app/widgets/paymentwidget/paymentorder.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  List<Map<String, dynamic>> cart;
  int total;

  PaymentScreen({required this.cart, required this.total});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentMethod? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [...generatePaymentMethodCards(), orderpay(cart: widget.cart, total: widget.total,)],
        ),
      ),
      SizedBox(height: 16.0),
      Container(
        height: 50,
        width: 50,
        child: ElevatedButton(
          onPressed: _selectedPaymentMethod != null
              ? () {
                  showPaymentSuccessDialog(context, widget.total, widget.cart);
                }
              : null,
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(0, 80, 184, 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(
            'Pay Now',
            style: TextStyle(fontFamily: "Montsserat-Bold", fontSize: 15),
          ),
        ),
      ),
    ]);
  }

  List<Widget> generatePaymentMethodCards() {
    List<PaymentMethod> paymentMethods = [
      PaymentMethod.gopay,
      PaymentMethod.dana,
      PaymentMethod.linkaja, // Tambahkan metode pembayaran PayPal
      // Tambahkan metode pembayaran lainnya sesuai kebutuhan
    ];

    List<Widget> cards = [];

    for (var method in paymentMethods) {
      cards.add(buildPaymentMethodCard(method));
      cards.add(SizedBox(height: 16.0)); // Tambahkan jarak antara setiap kartu
    }

    return cards;
  }

  Widget buildPaymentMethodCard(PaymentMethod method) {
    String imagePath;
    String label;

    switch (method) {
      case PaymentMethod.gopay:
        imagePath = 'images/payment/1.png';
        label = 'Gopay';
        break;
      case PaymentMethod.dana:
        imagePath = 'images/payment/2.png';
        label = 'Dana';
        break;
      case PaymentMethod.linkaja:
        imagePath = 'images/payment/3.png';
        label = 'Link Aja';
        break;
    }

    return PaymentMethodCard(
      imageAsset: imagePath,
      label: label,
      onPressed: () {
        togglePaymentMethod(method);
      },
      isSelected: _selectedPaymentMethod == method,
    );
  }

  void togglePaymentMethod(PaymentMethod method) {
    setState(() {
      if (_selectedPaymentMethod == method) {
        _selectedPaymentMethod = null; // Batal pemilihan jika sudah dipilih
      } else {
        _selectedPaymentMethod = method; // Pilih metode jika belum dipilih
      }
    });
  }
}

enum PaymentMethod {
  gopay,
  dana,
  linkaja, // Tambahkan metode pembayaran PayPal
}

class PaymentMethodCard extends StatelessWidget {
  final String imageAsset;
  final String label;
  final VoidCallback onPressed;
  final bool isSelected;

  const PaymentMethodCard({
    required this.imageAsset,
    required this.label,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: 4.0,
        color: isSelected ? Colors.blue[50] : null,
        borderOnForeground: isSelected,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? Colors.blue : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.asset(imageAsset, width: 50.0, height: 60.0),
              SizedBox(width: 30.0),
              Text(
                label,
                style:
                    TextStyle(fontSize: 20.0, fontFamily: "Montsserat-Medium"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
