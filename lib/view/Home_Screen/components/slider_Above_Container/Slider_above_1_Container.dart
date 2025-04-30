import 'package:flutter/material.dart';

class SliderAbove1Container extends StatefulWidget {
  const SliderAbove1Container({super.key});

  @override
  State<SliderAbove1Container> createState() => _SliderAbove1ContainerState();
}

class _SliderAbove1ContainerState extends State<SliderAbove1Container> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  Widget _buildFeatureCard(List<List<Map<String, dynamic>>> data) {
    return Card(
      elevation: 2,
      child: Container(
        height: 270,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(13),
        child: Column(
          children: data.map((row) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: row.map((item) {
                  return Expanded(child: _buildIconColumn(item['icon'], item['labels']));
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildIconColumn(IconData icon, List<String> labels) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0), 
    child: Column(
      children: [
        Icon(icon),
        for (var label in labels)
          Text(
            label,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )
      ],
    ),
  );
}


  Widget _buildPageIndicator(int pageIndex) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: _currentPage == pageIndex ? Colors.green : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    final slide1 = [
      [
        {'icon': Icons.mobile_friendly_outlined, 'labels': ['Easyload']},
        {'icon': Icons.attach_money_rounded, 'labels': ['Easycash', 'Loan']},
        {'icon': Icons.savings, 'labels': ['Savings', 'Pocket']},
        {'icon': Icons.person, 'labels': ['Invite & Earn']},
      ],
      [
        {'icon': Icons.domain_verification_rounded, 'labels': ['Donations']},
        {'icon': Icons.money, 'labels': ['Term Deposit']},
        {'icon': Icons.generating_tokens, 'labels': ['Daily Rewards']},
        {'icon': Icons.mobile_friendly_outlined, 'labels': ['Buy Now Pay', 'Later']},
      ],
      [
        {'icon': Icons.umbrella_outlined, 'labels': ['Insurance', 'Marketplace']},
        {'icon': Icons.on_device_training_rounded, 'labels': ['M-Tag']},
        {'icon': Icons.monetization_on, 'labels': ['Rs.1 Game']},
        {'icon': Icons.more_horiz_sharp, 'labels': ['See All']},
      ],
    ];

    
    final slide2 = [
      [
        {'icon': Icons.receipt_long, 'labels': ['Bill', 'Payment']},
        {'icon': Icons.local_shipping, 'labels': ['Track', 'Parcel']},
        {'icon': Icons.videogame_asset, 'labels': ['Gaming']},
        {'icon': Icons.lightbulb_outline, 'labels': ['Tips & Tricks']},
      ],
      [
        {'icon': Icons.card_giftcard, 'labels': ['Gift', 'Cards']},
        {'icon': Icons.qr_code_2, 'labels': ['Scan & Pay']},
        {'icon': Icons.flight, 'labels': ['Travel']},
        {'icon': Icons.local_hospital, 'labels': ['Health', 'Insurance']},
      ],
      [
        {'icon': Icons.school, 'labels': ['Education']},
        {'icon': Icons.campaign, 'labels': ['Promotions']},
        {'icon': Icons.lock, 'labels': ['Security']},
        {'icon': Icons.thumb_up, 'labels': ['Feedback']},
      ],
    ];

    return Column(
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "More with easypaisa",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 5),

        // Slider with PageView
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 270,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildFeatureCard(slide1),
                _buildFeatureCard(slide2),
              ],
            ),
          ),
        ),

        // Page Indicators (dots)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPageIndicator(0),
            _buildPageIndicator(1),
          ],
        ),
      ],
    );
  }
}
