import 'package:cl_draw/models/tournament.dart';
import 'package:flutter/material.dart';

class TourDetailsScreen extends StatelessWidget {
  const TourDetailsScreen({
    super.key,
    required this.tournament,
  });

  final Tournament tournament;

  @override
  Widget build(BuildContext context) {
    const totalTeams = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
    ];
    return Scaffold(
      appBar: AppBar(title: Text(tournament.name)),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              Center(
                child: Text(
                  'Qualifying Teams',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context).colorScheme.error,
                        backgroundColor: Colors.amberAccent,
                      ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  for (final team in totalTeams)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Group $team',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.restart_alt_outlined),
                              )
                            ],
                          ),
                          //const Divider(color: Colors.red),
                          Table(
                            border: TableBorder.all(),
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            columnWidths: const <int, TableColumnWidth>{
                              0: FixedColumnWidth(40),
                              1: FixedColumnWidth(40),
                              2: FixedColumnWidth(280),
                            },
                            children: [
                              TableRow(
                                children: [
                                  Container(
                                    //margin: EdgeInsets.all(10),
                                    height: 40,
                                    width: 30,
                                    alignment: Alignment.center,
                                    child: TableCell(
                                      child: Text(
                                        '1',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const TableCell(
                                    child: Icon(Icons.place,
                                        color: Colors.redAccent),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: TableRowInkWell(
                                      child: Text(
                                        'Group $team - First Team',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Container(
                                    //margin: EdgeInsets.all(10),
                                    height: 40,
                                    width: 30,
                                    alignment: Alignment.center,
                                    child: TableCell(
                                      child: Text(
                                        '2',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const TableCell(
                                    child: Icon(Icons.place,
                                        color: Colors.redAccent),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: TableRowInkWell(
                                      child: Text(
                                        'Group $team - Second Team',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
