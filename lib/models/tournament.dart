import 'package:cl_draw/models/tour_type.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Tournament {
  Tournament({
    required this.id,
    required this.name,
    required this.tourType,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.withGroupStage,
  });

  final String id;
  final String name;
  final TourType tourType;
  final bool withGroupStage;
  final List<String> description;
  final DateTime startDate;
  final DateTime endDate;

  String get formattedStartDate {
    return formatter.format(startDate);
  }

  String get formattedEndDate {
    return formatter.format(endDate);
  }
}
