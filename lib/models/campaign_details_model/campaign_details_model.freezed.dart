// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignDetailsModel {

@JsonKey(name: "campaign") Campaign? get campaign;
/// Create a copy of CampaignDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignDetailsModelCopyWith<CampaignDetailsModel> get copyWith => _$CampaignDetailsModelCopyWithImpl<CampaignDetailsModel>(this as CampaignDetailsModel, _$identity);

  /// Serializes this CampaignDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignDetailsModel&&(identical(other.campaign, campaign) || other.campaign == campaign));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaign);

@override
String toString() {
  return 'CampaignDetailsModel(campaign: $campaign)';
}


}

/// @nodoc
abstract mixin class $CampaignDetailsModelCopyWith<$Res>  {
  factory $CampaignDetailsModelCopyWith(CampaignDetailsModel value, $Res Function(CampaignDetailsModel) _then) = _$CampaignDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "campaign") Campaign? campaign
});


$CampaignCopyWith<$Res>? get campaign;

}
/// @nodoc
class _$CampaignDetailsModelCopyWithImpl<$Res>
    implements $CampaignDetailsModelCopyWith<$Res> {
  _$CampaignDetailsModelCopyWithImpl(this._self, this._then);

  final CampaignDetailsModel _self;
  final $Res Function(CampaignDetailsModel) _then;

/// Create a copy of CampaignDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaign = freezed,}) {
  return _then(_self.copyWith(
campaign: freezed == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as Campaign?,
  ));
}
/// Create a copy of CampaignDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignCopyWith<$Res>? get campaign {
    if (_self.campaign == null) {
    return null;
  }

  return $CampaignCopyWith<$Res>(_self.campaign!, (value) {
    return _then(_self.copyWith(campaign: value));
  });
}
}


/// Adds pattern-matching-related methods to [CampaignDetailsModel].
extension CampaignDetailsModelPatterns on CampaignDetailsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignDetailsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "campaign")  Campaign? campaign)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignDetailsModel() when $default != null:
return $default(_that.campaign);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "campaign")  Campaign? campaign)  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailsModel():
return $default(_that.campaign);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "campaign")  Campaign? campaign)?  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailsModel() when $default != null:
return $default(_that.campaign);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignDetailsModel implements CampaignDetailsModel {
  const _CampaignDetailsModel({@JsonKey(name: "campaign") this.campaign});
  factory _CampaignDetailsModel.fromJson(Map<String, dynamic> json) => _$CampaignDetailsModelFromJson(json);

@override@JsonKey(name: "campaign") final  Campaign? campaign;

/// Create a copy of CampaignDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignDetailsModelCopyWith<_CampaignDetailsModel> get copyWith => __$CampaignDetailsModelCopyWithImpl<_CampaignDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignDetailsModel&&(identical(other.campaign, campaign) || other.campaign == campaign));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaign);

@override
String toString() {
  return 'CampaignDetailsModel(campaign: $campaign)';
}


}

/// @nodoc
abstract mixin class _$CampaignDetailsModelCopyWith<$Res> implements $CampaignDetailsModelCopyWith<$Res> {
  factory _$CampaignDetailsModelCopyWith(_CampaignDetailsModel value, $Res Function(_CampaignDetailsModel) _then) = __$CampaignDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "campaign") Campaign? campaign
});


@override $CampaignCopyWith<$Res>? get campaign;

}
/// @nodoc
class __$CampaignDetailsModelCopyWithImpl<$Res>
    implements _$CampaignDetailsModelCopyWith<$Res> {
  __$CampaignDetailsModelCopyWithImpl(this._self, this._then);

  final _CampaignDetailsModel _self;
  final $Res Function(_CampaignDetailsModel) _then;

/// Create a copy of CampaignDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaign = freezed,}) {
  return _then(_CampaignDetailsModel(
campaign: freezed == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as Campaign?,
  ));
}

/// Create a copy of CampaignDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignCopyWith<$Res>? get campaign {
    if (_self.campaign == null) {
    return null;
  }

  return $CampaignCopyWith<$Res>(_self.campaign!, (value) {
    return _then(_self.copyWith(campaign: value));
  });
}
}


