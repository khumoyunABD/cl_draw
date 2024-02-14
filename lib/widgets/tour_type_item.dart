import 'package:cl_draw/models/tournament.dart';
import 'package:flutter/material.dart';

class TourTypeItem extends StatelessWidget {
  const TourTypeItem({
    super.key,
    required this.tournamentList,
    required this.onSelectTour,
    required this.tourName,
    required this.tourImage,
  });

  final List<Tournament> tournamentList;
  final void Function(List<Tournament> tournament) onSelectTour;
  final String tourName;
  final Image tourImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          style: ListTileStyle.drawer,
          onTap: () {
            onSelectTour(tournamentList);
          },
          leading: tourImage,
          horizontalTitleGap: 0,
          title: Center(
            child: Text(
              tourName,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ),
        ),
        Divider(
          thickness: 5,
          endIndent: 15,
          height: 25,
          indent: 15,
          color: Theme.of(context).dividerColor,
        ),
      ],
    );
  }
}
