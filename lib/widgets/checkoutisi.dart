import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

class Cekotisi extends StatefulWidget {
  @override
  _CekotisiState createState() => _CekotisiState();
}

class _CekotisiState extends State<Cekotisi> {
  final List<String> productTitles = [
    'Burger Mang Jay',
    'Batagor Mang Jay'
    // Tambahkan judul produk yang lain di sini
  ];

  final List<String> variationTitles = [
    'chesee',
    'meat',
    'chicken',
    // Tambahkan judul produk yang lain di sini
  ];

  final List<int> productPrices = [
    20000,
    23000,
    
    // Tambahkan harga produk yang lain di sini
  ];

  final List<String> productinitrate = [
   '4.0', '4.5'];


  List<int> quantities = [1, 1, 1]; // Inisialisasi jumlah produk
  List<double> productRatings = [4.0, 4.5]; // Initial rating values

 

  @override
  Widget build(BuildContext context) {
    return Column(    
      children: [
      Padding(padding: EdgeInsets.only(right: 180,top: 5),
      child: Column(
        children: [
          Row(
            children: [            
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(
                  CupertinoIcons.placemark
                ),
              ),
          Text("Delivery Address",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
                        ),
          ),
            ],
          ),
          
        ],
      ),
      ),
        Row(
         children: [    
            Padding(padding: EdgeInsets.all(5)
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Position :",
                     style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                    ),
                    Text("On the Way",
                     style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                    ),
                  ],
                ),
              ),
              height: 100,
              width: 250,
                margin: EdgeInsets.only(right: 10,top: 10,bottom: 20),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                  ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),    
            ),
         Container(
          child: Icon(CupertinoIcons.add_circled,
          size: 40,
          ),
          height: 100,
          width: 100,         
            margin: EdgeInsets.only(right: 10,top: 10,bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                  ),
                  ],
              borderRadius: BorderRadius.circular(10),
            ),
        ),
          ],
        ),
        
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text("Shopping List",
                style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Icon(CupertinoIcons.add_circled,
                      size: 30,
                      ),
            ),
          ],
        ), 
       for (int i = 0; i < 2; i++)
           Container(
            height: 250,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                  ),
                  ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                     CupertinoIcons.delete_solid,
                    size: 30,
                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          
                          child: Image.asset("images/cekotimg/${i + 1}.png",
                          ), // Sesuaikan path gambar

                      ),
                      Container(
                        child: Column(
                          children: [
                             Container(
                              margin: EdgeInsets.only(right: 30),
                               child: Text(
                               productTitles[i],
                               style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                                 ),
                                 ),
                                 
                             ),
                           Container(
                                  padding: EdgeInsets.all(6),
                                 
                                  child: Column(
                                    
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 90),
                                        child: Text("Variations :",
                                      
                                        style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                              ),
                                        ),
                                      ),
                                Row(
                                  children: List.generate(
                                    variationTitles.length,
                                    (index) => Container(
                                      
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.only(left: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        "${variationTitles[index]}",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                    ],
                                  )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(right: 40),
                                  child: Row(
                                    children: [
                                      Text(productinitrate[i],
                                      style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                      RatingBar.builder(
                                          initialRating: productRatings[i],
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 20,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
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
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                      children: [
                                           Container(
                                            padding: EdgeInsets.all(3),
                                            margin: EdgeInsets.only(right: 50),
                                            decoration: BoxDecoration(
                                               color: Colors.white,
                                                border: Border.all(width: 2,
                                                color: Colors.grey
                                                ), 
                                            ),
                                             child: Text(
                                              'Rp ${productPrices[i]}',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(255, 0, 0, 0),
                                              ),
                                                                                   ),
                                           ),
                                          Container(
                                            child: LikeButton(                      
                                              size: 30,
                                              likeBuilder: (bool isLiked) {
                                                return Icon(
                                                  CupertinoIcons.heart_fill,
                                                  color: isLiked ? Colors.red : Colors.grey,
                                                  size: 30,
                                                );
                                              },
                                              isLiked: false, // Sesuaikan dengan status like yang seharusnya
                                              onTap: (isLiked) {
                                                // Tambahkan logika ketika tombol Like ditekan
                                                return Future.value(!isLiked);
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child:  Text(
                                       "Total order (${quantities[i]}):", // Tampilkan jumlah produk
                                       style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.bold,
                                         color: Color.fromARGB(255, 0, 0, 0),
                                       ),
                                     ),

                        ),
                        Container(
                          child: Text(
                                          'Rp ${productPrices[i]}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueAccent
                                          ),
                                        )
,
                        )
                      ],
                    ),
                  )
                ],
              ),
              
              
            ),
),
      ],
    );
  }
}
