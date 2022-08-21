// To parse this JSON data, do
//
//     final itemsInventory = itemsInventoryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ItemsInventory itemsInventoryFromJson(String str) =>
    ItemsInventory.fromJson(json.decode(str));

String itemsInventoryToJson(ItemsInventory data) => json.encode(data.toJson());

class ItemsInventory {
  ItemsInventory({
    required this.data,
  });

  List<Datum> data;

  factory ItemsInventory.fromJson(Map<String, dynamic> json) => ItemsInventory(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.paymentId,
    required this.customerId,
    required this.price,
    required this.category,
    required this.imageOfDesign,
    required this.color,
    required this.size,
    required this.qunatity,
    required this.orderedOn,
    required this.inProgressStatus,
    required this.orderCompletedStatus,
    required this.addressOfDelivery,
    required this.dispatchDate,
    required this.dispatchStatus,
    required this.orderDeliveredOn,
    required this.sellerId,
    required this.cancelStatus,
    required this.returnStatus,
    required this.dateOfCancel,
    required this.dateOfReturn,
    required this.dateOfRefund,
  });

  String id;
  String paymentId;
  String customerId;
  int price;
  String category;
  String imageOfDesign;
  String color;
  String size;
  int qunatity;
  DateTime orderedOn;
  bool inProgressStatus;
  bool orderCompletedStatus;
  String addressOfDelivery;
  DateTime dispatchDate;
  bool dispatchStatus;
  DateTime orderDeliveredOn;
  String sellerId;
  bool cancelStatus;
  bool returnStatus;
  DateTime dateOfCancel;
  DateTime dateOfReturn;
  DateTime dateOfRefund;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        paymentId: json["payment_id"],
        customerId: json["customer_id"],
        price: json["price"],
        category: json["category"],
        imageOfDesign: json["image_of_design"],
        color: json["color"],
        size: json["size"],
        qunatity: json["qunatity"],
        orderedOn: DateTime.parse(json["ordered_on"]),
        inProgressStatus: json["in_progress_status"],
        orderCompletedStatus: json["order_completed_status"],
        addressOfDelivery: json["address_of_delivery"],
        dispatchDate: DateTime.parse(json["dispatch_date"]),
        dispatchStatus: json["dispatch_status"],
        orderDeliveredOn: DateTime.parse(json["order_delivered_on"]),
        sellerId: json["seller_id"],
        cancelStatus: json["cancel_status"],
        returnStatus: json["return_status"],
        dateOfCancel: DateTime.parse(json["date_of_cancel"]),
        dateOfReturn: DateTime.parse(json["date_of_return"]),
        dateOfRefund: DateTime.parse(json["date_of_refund"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "payment_id": paymentId,
        "customer_id": customerId,
        "price": price,
        "category": category,
        "image_of_design": imageOfDesign,
        "color": color,
        "size": size,
        "qunatity": qunatity,
        "ordered_on": orderedOn.toIso8601String(),
        "in_progress_status": inProgressStatus,
        "order_completed_status": orderCompletedStatus,
        "address_of_delivery": addressOfDelivery,
        "dispatch_date": dispatchDate.toIso8601String(),
        "dispatch_status": dispatchStatus,
        "order_delivered_on":
            "${orderDeliveredOn.year.toString().padLeft(4, '0')}-${orderDeliveredOn.month.toString().padLeft(2, '0')}-${orderDeliveredOn.day.toString().padLeft(2, '0')}",
        "seller_id": sellerId,
        "cancel_status": cancelStatus,
        "return_status": returnStatus,
        "date_of_cancel":
            "${dateOfCancel.year.toString().padLeft(4, '0')}-${dateOfCancel.month.toString().padLeft(2, '0')}-${dateOfCancel.day.toString().padLeft(2, '0')}",
        "date_of_return":
            "${dateOfReturn.year.toString().padLeft(4, '0')}-${dateOfReturn.month.toString().padLeft(2, '0')}-${dateOfReturn.day.toString().padLeft(2, '0')}",
        "date_of_refund":
            "${dateOfRefund.year.toString().padLeft(4, '0')}-${dateOfRefund.month.toString().padLeft(2, '0')}-${dateOfRefund.day.toString().padLeft(2, '0')}",
      };
}
