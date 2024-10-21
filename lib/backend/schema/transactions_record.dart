import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  String? get accountId;

  String? get transactionId;

  DateTime? get postingDateTime;

  DateTime? get executionDateTime;

  double? get amount;

  String? get currency;

  String? get transactionReference;

  String? get transactionMerchant;

  String? get transactionCategory;

  String? get type;

  String? get merchantName;

  String? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..accountId = ''
    ..transactionId = ''
    ..amount = 0.0
    ..currency = ''
    ..transactionReference = ''
    ..transactionMerchant = ''
    ..transactionCategory = ''
    ..type = ''
    ..merchantName = ''
    ..status = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('transactions')
          : FirebaseFirestore.instance.collectionGroup('transactions');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('transactions').doc();

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransactionsRecordData({
  String? accountId,
  String? transactionId,
  DateTime? postingDateTime,
  DateTime? executionDateTime,
  double? amount,
  String? currency,
  String? transactionReference,
  String? transactionMerchant,
  String? transactionCategory,
  String? type,
  String? merchantName,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    TransactionsRecord.serializer,
    TransactionsRecord(
      (t) => t
        ..accountId = accountId
        ..transactionId = transactionId
        ..postingDateTime = postingDateTime
        ..executionDateTime = executionDateTime
        ..amount = amount
        ..currency = currency
        ..transactionReference = transactionReference
        ..transactionMerchant = transactionMerchant
        ..transactionCategory = transactionCategory
        ..type = type
        ..merchantName = merchantName
        ..status = status,
    ),
  );

  return firestoreData;
}
