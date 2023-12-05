import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double sumTotal(
  double valueSubtotal,
  double price,
) {
  valueSubtotal = (valueSubtotal + price);
  return valueSubtotal;
}

double subTotal(
  double valueSubtotal,
  double price,
) {
  if (valueSubtotal > 0) {
    valueSubtotal = valueSubtotal - price;
  }
  return valueSubtotal;
}

double totalList(List<double> subTotal) {
  double total = 0;
  for (double add in subTotal) {
    total += add;
  }
  return total;
}

double calcTotal(
  double price,
  int quantity,
) {
  return price * quantity;
}
