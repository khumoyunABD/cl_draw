import 'package:cl_draw/models/tournament.dart';
import 'package:flutter/material.dart';

class TourItem extends StatelessWidget {
  const TourItem({
    super.key,
    required this.tournament,
    required this.onSelectTour,
  });

  final Tournament tournament;
  final void Function(Tournament tournament) onSelectTour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          style: ListTileStyle.drawer,
          onTap: () {
            onSelectTour(tournament);
          },
          leading: tournament.tourType.image,
          horizontalTitleGap: 0,
          title: Center(
            child: Text(
              tournament.name,
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