/// @nodoc
mixin _$Campaign {

@JsonKey(name: "id") String? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "status") String? get status;@JsonKey(name: "objective") String? get objective;@JsonKey(name: "channel") String? get channel;@JsonKey(name: "budget") int? get budget;@JsonKey(name: "spend") int? get spend;@JsonKey(name: "impressions") int? get impressions;@JsonKey(name: "clicks") int? get clicks;@JsonKey(name: "conversions") int? get conversions;@JsonKey(name: "cost_per_click") double? get costPerClick;@JsonKey(name: "cost_per_conversion") double? get costPerConversion;@JsonKey(name: "start_date") DateTime? get startDate;@JsonKey(name: "end_date") DateTime? get endDate;@JsonKey(name: "currency") String? get currency;@JsonKey(name: "target_audience") TargetAudience? get targetAudience;@JsonKey(name: "daily_budget") int? get dailyBudget;@JsonKey(name: "ctr") double? get ctr;@JsonKey(name: "budget_utilization") double? get budgetUtilization;
/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignCopyWith<Campaign> get copyWith => _$CampaignCopyWithImpl<Campaign>(this as Campaign, _$identity);

  /// Serializes this Campaign to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Campaign&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.costPerClick, costPerClick) || other.costPerClick == costPerClick)&&(identical(other.costPerConversion, costPerConversion) || other.costPerConversion == costPerConversion)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.dailyBudget, dailyBudget) || other.dailyBudget == dailyBudget)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,conversions,costPerClick,costPerConversion,startDate,endDate,currency,targetAudience,dailyBudget,ctr,budgetUtilization]);

@override
String toString() {
  return 'Campaign(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, conversions: $conversions, costPerClick: $costPerClick, costPerConversion: $costPerConversion, startDate: $startDate, endDate: $endDate, currency: $currency, targetAudience: $targetAudience, dailyBudget: $dailyBudget, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class $CampaignCopyWith<$Res>  {
  factory $CampaignCopyWith(Campaign value, $Res Function(Campaign) _then) = _$CampaignCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "objective") String? objective,@JsonKey(name: "channel") String? channel,@JsonKey(name: "budget") int? budget,@JsonKey(name: "spend") int? spend,@JsonKey(name: "impressions") int? impressions,@JsonKey(name: "clicks") int? clicks,@JsonKey(name: "conversions") int? conversions,@JsonKey(name: "cost_per_click") double? costPerClick,@JsonKey(name: "cost_per_conversion") double? costPerConversion,@JsonKey(name: "start_date") DateTime? startDate,@JsonKey(name: "end_date") DateTime? endDate,@JsonKey(name: "currency") String? currency,@JsonKey(name: "target_audience") TargetAudience? targetAudience,@JsonKey(name: "daily_budget") int? dailyBudget,@JsonKey(name: "ctr") double? ctr,@JsonKey(name: "budget_utilization") double? budgetUtilization
});


$TargetAudienceCopyWith<$Res>? get targetAudience;

}
/// @nodoc
class _$CampaignCopyWithImpl<$Res>
    implements $CampaignCopyWith<$Res> {
  _$CampaignCopyWithImpl(this._self, this._then);

  final Campaign _self;
  final $Res Function(Campaign) _then;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? status = freezed,Object? objective = freezed,Object? channel = freezed,Object? budget = freezed,Object? spend = freezed,Object? impressions = freezed,Object? clicks = freezed,Object? conversions = freezed,Object? costPerClick = freezed,Object? costPerConversion = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? currency = freezed,Object? targetAudience = freezed,Object? dailyBudget = freezed,Object? ctr = freezed,Object? budgetUtilization = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,spend: freezed == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int?,impressions: freezed == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int?,clicks: freezed == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int?,conversions: freezed == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int?,costPerClick: freezed == costPerClick ? _self.costPerClick : costPerClick // ignore: cast_nullable_to_non_nullable
as double?,costPerConversion: freezed == costPerConversion ? _self.costPerConversion : costPerConversion // ignore: cast_nullable_to_non_nullable
as double?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,targetAudience: freezed == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as TargetAudience?,dailyBudget: freezed == dailyBudget ? _self.dailyBudget : dailyBudget // ignore: cast_nullable_to_non_nullable
as int?,ctr: freezed == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double?,budgetUtilization: freezed == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetAudienceCopyWith<$Res>? get targetAudience {
    if (_self.targetAudience == null) {
    return null;
  }

  return $TargetAudienceCopyWith<$Res>(_self.targetAudience!, (value) {
    return _then(_self.copyWith(targetAudience: value));
  });
}
}


