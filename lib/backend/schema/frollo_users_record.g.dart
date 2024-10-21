// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frollo_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FrolloUsersRecord> _$frolloUsersRecordSerializer =
    new _$FrolloUsersRecordSerializer();

class _$FrolloUsersRecordSerializer
    implements StructuredSerializer<FrolloUsersRecord> {
  @override
  final Iterable<Type> types = const [FrolloUsersRecord, _$FrolloUsersRecord];
  @override
  final String wireName = 'FrolloUsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FrolloUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientId;
    if (value != null) {
      result
        ..add('clientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grantType;
    if (value != null) {
      result
        ..add('grantType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokenCreate;
    if (value != null) {
      result
        ..add('tokenCreate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.refreshLinkedAccounts;
    if (value != null) {
      result
        ..add('refreshLinkedAccounts')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.domain;
    if (value != null) {
      result
        ..add('domain')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FrolloUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FrolloUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grantType':
          result.grantType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tokenCreate':
          result.tokenCreate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'refreshLinkedAccounts':
          result.refreshLinkedAccounts = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'domain':
          result.domain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FrolloUsersRecord extends FrolloUsersRecord {
  @override
  final String? uid;
  @override
  final String? userName;
  @override
  final String? password;
  @override
  final String? clientId;
  @override
  final String? grantType;
  @override
  final bool? tokenCreate;
  @override
  final bool? refreshLinkedAccounts;
  @override
  final String? domain;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FrolloUsersRecord(
          [void Function(FrolloUsersRecordBuilder)? updates]) =>
      (new FrolloUsersRecordBuilder()..update(updates))._build();

  _$FrolloUsersRecord._(
      {this.uid,
      this.userName,
      this.password,
      this.clientId,
      this.grantType,
      this.tokenCreate,
      this.refreshLinkedAccounts,
      this.domain,
      this.ffRef})
      : super._();

  @override
  FrolloUsersRecord rebuild(void Function(FrolloUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FrolloUsersRecordBuilder toBuilder() =>
      new FrolloUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FrolloUsersRecord &&
        uid == other.uid &&
        userName == other.userName &&
        password == other.password &&
        clientId == other.clientId &&
        grantType == other.grantType &&
        tokenCreate == other.tokenCreate &&
        refreshLinkedAccounts == other.refreshLinkedAccounts &&
        domain == other.domain &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, grantType.hashCode);
    _$hash = $jc(_$hash, tokenCreate.hashCode);
    _$hash = $jc(_$hash, refreshLinkedAccounts.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FrolloUsersRecord')
          ..add('uid', uid)
          ..add('userName', userName)
          ..add('password', password)
          ..add('clientId', clientId)
          ..add('grantType', grantType)
          ..add('tokenCreate', tokenCreate)
          ..add('refreshLinkedAccounts', refreshLinkedAccounts)
          ..add('domain', domain)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FrolloUsersRecordBuilder
    implements Builder<FrolloUsersRecord, FrolloUsersRecordBuilder> {
  _$FrolloUsersRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _grantType;
  String? get grantType => _$this._grantType;
  set grantType(String? grantType) => _$this._grantType = grantType;

  bool? _tokenCreate;
  bool? get tokenCreate => _$this._tokenCreate;
  set tokenCreate(bool? tokenCreate) => _$this._tokenCreate = tokenCreate;

  bool? _refreshLinkedAccounts;
  bool? get refreshLinkedAccounts => _$this._refreshLinkedAccounts;
  set refreshLinkedAccounts(bool? refreshLinkedAccounts) =>
      _$this._refreshLinkedAccounts = refreshLinkedAccounts;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FrolloUsersRecordBuilder() {
    FrolloUsersRecord._initializeBuilder(this);
  }

  FrolloUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _userName = $v.userName;
      _password = $v.password;
      _clientId = $v.clientId;
      _grantType = $v.grantType;
      _tokenCreate = $v.tokenCreate;
      _refreshLinkedAccounts = $v.refreshLinkedAccounts;
      _domain = $v.domain;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FrolloUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FrolloUsersRecord;
  }

  @override
  void update(void Function(FrolloUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FrolloUsersRecord build() => _build();

  _$FrolloUsersRecord _build() {
    final _$result = _$v ??
        new _$FrolloUsersRecord._(
            uid: uid,
            userName: userName,
            password: password,
            clientId: clientId,
            grantType: grantType,
            tokenCreate: tokenCreate,
            refreshLinkedAccounts: refreshLinkedAccounts,
            domain: domain,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
