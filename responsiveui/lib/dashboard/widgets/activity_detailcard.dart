import 'package:flutter/material.dart';
import 'package:responsiveui/dashboard/data/health_details_data.dart';
import 'package:responsiveui/dashboard/widgets/custom_card.dart';

class ActivityDetailCard extends StatefulWidget {
  const ActivityDetailCard({super.key});

  @override
  State<ActivityDetailCard> createState() => _ActivityDetailCardState();
}

class _ActivityDetailCardState extends State<ActivityDetailCard> {
  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetailsData();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                healthDetails.healthData[index].value,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
