import 'package:cl_draw/data/tour_type_data.dart';
import 'package:cl_draw/models/tour_type.dart';
import 'package:cl_draw/models/tournament.dart';

final tourData = [
  Tournament(
    id: '0',
    name: 'Champions League 23/24',
    tourType: tourTypes[TourTypes.championsLeague]!,
    description: [
      'The UEFA Champions League is UEFA\'s elite club competition with top',
      'clubs across the continent playing for the right to be crowned',
      'European champions. The tournament, then called the European Cup,',
      'began in 1955/56 with 16 sides taking part.',
    ],
    startDate: DateTime(2023, 9, 19),
    endDate: DateTime(2024, 7, 1),
    withGroupStage: false,
  ),
  Tournament(
    id: '1',
    name: 'Champions League 22/23',
    tourType: tourTypes[TourTypes.championsLeague]!,
    description: [
      'The UEFA Champions League is UEFA\'s elite club competition with top',
      'clubs across the continent playing for the right to be crowned',
      'European champions. The tournament, then called the European Cup,',
      'began in 1955/56 with 16 sides taking part.',
    ],
    startDate: DateTime(2022, 9, 19),
    endDate: DateTime(2023, 7, 1),
    withGroupStage: true,
  ),
  Tournament(
    id: '2',
    name: 'World Cup 2022',
    tourType: tourTypes[TourTypes.worldCup]!,
    description: [
      'The 2022 FIFA World Cup was the 22nd FIFA World Cup,',
      'the world championship for national football teams',
      'organized by FIFA. It took place in Qatar from 20 November ',
      'to 18 December 2022, after the country was awarded',
      'the hosting rights in 2010. It was the first World Cup to be held',
      'in the Arab world and Muslim world, and the second ',
      'held entirely in Asia after the 2002 tournament in South Korea and Japan.',
    ],
    startDate: DateTime(2022, 9, 19),
    endDate: DateTime(2022, 10, 19),
    withGroupStage: false,
  ),
  Tournament(
    id: '3',
    name: 'EURO 2024',
    tourType: tourTypes[TourTypes.euro]!,
    description: [
      'The 2024 UEFA European Football Championship, commonly referred',
      'to as UEFA Euro 2024 (stylised as UEFA EURO 2024) or simply',
      'Euro 2024, will be the 17th edition of the UEFA European Championship, ',
      'the quadrennial international football championship organised',
      'by UEFA for the men\'s national teams of its member associations. ',
      'Germany will host the tournament, which is scheduled to take place from 14',
      ' June to 14 July 2024.',
    ],
    startDate: DateTime(2024, 9, 19),
    endDate: DateTime(2024, 10, 19),
    withGroupStage: false,
  ),
];
