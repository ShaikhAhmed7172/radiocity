import 'package:flutter/material.dart';

class FeaturedPodcasts extends StatelessWidget {
  final List<String> imgList = [
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/chhoti-chhoti-love-stories-podcast-new1-500-x-700ll.png',
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/kpbk-500x700ll.jpg',
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/gaam-gapata-500-x-700ll.jpg',
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/500x700-Tere-Mere-Darmiyaanll.jpg',
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/td-500x700ll.png',
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/500x700-Character-Disectorll.jpg',
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/mdbk-500x700ll.png',
    'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/500x700-4MB-Zindagill.jpg',
  ];

  final List<String> titles = [
    'Ghasita',
    'Funda Garam',
    'Popat',
    'Ghasita Again',
    'Maa Leela',
    'Popat Again',
    'Something',
    'Some More',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FEATURED PODCASTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.95),
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      imgList[index],
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
