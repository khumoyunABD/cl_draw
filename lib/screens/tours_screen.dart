import 'package:cl_draw/models/tournament.dart';
import 'package:cl_draw/screens/tour_details_screen.dart';
import 'package:cl_draw/widgets/tour_item.dart';
import 'package:flutter/material.dart';

class ToursScreen extends StatelessWidget {
  const ToursScreen({
    super.key,
    required this.tourList,
    required this.tourName,
  });

  final List<Tournament> tourList;
  final String tourName;

  @override
  Widget build(BuildContext context) {
    void selectTour(BuildContext context, Tournament tournament) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => TourDetailsScreen(
            tournament: tournament,
          ),
        ),
      );
    }

    Widget content = Center(
      child: Text(
        'No entry is available for this tournament!',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );

    if (tourList.isNotEmpty) {
      content = ListView.builder(
        itemCount: tourList.length,
        itemBuilder: (ctx, index) => TourItem(
          tournament: tourList[index],
          onSelectTour: (tournament) {
            selectTour(context, tournament);
          },
        ),
      );
    }

    // Widget content = ListView.builder(
    //   itemCount: tourList.length,
    //   itemBuilder: (ctx, index) => TourItem(
    //     tournament: tourList[index],
    //     onSelectTour: (tournament) {
    //       selectTour(context, tournament);
    //     },
    //   ),
    // );

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.outlineVariant,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.outlineVariant,
        title: Text(
          tourName,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        centerTitle: true,
      ),
      body: content,
    );
  }
}
