// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accountId;
    if (value != null) {
      result
        ..add('accountId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionId;
    if (value != null) {
      result
        ..add('transactionId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postingDateTime;
    if (value != null) {
      result
        ..add('postingDateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.executionDateTime;
    if (value != null) {
      result
        ..add('executionDateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionReference;
    if (value != null) {
      result
        ..add('transactionReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionMerchant;
    if (value != null) {
      result
        ..add('transactionMerchant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionCategory;
    if (value != null) {
      result
        ..add('transactionCategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.merchantName;
    if (value != null) {
      result
        ..add('merchantName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountId':
          result.accountId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transactionId':
          result.transactionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postingDateTime':
          result.postingDateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'executionDateTime':
          result.executionDateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transactionReference':
          result.transactionReference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transactionMerchant':
          result.transactionMerchant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transactionCategory':
          result.transactionCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'merchantName':
          result.merchantName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
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

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final String? accountId;
  @override
  final String? transactionId;
  @override
  final DateTime? postingDateTime;
  @override
  final DateTime? executionDateTime;
  @override
  final double? amount;
  @override
  final String? currency;
  @override
  final String? transactionReference;
  @override
  final String? transactionMerchant;
  @override
  final String? transactionCategory;
  @override
  final String? type;
  @override
  final String? merchantName;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder)? updates]) =>
      (new TransactionsRecordBuilder()..update(updates))._build();

  _$TransactionsRecord._(
      {this.accountId,
      this.transactionId,
      this.postingDateTime,
      this.executionDateTime,
      this.amount,
      this.currency,
      this.transactionReference,
      this.transactionMerchant,
      this.transactionCategory,
      this.type,
      this.merchantName,
      this.status,
      this.ffRef})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        accountId == other.accountId &&
        transactionId == other.transactionId &&
        postingDateTime == other.postingDateTime &&
        executionDateTime == other.executionDateTime &&
        amount == other.amount &&
        currency == other.currency &&
        transactionReference == other.transactionReference &&
        transactionMerchant == other.transactionMerchant &&
        transactionCategory == other.transactionCategory &&
        type == other.type &&
        merchantName == other.merchantName &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, postingDateTime.hashCode);
    _$hash = $jc(_$hash, executionDateTime.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, transactionReference.hashCode);
    _$hash = $jc(_$hash, transactionMerchant.hashCode);
    _$hash = $jc(_$hash, transactionCategory.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, merchantName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionsRecord')
          ..add('accountId', accountId)
          ..add('transactionId', transactionId)
          ..add('postingDateTime', postingDateTime)
          ..add('executionDateTime', executionDateTime)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('transactionReference', transactionReference)
          ..add('transactionMerchant', transactionMerchant)
          ..add('transactionCategory', transactionCategory)
          ..add('type', type)
          ..add('merchantName', merchantName)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  DateTime? _postingDateTime;
  DateTime? get postingDateTime => _$this._postingDateTime;
  set postingDateTime(DateTime? postingDateTime) =>
      _$this._postingDateTime = postingDateTime;

  DateTime? _executionDateTime;
  DateTime? get executionDateTime => _$this._executionDateTime;
  set executionDateTime(DateTime? executionDateTime) =>
      _$this._executionDateTime = executionDateTime;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _transactionReference;
  String? get transactionReference => _$this._transactionReference;
  set transactionReference(String? transactionReference) =>
      _$this._transactionReference = transactionReference;

  String? _transactionMerchant;
  String? get transactionMerchant => _$this._transactionMerchant;
  set transactionMerchant(String? transactionMerchant) =>
      _$this._transactionMerchant = transactionMerchant;

  String? _transactionCategory;
  String? get transactionCategory => _$this._transactionCategory;
  set transactionCategory(String? transactionCategory) =>
      _$this._transactionCategory = transactionCategory;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _merchantName;
  String? get merchantName => _$this._merchantName;
  set merchantName(String? merchantName) => _$this._merchantName = merchantName;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _transactionId = $v.transactionId;
      _postingDateTime = $v.postingDateTime;
      _executionDateTime = $v.executionDateTime;
      _amount = $v.amount;
      _currency = $v.currency;
      _transactionReference = $v.transactionReference;
      _transactionMerchant = $v.transactionMerchant;
      _transactionCategory = $v.transactionCategory;
      _type = $v.type;
      _merchantName = $v.merchantName;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionsRecord build() => _build();

  _$TransactionsRecord _build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            accountId: accountId,
            transactionId: transactionId,
            postingDateTime: postingDateTime,
            executionDateTime: executionDateTime,
            amount: amount,
            currency: currency,
            transactionReference: transactionReference,
            transactionMerchant: transactionMerchant,
            transactionCategory: transactionCategory,
            type: type,
            merchantName: merchantName,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
