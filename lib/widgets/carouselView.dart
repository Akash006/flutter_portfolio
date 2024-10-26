import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';

class carouselView extends StatelessWidget {
  const carouselView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Carousal View"),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              child: CarouselView(
                  itemExtent: MediaQuery.sizeOf(context).width,
                  elevation: 8,
                  itemSnapping: true,
                  children: List.generate(10, (int index) {
                    return Container(
                      color: Colors.white70,
                      child: Image.network("https://picsum.photos/400?random=$index",
                      fit: BoxFit.cover),
                    );
                  }
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
