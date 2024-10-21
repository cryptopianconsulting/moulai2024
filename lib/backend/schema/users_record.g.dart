// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workKind;
    if (value != null) {
      result
        ..add('work_kind')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.personalDeduction;
    if (value != null) {
      result
        ..add('personal_deduction')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.workFor;
    if (value != null) {
      result
        ..add('work_for')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.anualIncome;
    if (value != null) {
      result
        ..add('anual_income')
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
    value = object.isEmailVerified;
    if (value != null) {
      result
        ..add('is_email_verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isLinkedBank;
    if (value != null) {
      result
        ..add('isLinkedBank')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPurchasedPlan;
    if (value != null) {
      result
        ..add('isPurchasedPlan')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.purchasedPlan;
    if (value != null) {
      result
        ..add('purchasedPlan')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'work_kind':
          result.workKind.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'personal_deduction':
          result.personalDeduction.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'work_for':
          result.workFor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'anual_income':
          result.anualIncome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_email_verified':
          result.isEmailVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isLinkedBank':
          result.isLinkedBank = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPurchasedPlan':
          result.isPurchasedPlan = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'purchasedPlan':
          result.purchasedPlan = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final BuiltList<String>? workKind;
  @override
  final BuiltList<String>? personalDeduction;
  @override
  final BuiltList<String>? workFor;
  @override
  final String? anualIncome;
  @override
  final String? password;
  @override
  final bool? isEmailVerified;
  @override
  final bool? isLinkedBank;
  @override
  final bool? isPurchasedPlan;
  @override
  final String? purchasedPlan;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.workKind,
      this.personalDeduction,
      this.workFor,
      this.anualIncome,
      this.password,
      this.isEmailVerified,
      this.isLinkedBank,
      this.isPurchasedPlan,
      this.purchasedPlan,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        workKind == other.workKind &&
        personalDeduction == other.personalDeduction &&
        workFor == other.workFor &&
        anualIncome == other.anualIncome &&
        password == other.password &&
        isEmailVerified == other.isEmailVerified &&
        isLinkedBank == other.isLinkedBank &&
        isPurchasedPlan == other.isPurchasedPlan &&
        purchasedPlan == other.purchasedPlan &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, workKind.hashCode);
    _$hash = $jc(_$hash, personalDeduction.hashCode);
    _$hash = $jc(_$hash, workFor.hashCode);
    _$hash = $jc(_$hash, anualIncome.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, isEmailVerified.hashCode);
    _$hash = $jc(_$hash, isLinkedBank.hashCode);
    _$hash = $jc(_$hash, isPurchasedPlan.hashCode);
    _$hash = $jc(_$hash, purchasedPlan.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('workKind', workKind)
          ..add('personalDeduction', personalDeduction)
          ..add('workFor', workFor)
          ..add('anualIncome', anualIncome)
          ..add('password', password)
          ..add('isEmailVerified', isEmailVerified)
          ..add('isLinkedBank', isLinkedBank)
          ..add('isPurchasedPlan', isPurchasedPlan)
          ..add('purchasedPlan', purchasedPlan)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  ListBuilder<String>? _workKind;
  ListBuilder<String> get workKind =>
      _$this._workKind ??= new ListBuilder<String>();
  set workKind(ListBuilder<String>? workKind) => _$this._workKind = workKind;

  ListBuilder<String>? _personalDeduction;
  ListBuilder<String> get personalDeduction =>
      _$this._personalDeduction ??= new ListBuilder<String>();
  set personalDeduction(ListBuilder<String>? personalDeduction) =>
      _$this._personalDeduction = personalDeduction;

  ListBuilder<String>? _workFor;
  ListBuilder<String> get workFor =>
      _$this._workFor ??= new ListBuilder<String>();
  set workFor(ListBuilder<String>? workFor) => _$this._workFor = workFor;

  String? _anualIncome;
  String? get anualIncome => _$this._anualIncome;
  set anualIncome(String? anualIncome) => _$this._anualIncome = anualIncome;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _isEmailVerified;
  bool? get isEmailVerified => _$this._isEmailVerified;
  set isEmailVerified(bool? isEmailVerified) =>
      _$this._isEmailVerified = isEmailVerified;

  bool? _isLinkedBank;
  bool? get isLinkedBank => _$this._isLinkedBank;
  set isLinkedBank(bool? isLinkedBank) => _$this._isLinkedBank = isLinkedBank;

  bool? _isPurchasedPlan;
  bool? get isPurchasedPlan => _$this._isPurchasedPlan;
  set isPurchasedPlan(bool? isPurchasedPlan) =>
      _$this._isPurchasedPlan = isPurchasedPlan;

  String? _purchasedPlan;
  String? get purchasedPlan => _$this._purchasedPlan;
  set purchasedPlan(String? purchasedPlan) =>
      _$this._purchasedPlan = purchasedPlan;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _workKind = $v.workKind?.toBuilder();
      _personalDeduction = $v.personalDeduction?.toBuilder();
      _workFor = $v.workFor?.toBuilder();
      _anualIncome = $v.anualIncome;
      _password = $v.password;
      _isEmailVerified = $v.isEmailVerified;
      _isLinkedBank = $v.isLinkedBank;
      _isPurchasedPlan = $v.isPurchasedPlan;
      _purchasedPlan = $v.purchasedPlan;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              workKind: _workKind?.build(),
              personalDeduction: _personalDeduction?.build(),
              workFor: _workFor?.build(),
              anualIncome: anualIncome,
              password: password,
              isEmailVerified: isEmailVerified,
              isLinkedBank: isLinkedBank,
              isPurchasedPlan: isPurchasedPlan,
              purchasedPlan: purchasedPlan,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workKind';
        _workKind?.build();
        _$failedField = 'personalDeduction';
        _personalDeduction?.build();
        _$failedField = 'workFor';
        _workFor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