/// Adds pattern-matching-related methods to [Campaign].
extension CampaignPatterns on Campaign {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Campaign value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Campaign value)  $default,){
final _that = this;
switch (_that) {
case _Campaign():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Campaign value)?  $default,){
final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "objective")  String? objective, @JsonKey(name: "channel")  String? channel, @JsonKey(name: "budget")  int? budget, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks, @JsonKey(name: "conversions")  int? conversions, @JsonKey(name: "cost_per_click")  double? costPerClick, @JsonKey(name: "cost_per_conversion")  double? costPerConversion, @JsonKey(name: "start_date")  DateTime? startDate, @JsonKey(name: "end_date")  DateTime? endDate, @JsonKey(name: "currency")  String? currency, @JsonKey(name: "target_audience")  TargetAudience? targetAudience, @JsonKey(name: "daily_budget")  int? dailyBudget, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "budget_utilization")  double? budgetUtilization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.conversions,_that.costPerClick,_that.costPerConversion,_that.startDate,_that.endDate,_that.currency,_that.targetAudience,_that.dailyBudget,_that.ctr,_that.budgetUtilization);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "objective")  String? objective, @JsonKey(name: "channel")  String? channel, @JsonKey(name: "budget")  int? budget, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks, @JsonKey(name: "conversions")  int? conversions, @JsonKey(name: "cost_per_click")  double? costPerClick, @JsonKey(name: "cost_per_conversion")  double? costPerConversion, @JsonKey(name: "start_date")  DateTime? startDate, @JsonKey(name: "end_date")  DateTime? endDate, @JsonKey(name: "currency")  String? currency, @JsonKey(name: "target_audience")  TargetAudience? targetAudience, @JsonKey(name: "daily_budget")  int? dailyBudget, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "budget_utilization")  double? budgetUtilization)  $default,) {final _that = this;
switch (_that) {
case _Campaign():
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.conversions,_that.costPerClick,_that.costPerConversion,_that.startDate,_that.endDate,_that.currency,_that.targetAudience,_that.dailyBudget,_that.ctr,_that.budgetUtilization);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "objective")  String? objective, @JsonKey(name: "channel")  String? channel, @JsonKey(name: "budget")  int? budget, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks, @JsonKey(name: "conversions")  int? conversions, @JsonKey(name: "cost_per_click")  double? costPerClick, @JsonKey(name: "cost_per_conversion")  double? costPerConversion, @JsonKey(name: "start_date")  DateTime? startDate, @JsonKey(name: "end_date")  DateTime? endDate, @JsonKey(name: "currency")  String? currency, @JsonKey(name: "target_audience")  TargetAudience? targetAudience, @JsonKey(name: "daily_budget")  int? dailyBudget, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "budget_utilization")  double? budgetUtilization)?  $default,) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.conversions,_that.costPerClick,_that.costPerConversion,_that.startDate,_that.endDate,_that.currency,_that.targetAudience,_that.dailyBudget,_that.ctr,_that.budgetUtilization);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Campaign implements Campaign {
  const _Campaign({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "status") this.status, @JsonKey(name: "objective") this.objective, @JsonKey(name: "channel") this.channel, @JsonKey(name: "budget") this.budget, @JsonKey(name: "spend") this.spend, @JsonKey(name: "impressions") this.impressions, @JsonKey(name: "clicks") this.clicks, @JsonKey(name: "conversions") this.conversions, @JsonKey(name: "cost_per_click") this.costPerClick, @JsonKey(name: "cost_per_conversion") this.costPerConversion, @JsonKey(name: "start_date") this.startDate, @JsonKey(name: "end_date") this.endDate, @JsonKey(name: "currency") this.currency, @JsonKey(name: "target_audience") this.targetAudience, @JsonKey(name: "daily_budget") this.dailyBudget, @JsonKey(name: "ctr") this.ctr, @JsonKey(name: "budget_utilization") this.budgetUtilization});
  factory _Campaign.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "objective") final  String? objective;
@override@JsonKey(name: "channel") final  String? channel;
@override@JsonKey(name: "budget") final  int? budget;
@override@JsonKey(name: "spend") final  int? spend;
@override@JsonKey(name: "impressions") final  int? impressions;
@override@JsonKey(name: "clicks") final  int? clicks;
@override@JsonKey(name: "conversions") final  int? conversions;
@override@JsonKey(name: "cost_per_click") final  double? costPerClick;
@override@JsonKey(name: "cost_per_conversion") final  double? costPerConversion;
@override@JsonKey(name: "start_date") final  DateTime? startDate;
@override@JsonKey(name: "end_date") final  DateTime? endDate;
@override@JsonKey(name: "currency") final  String? currency;
@override@JsonKey(name: "target_audience") final  TargetAudience? targetAudience;
@override@JsonKey(name: "daily_budget") final  int? dailyBudget;
@override@JsonKey(name: "ctr") final  double? ctr;
@override@JsonKey(name: "budget_utilization") final  double? budgetUtilization;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignCopyWith<_Campaign> get copyWith => __$CampaignCopyWithImpl<_Campaign>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Campaign&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.costPerClick, costPerClick) || other.costPerClick == costPerClick)&&(identical(other.costPerConversion, costPerConversion) || other.costPerConversion == costPerConversion)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.dailyBudget, dailyBudget) || other.dailyBudget == dailyBudget)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,conversions,costPerClick,costPerConversion,startDate,endDate,currency,targetAudience,dailyBudget,ctr,budgetUtilization]);

