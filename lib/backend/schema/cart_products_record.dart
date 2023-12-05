import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartProductsRecord extends FirestoreRecord {
  CartProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "products" field.
  DocumentReference? _products;
  DocumentReference? get products => _products;
  bool hasProducts() => _products != null;

  void _initializeFields() {
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _products = snapshotData['products'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cartProducts');

  static Stream<CartProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartProductsRecord.fromSnapshot(s));

  static Future<CartProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartProductsRecord.fromSnapshot(s));

  static CartProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartProductsRecordData({
  double? subTotal,
  int? quantity,
  DocumentReference? products,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subTotal': subTotal,
      'quantity': quantity,
      'products': products,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartProductsRecordDocumentEquality
    implements Equality<CartProductsRecord> {
  const CartProductsRecordDocumentEquality();

  @override
  bool equals(CartProductsRecord? e1, CartProductsRecord? e2) {
    return e1?.subTotal == e2?.subTotal &&
        e1?.quantity == e2?.quantity &&
        e1?.products == e2?.products;
  }

  @override
  int hash(CartProductsRecord? e) =>
      const ListEquality().hash([e?.subTotal, e?.quantity, e?.products]);

  @override
  bool isValidKey(Object? o) => o is CartProductsRecord;
}
