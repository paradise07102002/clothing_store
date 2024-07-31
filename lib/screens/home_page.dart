import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clothing_store/widgets/category_widget.dart';
import 'package:clothing_store/widgets/list_product_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.29),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0)
          ),
          child: Container(
            color: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.05),
                Center(child: Text('Clothing Store', style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),),),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWith * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Tìm kiếm',
                  ),
                ),
                ),
                SizedBox(height: screenHeight * 0.03,),
                Container(
                  height: 120.0,
                  width: double.infinity,
                  child: CategoryWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListProduct(),
    );
  }
}