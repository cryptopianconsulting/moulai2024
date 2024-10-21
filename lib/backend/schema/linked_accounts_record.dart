import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'linked_accounts_record.g.dart';

abstract class LinkedAccountsRecord
    implements Built<LinkedAccountsRecord, LinkedAccountsRecordBuilder> {
  static Serializer<LinkedAccountsRecord> get serializer =>
      _$linkedAccountsRecordSerializer;

  String? get accountType;

  String? get accountStatus;

  String? get accountNumber;

  String? get currentBalance;

  String? get currency;

  String? get bsb;

  String? get providerName;

  String? get externalId;

  bool? get isSelected;

  String? get id;

  String? get index;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(LinkedAccountsRecordBuilder builder) => builder
    ..accountType = ''
    ..accountStatus = ''
    ..accountNumber = ''
    ..currentBalance = ''
    ..currency = ''
    ..bsb = ''
    ..providerName = ''
    ..externalId = ''
    ..isSelected = false
    ..id = ''
    ..index = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('linkedAccounts')
          : FirebaseFirestore.instance.collectionGroup('linkedAccounts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('linkedAccounts').doc();

  static Stream<LinkedAccountsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LinkedAccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LinkedAccountsRecord._();
  factory LinkedAccountsRecord(
          [void Function(LinkedAccountsRecordBuilder) updates]) =
      _$LinkedAccountsRecord;

  static LinkedAccountsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLinkedAccountsRecordData({
  String? accountType,
  String? accountStatus,
  String? accountNumber,
  String? currentBalance,
  String? currency,
  String? bsb,
  String? providerName,
  String? externalId,
  bool? isSelected,
  String? id,
  String? index,
}) {
  final firestoreData = serializers.toFirestore(
    LinkedAccountsRecord.serializer,
    LinkedAccountsRecord(
      (l) => l
        ..accountType = accountType
        ..accountStatus = accountStatus
        ..accountNumber = accountNumber
        ..currentBalance = currentBalance
        ..currency = currency
        ..bsb = bsb
        ..providerName = providerName
        ..externalId = externalId
        ..isSelected = isSelected
        ..id = id
        ..index = index,
    ),
  );

  return firestoreData;
}
