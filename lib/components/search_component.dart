import 'package:flutter/material.dart';
import 'package:home_hub/custom_widget/space.dart';
import 'package:home_hub/models/services_model.dart';
import 'package:home_hub/screens/service_providers_screen.dart';
import 'package:home_hub/utils/colors.dart';

class SearchComponent extends StatelessWidget {
  final ServicesModel? servicesModel;
  final int index;

  SearchComponent(this.index, {this.servicesModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ServiceProvidersScreen(index: index)),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Card(
          color: transparent,
          elevation: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  servicesModel!.serviceImage,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              Space(16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      servicesModel!.serviceName,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Space(4),
                    Text(
                      servicesModel!.shortDescription,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