@override
String toString() {
  return 'Campaign(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, conversions: $conversions, costPerClick: $costPerClick, costPerConversion: $costPerConversion, startDate: $startDate, endDate: $endDate, currency: $currency, targetAudience: $targetAudience, dailyBudget: $dailyBudget, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class _$CampaignCopyWith<$Res> implements $CampaignCopyWith<$Res> {
  factory _$CampaignCopyWith(_Campaign value, $Res Function(_Campaign) _then) = __$CampaignCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "objective") String? objective,@JsonKey(name: "channel") String? channel,@JsonKey(name: "budget") int? budget,@JsonKey(name: "spend") int? spend,@JsonKey(name: "impressions") int? impressions,@JsonKey(name: "clicks") int? clicks,@JsonKey(name: "conversions") int? conversions,@JsonKey(name: "cost_per_click") double? costPerClick,@JsonKey(name: "cost_per_conversion") double? costPerConversion,@JsonKey(name: "start_date") DateTime? startDate,@JsonKey(name: "end_date") DateTime? endDate,@JsonKey(name: "currency") String? currency,@JsonKey(name: "target_audience") TargetAudience? targetAudience,@JsonKey(name: "daily_budget") int? dailyBudget,@JsonKey(name: "ctr") double? ctr,@JsonKey(name: "budget_utilization") double? budgetUtilization
});


