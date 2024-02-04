import 'package:flutter_machine_test/domain/register/models/treatment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient.g.dart';

@JsonSerializable()
class Patient {
  int? id;
  @JsonKey(name: 'patientdetails_set')
  List<Patientdetails>? patientdetailsSet;
  Branch? branch;
  String? user;
  String? payment;
  String? name;
  String? phone;
  String? address;
  dynamic price;
  @JsonKey(name: 'total_amount')
  int? totalAmount;
  @JsonKey(name: 'discount_amount')
  int? discountAmount;
  @JsonKey(name: 'advance_amount')
  int? advanceAmount;
  @JsonKey(name: 'balance_amount')
  int? balanceAmount;
  @JsonKey(name: 'date_nd_time')
  String? dateNdTime;
  @JsonKey(name: 'is_active')
  bool? isActive;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Patient({
    this.id,
    this.patientdetailsSet,
    this.branch,
    this.user,
    this.payment,
    this.name,
    this.phone,
    this.address,
    this.price,
    this.totalAmount,
    this.discountAmount,
    this.advanceAmount,
    this.balanceAmount,
    this.dateNdTime,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  @override
  String toString() {
    return 'Patient(id: $id, patientdetailsSet: $patientdetailsSet, branch: $branch, user: $user, payment: $payment, name: $name, phone: $phone, address: $address, price: $price, totalAmount: $totalAmount, discountAmount: $discountAmount, advanceAmount: $advanceAmount, balanceAmount: $balanceAmount, dateNdTime: $dateNdTime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  factory Patient.fromJson(Map<String, dynamic> json) {
    return _$PatientFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientToJson(this);
}

@JsonSerializable()
class Patientdetails {
  int? id;
  int? male;
  int? female;
  int? patient;
  int? treatment;
  @JsonKey(name: 'treatment_name')
  String? treatmentName;

  Patientdetails({
    this.id,
    this.male,
    this.female,
    this.patient,
    this.treatment,
    this.treatmentName,
  });

  @override
  String toString() {
    return 'Patientdetails(id: $id, male: $male, female: $female, patient: $patient, treatment: $treatment, treatmentName: $treatmentName)';
  }

  factory Patientdetails.fromJson(Map<String, dynamic> json) {
    return _$PatientdetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PatientdetailsToJson(this);
}

@JsonSerializable()
class Branch extends ObjectWithName {
  @override
  String? name;
  @override
  int? id;
  @JsonKey(name: 'patients_count')
  int? patientsCount;
  String? location;
  String? phone;
  String? mail;
  String? address;
  String? gst;
  @JsonKey(name: 'is_active')
  bool? isActive;

  Branch({
    this.id,
    this.name,
    this.patientsCount,
    this.location,
    this.phone,
    this.mail,
    this.address,
    this.gst,
    this.isActive,
  });

  @override
  String toString() {
    return 'Branch(id: $id, name: $name, patientsCount: $patientsCount, location: $location, phone: $phone, mail: $mail, address: $address, gst: $gst, isActive: $isActive)';
  }

  factory Branch.fromJson(Map<String, dynamic> json) {
    return _$BranchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}
