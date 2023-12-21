import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class summaryisi extends StatefulWidget {
  List<Map<String, dynamic>> cart;

  summaryisi({required this.cart});

  @override
  State<summaryisi> createState() => _summaryisiState();
}

class _summaryisiState extends State<summaryisi> {
  // final List<String> productTitles = [
  //   'Burger Mang Jay',
  //   'Batagor Mang Jay'
  //   // Tambahkan judul produk yang lain di sini
  // ];

  final List<String> variationTitles = [
    'chesee',
    'meat',
    'chicken',
    // Tambahkan judul produk yang lain di sini
  ];

  // final List<int> productPrices = [
  //   20000,
  //   23000,

  //   // Tambahkan harga produk yang lain di sini
  // ];

  //final List<String> productinitrate = ['4.0', '4.5'];

  List<int> selectedQuantities = List.generate(11, (index) => 1);
  List<String?> selectedVariations = List.generate(11, (index) => null);
  //List<int> quantities = [1, 1, 1]; // Inisialisasi jumlah produk
  //List<double> productRatings = [4.0, 4.5]; // Initial rating va
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (int i = 0; i < widget.cart.length; i++)
        Container(
          padding: EdgeInsets.only(bottom: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          "images/${widget.cart[i]['nama']}.jpeg",
                          width: 160,
                          height: 160,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.cart[i]['dnama'],
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 80),
                          child: Text(
                            'Rp ${widget.cart[i]['price']}',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 40),
                          child: Row(
                            children: [
                              Text(
                                widget.cart[i]['productinitrate'],
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: widget.cart[i]['productRatings'],
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ),
                        // DropdownButton for Variation
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Container(
                                child: DropdownButton2<String>(
                                  isExpanded: true,
                                  hint: const Row(
                                    children: [
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Variant',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: variationTitles
                                      .map((String item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedVariations[i],
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedVariations[i] = newValue;
                                    });
                                  },
                                  buttonStyleData: ButtonStyleData(
                                    height: 40,
                                    width: 100,
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromRGBO(242, 242, 242, 10),
                                    ),
                                    elevation: 2,
                                  ),
                                  iconStyleData: const IconStyleData(
                                    icon: Icon(
                                      Icons.arrow_drop_down_outlined,
                                    ),
                                    iconSize: 20,
                                    iconEnabledColor: Colors.black,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    maxHeight: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color.fromRGBO(242, 242, 242, 20),
                                    ),
                                    offset: const Offset(-20, 0),
                                    scrollbarTheme: ScrollbarThemeData(
                                      thickness:
                                          MaterialStateProperty.all<double>(6),
                                      thumbVisibility:
                                          MaterialStateProperty.all<bool>(true),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 14, right: 14),
                                  ),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    '${widget.cart[i]['count']}',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    ]);
  }
}
