// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linked_accounts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LinkedAccountsRecord> _$linkedAccountsRecordSerializer =
    new _$LinkedAccountsRecordSerializer();

class _$LinkedAccountsRecordSerializer
    implements StructuredSerializer<LinkedAccountsRecord> {
  @override
  final Iterable<Type> types = const [
    LinkedAccountsRecord,
    _$LinkedAccountsRecord
  ];
  @override
  final String wireName = 'LinkedAccountsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LinkedAccountsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accountType;
    if (value != null) {
      result
        ..add('accountType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountStatus;
    if (value != null) {
      result
        ..add('accountStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountNumber;
    if (value != null) {
      result
        ..add('accountNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentBalance;
    if (value != null) {
      result
        ..add('currentBalance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bsb;
    if (value != null) {
      result
        ..add('bsb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.providerName;
    if (value != null) {
      result
        ..add('providerName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.externalId;
    if (value != null) {
      result
        ..add('externalId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSelected;
    if (value != null) {
      result
        ..add('isSelected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
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
  LinkedAccountsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinkedAccountsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountType':
          result.accountType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accountStatus':
          result.accountStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accountNumber':
          result.accountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currentBalance':
          result.currentBalance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bsb':
          result.bsb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'providerName':
          result.providerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'externalId':
          result.externalId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isSelected':
          result.isSelected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
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

class _$LinkedAccountsRecord extends LinkedAccountsRecord {
  @override
  final String? accountType;
  @override
  final String? accountStatus;
  @override
  final String? accountNumber;
  @override
  final String? currentBalance;
  @override
  final String? currency;
  @override
  final String? bsb;
  @override
  final String? providerName;
  @override
  final String? externalId;
  @override
  final bool? isSelected;
  @override
  final String? id;
  @override
  final String? index;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LinkedAccountsRecord(
          [void Function(LinkedAccountsRecordBuilder)? updates]) =>
      (new LinkedAccountsRecordBuilder()..update(updates))._build();

  _$LinkedAccountsRecord._(
      {this.accountType,
      this.accountStatus,
      this.accountNumber,
      this.currentBalance,
      this.currency,
      this.bsb,
      this.providerName,
      this.externalId,
      this.isSelected,
      this.id,
      this.index,
      this.ffRef})
      : super._();

  @override
  LinkedAccountsRecord rebuild(
          void Function(LinkedAccountsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkedAccountsRecordBuilder toBuilder() =>
      new LinkedAccountsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinkedAccountsRecord &&
        accountType == other.accountType &&
        accountStatus == other.accountStatus &&
        accountNumber == other.accountNumber &&
        currentBalance == other.currentBalance &&
        currency == other.currency &&
        bsb == other.bsb &&
        providerName == other.providerName &&
        externalId == other.externalId &&
        isSelected == other.isSelected &&
        id == other.id &&
        index == other.index &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jc(_$hash, accountStatus.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, currentBalance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, bsb.hashCode);
    _$hash = $jc(_$hash, providerName.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, isSelected.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LinkedAccountsRecord')
          ..add('accountType', accountType)
          ..add('accountStatus', accountStatus)
          ..add('accountNumber', accountNumber)
          ..add('currentBalance', currentBalance)
          ..add('currency', currency)
          ..add('bsb', bsb)
          ..add('providerName', providerName)
          ..add('externalId', externalId)
          ..add('isSelected', isSelected)
          ..add('id', id)
          ..add('index', index)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LinkedAccountsRecordBuilder
    implements Builder<LinkedAccountsRecord, LinkedAccountsRecordBuilder> {
  _$LinkedAccountsRecord? _$v;

  String? _accountType;
  String? get accountType => _$this._accountType;
  set accountType(String? accountType) => _$this._accountType = accountType;

  String? _accountStatus;
  String? get accountStatus => _$this._accountStatus;
  set accountStatus(String? accountStatus) =>
      _$this._accountStatus = accountStatus;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _currentBalance;
  String? get currentBalance => _$this._currentBalance;
  set currentBalance(String? currentBalance) =>
      _$this._currentBalance = currentBalance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _bsb;
  String? get bsb => _$this._bsb;
  set bsb(String? bsb) => _$this._bsb = bsb;

  String? _providerName;
  String? get providerName => _$this._providerName;
  set providerName(String? providerName) => _$this._providerName = providerName;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  bool? _isSelected;
  bool? get isSelected => _$this._isSelected;
  set isSelected(bool? isSelected) => _$this._isSelected = isSelected;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _index;
  String? get index => _$this._index;
  set index(String? index) => _$this._index = index;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LinkedAccountsRecordBuilder() {
    LinkedAccountsRecord._initializeBuilder(this);
  }

  LinkedAccountsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountType = $v.accountType;
      _accountStatus = $v.accountStatus;
      _accountNumber = $v.accountNumber;
      _currentBalance = $v.currentBalance;
      _currency = $v.currency;
      _bsb = $v.bsb;
      _providerName = $v.providerName;
      _externalId = $v.externalId;
      _isSelected = $v.isSelected;
      _id = $v.id;
      _index = $v.index;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinkedAccountsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LinkedAccountsRecord;
  }

  @override
  void update(void Function(LinkedAccountsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LinkedAccountsRecord build() => _build();

  _$LinkedAccountsRecord _build() {
    final _$result = _$v ??
        new _$LinkedAccountsRecord._(
            accountType: accountType,
            accountStatus: accountStatus,
            accountNumber: accountNumber,
            currentBalance: currentBalance,
            currency: currency,
            bsb: bsb,
            providerName: providerName,
            externalId: externalId,
            isSelected: isSelected,
            id: id,
            index: index,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
