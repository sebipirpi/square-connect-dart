// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program_accrual_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyProgramAccrualRule _$LoyaltyProgramAccrualRuleFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramAccrualRule(
      accrualType: json['accrual_type'] as String,
      categoryData: json['category_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleCategoryData.fromJson(
              json['category_data'] as Map<String, dynamic>),
      itemVariationData: json['item_variation_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleItemVariationData.fromJson(
              json['item_variation_data'] as Map<String, dynamic>),
      points: json['points'] as int?,
      spendData: json['spend_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleSpendData.fromJson(
              json['spend_data'] as Map<String, dynamic>),
      visitData: json['visit_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleVisitData.fromJson(
              json['visit_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleToJson(
        LoyaltyProgramAccrualRule instance) =>
    <String, dynamic>{
      'accrual_type': instance.accrualType,
      'category_data': instance.categoryData?.toJson(),
      'item_variation_data': instance.itemVariationData?.toJson(),
      'points': instance.points,
      'spend_data': instance.spendData?.toJson(),
      'visit_data': instance.visitData?.toJson(),
    };
