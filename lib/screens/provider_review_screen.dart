import 'package:flutter/material.dart';
import 'package:home_hub/main.dart';
import 'package:home_hub/utils/images.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../custom_widget/space.dart';
import '../models/renovate_services_model.dart';
import '../utils/colors.dart';

class ProviderReview extends StatefulWidget {
  final int index;

  const ProviderReview({Key? key, required this.index}) : super(key: key);

  @override
  State<ProviderReview> createState() => _ProviderReviewState();
}

class _ProviderReviewState extends State<ProviderReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: customAppbarColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: appData.isDark ? whiteColor : blackColor),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(renovateServices[widget.index].imagePath!,
                  fit: BoxFit.cover),
            ),
            centerTitle: true,
            title: Text(
              renovateServices[widget.index].title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(painter1, fit: BoxFit.cover)),
                      ),
                      Space(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Aji Effendy",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                          SmoothStarRating(
                            allowHalfRating: false,
                            starCount: 5,
                            rating: 4.5,
                            size: 20.0,
                            color: yellowColor,
                            borderColor: yellowColor,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            spacing: .5,
                          )
                        ],
                      ),
                    ],
                  ),
                  Space(16),
                  Text("Tanggal dan Waktu",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                  Space(4),
                  Text(
                    "04 Nov 2024 pukul 18",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: subTitle, fontSize: 14),
                  ),
                  Space(16),
                  Text("Detail Ulasan",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                  Text(
                    "Ulasan daring—baik positif maupun negatif—dapat memengaruhi lebih dari 93% keputusan konsumen. Meskipun ulasan dapat terkumpul dengan sendirinya, ulasan tersebut tidak boleh ada begitu saja. Mengetahui cara meminta ulasan, memanfaatkannya untuk mendapatkan lebih banyak bisnis, dan menanggapi testimoni pelanggan yang kurang baik dapat meningkatkan citra bisnis Anda dan mendatangkan lebih banyak pelanggan tetap.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: subTitle, fontSize: 14),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
