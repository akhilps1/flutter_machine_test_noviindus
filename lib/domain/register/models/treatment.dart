// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_machine_test/domain/patient/model/patient.dart';

part 'treatment.g.dart';

@JsonSerializable()
class Treatment extends ObjectWithName {
  @override
  String? name;
  @override
  int? id;
  List<Branch>? branches;
  String? duration;
  String? price;
  @JsonKey(name: 'is_active')
  bool? isActive;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Treatment({
    this.id,
    this.branches,
    this.name,
    this.duration,
    this.price,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  @override
  String toString() {
    return 'Treatment(id: $id, branches: $branches, name: $name, duration: $duration, price: $price, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  factory Treatment.fromJson(Map<String, dynamic> json) {
    return _$TreatmentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TreatmentToJson(this);

  Treatment copyWith({
    String? name,
    int? id,
    List<Branch>? branches,
    String? duration,
    String? price,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Treatment(
      name: name ?? this.name,
      id: id ?? this.id,
      branches: branches ?? this.branches,
      duration: duration ?? this.duration,
      price: price ?? this.price,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

abstract class ObjectWithName {
  String? get name;
  int? get id;
}
