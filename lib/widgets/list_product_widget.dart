import 'package:flutter/material.dart';

class ListProduct extends StatefulWidget {
  ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5.0
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                child: Image.network(
                  'https://salt.tikicdn.com/cache/280x280/ts/product/db/61/40/887f8624781c04b0bd976bedd2409d81.jpg.webp',
                  fit: BoxFit.cover,
                  height: 125.0,
                  width: double.infinity,
                  ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tên sản phẩm', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                    Text('100 000 đ', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.green),)
                  ],
                ),
                // padding: const EdgeInsets.all(8.0),
                // child: Center(child: Text('Tên sản phẩm', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),),
              ),
            ],
          ),
        );
      },
    );
  } 
}