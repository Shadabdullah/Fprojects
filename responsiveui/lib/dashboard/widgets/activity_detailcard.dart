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
    final healthDetailData = HealthDetailsData();
    return GridView.builder(
      itemCount: healthDetailData.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 12),
      itemBuilder: (context, index) => CustomCard(
        child: Container(),
      ),
    );
  }
}
