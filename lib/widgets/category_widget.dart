import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key, required this.width, required this.height});

  final double width;
  final double height;
  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}
class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 5.0
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: widget.width * 0.165,
              height: widget.width * 0.165,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(widget.width * 0.33)),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0
                ),
                color: Colors.white
              ),
              child: ClipOval(
                child: Image.network(
                  'https://salt.tikicdn.com/cache/280x280/ts/product/db/61/40/887f8624781c04b0bd976bedd2409d81.jpg.webp',
                   fit: BoxFit.contain
                   ),
              ),
            ),
            Expanded(child: Text('Sneaker', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,))
          ],
        );
      },
    );
  }
}