import 'package:flutter/material.dart';
import 'package:home_hub/custom_widget/space.dart';
import 'package:home_hub/models/customer_review_model.dart';
import 'package:home_hub/utils/colors.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class CustomerReviewComponent extends StatelessWidget {
  final CustomerReviewModel? customerReviewModel;

  CustomerReviewComponent({this.customerReviewModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Pastikan ukuran menyesuaikan konten
            crossAxisAlignment:
                CrossAxisAlignment.start, // Supaya konten sejajar kiri
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 20,
                    backgroundImage:
                        AssetImage(customerReviewModel!.customerImage),
                  ),
                  Space(8),
                  Expanded(
                    // Pastikan area teks dapat menyesuaikan
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          customerReviewModel!.customerName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Space(4),
                        SmoothStarRating(
                          allowHalfRating: false,
                          starCount: 5,
                          rating: customerReviewModel!.rating,
                          size: 16.0,
                          color: yellowColor,
                          borderColor: yellowColor,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          spacing: .5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Space(8),
              Flexible(
                // Membatasi teks untuk menghindari overflow
                child: Text(
                  customerReviewModel!.detailReview,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
