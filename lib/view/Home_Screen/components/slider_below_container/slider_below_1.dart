import 'package:flutter/material.dart';

class SliderBelow1 extends StatefulWidget {
  const SliderBelow1({super.key});

  @override
  State<SliderBelow1> createState() => _SliderBelow1State();
}

class _SliderBelow1State extends State<SliderBelow1> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  Widget _buildMiniAppCard(List<Map<String, String>> apps) {
    return Card(
      elevation: 2,
      child: Container(
        height: 240,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            for (int i = 0; i < apps.length; i += 4)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (j) {
                  final index = i + j;
                  if (index >= apps.length) return SizedBox();
                  final app = apps[index];
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: app['image'] == 'more'
                                  ? Icon(Icons.more_horiz)
                                  : Image.asset(
                                      app['image']!,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        app['label']!,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  );
                }),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator(int pageIndex) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: _currentPage == pageIndex ? Colors.green : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<List<Map<String, String>>> allPages = [
      [
        {"label": "Onic", "image": "assets/pngs/onic.png"},
        {"label": "Savour Foods", "image": "assets/pngs/savour_food.jpg"},
        {"label": "Tapmat", "image": "assets/pngs/Tapmat.jpg"},
        {"label": "AI Mazeen", "image": "assets/pngs/mazeen.png"},
        {"label": "Habib", "image": "assets/pngs/Habib.png"},
        {"label": "Book Me", "image": "assets/pngs/Bookme.png"},
        {"label": "Esport", "image": "assets/pngs/E_sport.jpg"},
        {"label": "More", "image": "more"},
      ],
      [ {"label": "Book Me", "image": "assets/pngs/Bookme.png"},
        {"label": "Esport", "image": "assets/pngs/E_sport.jpg"},
        {"label": "Onic", "image": "assets/pngs/onic.png"},
        
        {"label": "AI Mazeen", "image": "assets/pngs/mazeen.png"},
        {"label": "Habib", "image": "assets/pngs/Habib.png"},
        {"label": "Savour Foods", "image": "assets/pngs/savour_food.jpg"},
        {"label": "Tapmat", "image": "assets/pngs/Tapmat.jpg"},
        
        {"label": "More", "image": "more"},], 
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Discover MiniApps on easypaisa",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: allPages.map((apps) => _buildMiniAppCard(apps)).toList(),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(allPages.length, (index) => _buildPageIndicator(index)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
