import 'package:rms_flutter/model/table.dart';
import 'package:rms_flutter/model/user.dart';

class TableBooking {
  int? id;
  String? status;
  String? approvalDate;
  String? bookingDate;
  User? bookedBy;
  TableModel? tables;
  User? approvedBy;

  TableBooking(
      {this.id,
        this.status,
        this.approvalDate,
        this.bookingDate,
        this.bookedBy,
        this.tables,
        this.approvedBy});

  TableBooking.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    approvalDate = json['approvalDate'];
    bookingDate = json['bookingDate'];
    bookedBy = json['bookedBy'] != null
        ? new User.fromJson(json['bookedBy'])
        : null;
    tables =
    json['tables'] != null ? new TableModel.fromJson(json['tables']) : null;
    approvedBy = json['approvedBy'] != null
        ? new User.fromJson(json['approvedBy'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['approvalDate'] = this.approvalDate;
    data['bookingDate'] = this.bookingDate;
    if (this.bookedBy != null) {
      data['bookedBy'] = this.bookedBy!.toJson();
    }
    if (this.tables != null) {
      data['tables'] = this.tables!.toJson();
    }
    if (this.approvedBy != null) {
      data['approvedBy'] = this.approvedBy!.toJson();
    }
    return data;
  }
}