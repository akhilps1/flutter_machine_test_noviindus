// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_machine_test/domain/register/models/treatment.dart';

class TreatmentItem {
  TreatmentItem({
    required this.femails,
    required this.males,
    required this.treatment,
    this.id,
  });

  final Treatment treatment;
  final int males;
  final int femails;
  final int? id;

  TreatmentItem copyWith({
    Treatment? treatment,
    int? males,
    int? femails,
  }) {
    return TreatmentItem(
      treatment: treatment ?? this.treatment,
      males: males ?? this.males,
      femails: femails ?? this.femails,
    );
  }
}
