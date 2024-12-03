import 'package:flutter/material.dart';
import 'package:home_hub/custom_widget/space.dart';
import 'package:home_hub/models/combos_services_model.dart';
import 'package:home_hub/screens/service_screen.dart';

class CombosSubscriptionsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8),
        scrollDirection: Axis.horizontal,
        children: List.generate(
          combosServices.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ServiceScreen(index: index)),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: SizedBox(
                      width: 170,
                      height: 100,
                      child: Image.asset(
                        combosServices[index].imagePath!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Flexible(
                    child: Text(
                      combosServices[index].title,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
