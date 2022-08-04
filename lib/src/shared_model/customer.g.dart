// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      companyName: json['company_name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      creationSource: $enumDecodeNullable(
          _$CustomerCreationSourceEnumMap, json['creation_source']),
      emailAddress: json['email_address'] as String?,
      familyName: json['family_name'] as String?,
      givenName: json['given_name'] as String?,
      groupIds: (json['group_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nickname: json['nickname'] as String?,
      note: json['note'] as String?,
      phoneNumber: json['phone_number'] as String?,
      preferences: json['preferences'] == null
          ? null
          : CustomerPreferences.fromJson(
              json['preferences'] as Map<String, dynamic>),
      referenceId: json['reference_id'] as String?,
      segmentIds: (json['segment_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      version: json['version'] as int?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address?.toJson(),
      'birthday': instance.birthday?.toIso8601String(),
      'company_name': instance.companyName,
      'created_at': instance.createdAt?.toIso8601String(),
      'creation_source':
          _$CustomerCreationSourceEnumMap[instance.creationSource],
      'email_address': instance.emailAddress,
      'family_name': instance.familyName,
      'given_name': instance.givenName,
      'group_ids': instance.groupIds,
      'nickname': instance.nickname,
      'note': instance.note,
      'phone_number': instance.phoneNumber,
      'preferences': instance.preferences?.toJson(),
      'reference_id': instance.referenceId,
      'segment_ids': instance.segmentIds,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'version': instance.version,
    };

const _$CustomerCreationSourceEnumMap = {
  CustomerCreationSource.other: 'OTHER',
  CustomerCreationSource.appointments: 'APPOINTMENTS',
  CustomerCreationSource.coupon: 'COUPON',
  CustomerCreationSource.deletionRecovery: 'DELETION_RECOVERY',
  CustomerCreationSource.directory: 'DIRECTORY',
  CustomerCreationSource.egifting: 'EGIFTING',
  CustomerCreationSource.emailCollection: 'EMAIL_COLLECTION',
  CustomerCreationSource.feedback: 'FEEDBACK',
  CustomerCreationSource.import: 'IMPORT',
  CustomerCreationSource.invoices: 'INVOICES',
  CustomerCreationSource.loyalty: 'LOYALTY',
  CustomerCreationSource.marketing: 'MARKETING',
  CustomerCreationSource.merge: 'MERGE',
  CustomerCreationSource.onlineStore: 'ONLINE_STORE',
  CustomerCreationSource.instantProfile: 'INSTANT_PROFILE',
  CustomerCreationSource.terminal: 'TERMINAL',
  CustomerCreationSource.thirdParty: 'THIRD_PARTY',
  CustomerCreationSource.thirdPartyImport: 'THIRD_PARTY_IMPORT',
  CustomerCreationSource.unmergeRecovery: 'UNMERGE_RECOVERY',
};
