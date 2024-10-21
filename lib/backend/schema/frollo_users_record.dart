import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'frollo_users_record.g.dart';

abstract class FrolloUsersRecord
    implements Built<FrolloUsersRecord, FrolloUsersRecordBuilder> {
  static Serializer<FrolloUsersRecord> get serializer =>
      _$frolloUsersRecordSerializer;

  String? get uid;

  String? get userName;

  String? get password;

  String? get clientId;

  String? get grantType;

  bool? get tokenCreate;

  bool? get refreshLinkedAccounts;

  String? get domain;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FrolloUsersRecordBuilder builder) => builder
    ..uid = ''
    ..userName = ''
    ..password = ''
    ..clientId = ''
    ..grantType = ''
    ..tokenCreate = false
    ..refreshLinkedAccounts = false
    ..domain = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FrolloUsers');

  static Stream<FrolloUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FrolloUsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FrolloUsersRecord._();
  factory FrolloUsersRecord([void Function(FrolloUsersRecordBuilder) updates]) =
      _$FrolloUsersRecord;

  static FrolloUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFrolloUsersRecordData({
  String? uid,
  String? userName,
  String? password,
  String? clientId,
  String? grantType,
  bool? tokenCreate,
  bool? refreshLinkedAccounts,
  String? domain,
}) {
  final firestoreData = serializers.toFirestore(
    FrolloUsersRecord.serializer,
    FrolloUsersRecord(
      (f) => f
        ..uid = uid
        ..userName = userName
        ..password = password
        ..clientId = clientId
        ..grantType = grantType
        ..tokenCreate = tokenCreate
        ..refreshLinkedAccounts = refreshLinkedAccounts
        ..domain = domain,
    ),
  );

  return firestoreData;
}