@override $TargetAudienceCopyWith<$Res>? get targetAudience;

}
/// @nodoc
class __$CampaignCopyWithImpl<$Res>
    implements _$CampaignCopyWith<$Res> {
  __$CampaignCopyWithImpl(this._self, this._then);

  final _Campaign _self;
  final $Res Function(_Campaign) _then;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? status = freezed,Object? objective = freezed,Object? channel = freezed,Object? budget = freezed,Object? spend = freezed,Object? impressions = freezed,Object? clicks = freezed,Object? conversions = freezed,Object? costPerClick = freezed,Object? costPerConversion = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? currency = freezed,Object? targetAudience = freezed,Object? dailyBudget = freezed,Object? ctr = freezed,Object? budgetUtilization = freezed,}) {
  return _then(_Campaign(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,objective: freezed == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,spend: freezed == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int?,impressions: freezed == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int?,clicks: freezed == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int?,conversions: freezed == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int?,costPerClick: freezed == costPerClick ? _self.costPerClick : costPerClick // ignore: cast_nullable_to_non_nullable
as double?,costPerConversion: freezed == costPerConversion ? _self.costPerConversion : costPerConversion // ignore: cast_nullable_to_non_nullable
as double?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,targetAudience: freezed == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as TargetAudience?,dailyBudget: freezed == dailyBudget ? _self.dailyBudget : dailyBudget // ignore: cast_nullable_to_non_nullable
as int?,ctr: freezed == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double?,budgetUtilization: freezed == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetAudienceCopyWith<$Res>? get targetAudience {
    if (_self.targetAudience == null) {
    return null;
  }

  return $TargetAudienceCopyWith<$Res>(_self.targetAudience!, (value) {
    return _then(_self.copyWith(targetAudience: value));
  });
}
}


/// @nodoc
mixin _$TargetAudience {

@JsonKey(name: "age_range") String? get ageRange;@JsonKey(name: "regions") List<String>? get regions;@JsonKey(name: "interests") List<String>? get interests;
/// Create a copy of TargetAudience
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetAudienceCopyWith<TargetAudience> get copyWith => _$TargetAudienceCopyWithImpl<TargetAudience>(this as TargetAudience, _$identity);

  /// Serializes this TargetAudience to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetAudience&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other.regions, regions)&&const DeepCollectionEquality().equals(other.interests, interests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageRange,const DeepCollectionEquality().hash(regions),const DeepCollectionEquality().hash(interests));

@override
String toString() {
  return 'TargetAudience(ageRange: $ageRange, regions: $regions, interests: $interests)';
}


}

/// @nodoc
abstract mixin class $TargetAudienceCopyWith<$Res>  {
  factory $TargetAudienceCopyWith(TargetAudience value, $Res Function(TargetAudience) _then) = _$TargetAudienceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "age_range") String? ageRange,@JsonKey(name: "regions") List<String>? regions,@JsonKey(name: "interests") List<String>? interests
});




}
/// @nodoc
class _$TargetAudienceCopyWithImpl<$Res>
    implements $TargetAudienceCopyWith<$Res> {
  _$TargetAudienceCopyWithImpl(this._self, this._then);

  final TargetAudience _self;
  final $Res Function(TargetAudience) _then;

/// Create a copy of TargetAudience
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ageRange = freezed,Object? regions = freezed,Object? interests = freezed,}) {
  return _then(_self.copyWith(
ageRange: freezed == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as String?,regions: freezed == regions ? _self.regions : regions // ignore: cast_nullable_to_non_nullable
as List<String>?,interests: freezed == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TargetAudience].
extension TargetAudiencePatterns on TargetAudience {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TargetAudience value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TargetAudience() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TargetAudience value)  $default,){
final _that = this;
switch (_that) {
case _TargetAudience():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TargetAudience value)?  $default,){
final _that = this;
switch (_that) {
case _TargetAudience() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "age_range")  String? ageRange, @JsonKey(name: "regions")  List<String>? regions, @JsonKey(name: "interests")  List<String>? interests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TargetAudience() when $default != null:
return $default(_that.ageRange,_that.regions,_that.interests);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "age_range")  String? ageRange, @JsonKey(name: "regions")  List<String>? regions, @JsonKey(name: "interests")  List<String>? interests)  $default,) {final _that = this;
switch (_that) {
case _TargetAudience():
return $default(_that.ageRange,_that.regions,_that.interests);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "age_range")  String? ageRange, @JsonKey(name: "regions")  List<String>? regions, @JsonKey(name: "interests")  List<String>? interests)?  $default,) {final _that = this;
switch (_that) {
case _TargetAudience() when $default != null:
return $default(_that.ageRange,_that.regions,_that.interests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TargetAudience implements TargetAudience {
  const _TargetAudience({@JsonKey(name: "age_range") this.ageRange, @JsonKey(name: "regions") final  List<String>? regions, @JsonKey(name: "interests") final  List<String>? interests}): _regions = regions,_interests = interests;
  factory _TargetAudience.fromJson(Map<String, dynamic> json) => _$TargetAudienceFromJson(json);

@override@JsonKey(name: "age_range") final  String? ageRange;
 final  List<String>? _regions;
@override@JsonKey(name: "regions") List<String>? get regions {
  final value = _regions;
  if (value == null) return null;
  if (_regions is EqualUnmodifiableListView) return _regions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _interests;
@override@JsonKey(name: "interests") List<String>? get interests {
  final value = _interests;
  if (value == null) return null;
  if (_interests is EqualUnmodifiableListView) return _interests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TargetAudience
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TargetAudienceCopyWith<_TargetAudience> get copyWith => __$TargetAudienceCopyWithImpl<_TargetAudience>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TargetAudienceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TargetAudience&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other._regions, _regions)&&const DeepCollectionEquality().equals(other._interests, _interests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageRange,const DeepCollectionEquality().hash(_regions),const DeepCollectionEquality().hash(_interests));

@override
String toString() {
  return 'TargetAudience(ageRange: $ageRange, regions: $regions, interests: $interests)';
}


}

/// @nodoc
abstract mixin class _$TargetAudienceCopyWith<$Res> implements $TargetAudienceCopyWith<$Res> {
  factory _$TargetAudienceCopyWith(_TargetAudience value, $Res Function(_TargetAudience) _then) = __$TargetAudienceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "age_range") String? ageRange,@JsonKey(name: "regions") List<String>? regions,@JsonKey(name: "interests") List<String>? interests
});




}
/// @nodoc
class __$TargetAudienceCopyWithImpl<$Res>
    implements _$TargetAudienceCopyWith<$Res> {
  __$TargetAudienceCopyWithImpl(this._self, this._then);

  final _TargetAudience _self;
  final $Res Function(_TargetAudience) _then;

/// Create a copy of TargetAudience
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ageRange = freezed,Object? regions = freezed,Object? interests = freezed,}) {
  return _then(_TargetAudience(
ageRange: freezed == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as String?,regions: freezed == regions ? _self._regions : regions // ignore: cast_nullable_to_non_nullable
as List<String>?,interests: freezed == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
