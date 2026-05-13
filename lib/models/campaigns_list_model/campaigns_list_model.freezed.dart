// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaigns_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignsListModel {

@JsonKey(name: "campaigns") List<Campaign>? get campaigns;@JsonKey(name: "total") int? get total;
/// Create a copy of CampaignsListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignsListModelCopyWith<CampaignsListModel> get copyWith => _$CampaignsListModelCopyWithImpl<CampaignsListModel>(this as CampaignsListModel, _$identity);

  /// Serializes this CampaignsListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignsListModel&&const DeepCollectionEquality().equals(other.campaigns, campaigns)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(campaigns),total);

@override
String toString() {
  return 'CampaignsListModel(campaigns: $campaigns, total: $total)';
}


}

/// @nodoc
abstract mixin class $CampaignsListModelCopyWith<$Res>  {
  factory $CampaignsListModelCopyWith(CampaignsListModel value, $Res Function(CampaignsListModel) _then) = _$CampaignsListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "campaigns") List<Campaign>? campaigns,@JsonKey(name: "total") int? total
});




}
/// @nodoc
class _$CampaignsListModelCopyWithImpl<$Res>
    implements $CampaignsListModelCopyWith<$Res> {
  _$CampaignsListModelCopyWithImpl(this._self, this._then);

  final CampaignsListModel _self;
  final $Res Function(CampaignsListModel) _then;

/// Create a copy of CampaignsListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaigns = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
campaigns: freezed == campaigns ? _self.campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<Campaign>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignsListModel].
extension CampaignsListModelPatterns on CampaignsListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignsListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignsListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignsListModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignsListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignsListModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignsListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "campaigns")  List<Campaign>? campaigns, @JsonKey(name: "total")  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignsListModel() when $default != null:
return $default(_that.campaigns,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "campaigns")  List<Campaign>? campaigns, @JsonKey(name: "total")  int? total)  $default,) {final _that = this;
switch (_that) {
case _CampaignsListModel():
return $default(_that.campaigns,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "campaigns")  List<Campaign>? campaigns, @JsonKey(name: "total")  int? total)?  $default,) {final _that = this;
switch (_that) {
case _CampaignsListModel() when $default != null:
return $default(_that.campaigns,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignsListModel implements CampaignsListModel {
  const _CampaignsListModel({@JsonKey(name: "campaigns") final  List<Campaign>? campaigns, @JsonKey(name: "total") this.total}): _campaigns = campaigns;
  factory _CampaignsListModel.fromJson(Map<String, dynamic> json) => _$CampaignsListModelFromJson(json);

 final  List<Campaign>? _campaigns;
@override@JsonKey(name: "campaigns") List<Campaign>? get campaigns {
  final value = _campaigns;
  if (value == null) return null;
  if (_campaigns is EqualUnmodifiableListView) return _campaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "total") final  int? total;

/// Create a copy of CampaignsListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignsListModelCopyWith<_CampaignsListModel> get copyWith => __$CampaignsListModelCopyWithImpl<_CampaignsListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignsListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignsListModel&&const DeepCollectionEquality().equals(other._campaigns, _campaigns)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_campaigns),total);

@override
String toString() {
  return 'CampaignsListModel(campaigns: $campaigns, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CampaignsListModelCopyWith<$Res> implements $CampaignsListModelCopyWith<$Res> {
  factory _$CampaignsListModelCopyWith(_CampaignsListModel value, $Res Function(_CampaignsListModel) _then) = __$CampaignsListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "campaigns") List<Campaign>? campaigns,@JsonKey(name: "total") int? total
});




}
/// @nodoc
class __$CampaignsListModelCopyWithImpl<$Res>
    implements _$CampaignsListModelCopyWith<$Res> {
  __$CampaignsListModelCopyWithImpl(this._self, this._then);

  final _CampaignsListModel _self;
  final $Res Function(_CampaignsListModel) _then;

/// Create a copy of CampaignsListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaigns = freezed,Object? total = freezed,}) {
  return _then(_CampaignsListModel(
campaigns: freezed == campaigns ? _self._campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<Campaign>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Campaign {

@JsonKey(name: "id") String? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "status") String? get status;@JsonKey(name: "objective") String? get objective;@JsonKey(name: "channel") String? get channel;@JsonKey(name: "budget") int? get budget;@JsonKey(name: "spend") int? get spend;@JsonKey(name: "impressions") int? get impressions;@JsonKey(name: "clicks") int? get clicks;@JsonKey(name: "start_date") DateTime? get startDate;@JsonKey(name: "end_date") DateTime? get endDate;@JsonKey(name: "currency") String? get currency;@JsonKey(name: "thumbnail") String? get thumbnail;@JsonKey(name: "ctr") double? get ctr;@JsonKey(name: "budget_utilization") double? get budgetUtilization;
/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignCopyWith<Campaign> get copyWith => _$CampaignCopyWithImpl<Campaign>(this as Campaign, _$identity);

  /// Serializes this Campaign to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Campaign&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,startDate,endDate,currency,thumbnail,ctr,budgetUtilization);

@override
String toString() {
  return 'Campaign(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, startDate: $startDate, endDate: $endDate, currency: $currency, thumbnail: $thumbnail, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class $CampaignCopyWith<$Res>  {
  factory $CampaignCopyWith(Campaign value, $Res Function(Campaign) _then) = _$CampaignCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "objective") String? objective,@JsonKey(name: "channel") String? channel,@JsonKey(name: "budget") int? budget,@JsonKey(name: "spend") int? spend,@JsonKey(name: "impressions") int? impressions,@JsonKey(name: "clicks") int? clicks,@JsonKey(name: "start_date") DateTime? startDate,@JsonKey(name: "end_date") DateTime? endDate,@JsonKey(name: "currency") String? currency,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "ctr") double? ctr,@JsonKey(name: "budget_utilization") double? budgetUtilization
});




}
/// @nodoc
class _$CampaignCopyWithImpl<$Res>
    implements $CampaignCopyWith<$Res> {
  _$CampaignCopyWithImpl(this._self, this._then);

  final Campaign _self;
  final $Res Function(Campaign) _then;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? status = freezed,Object? objective = freezed,Object? channel = freezed,Object? budget = freezed,Object? spend = freezed,Object? impressions = freezed,Object? clicks = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? currency = freezed,Object? thumbnail = freezed,Object? ctr = freezed,Object? budgetUtilization = freezed,}) {
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
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,ctr: freezed == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double?,budgetUtilization: freezed == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "objective")  String? objective, @JsonKey(name: "channel")  String? channel, @JsonKey(name: "budget")  int? budget, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks, @JsonKey(name: "start_date")  DateTime? startDate, @JsonKey(name: "end_date")  DateTime? endDate, @JsonKey(name: "currency")  String? currency, @JsonKey(name: "thumbnail")  String? thumbnail, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "budget_utilization")  double? budgetUtilization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.startDate,_that.endDate,_that.currency,_that.thumbnail,_that.ctr,_that.budgetUtilization);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "objective")  String? objective, @JsonKey(name: "channel")  String? channel, @JsonKey(name: "budget")  int? budget, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks, @JsonKey(name: "start_date")  DateTime? startDate, @JsonKey(name: "end_date")  DateTime? endDate, @JsonKey(name: "currency")  String? currency, @JsonKey(name: "thumbnail")  String? thumbnail, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "budget_utilization")  double? budgetUtilization)  $default,) {final _that = this;
switch (_that) {
case _Campaign():
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.startDate,_that.endDate,_that.currency,_that.thumbnail,_that.ctr,_that.budgetUtilization);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "objective")  String? objective, @JsonKey(name: "channel")  String? channel, @JsonKey(name: "budget")  int? budget, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks, @JsonKey(name: "start_date")  DateTime? startDate, @JsonKey(name: "end_date")  DateTime? endDate, @JsonKey(name: "currency")  String? currency, @JsonKey(name: "thumbnail")  String? thumbnail, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "budget_utilization")  double? budgetUtilization)?  $default,) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.startDate,_that.endDate,_that.currency,_that.thumbnail,_that.ctr,_that.budgetUtilization);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Campaign implements Campaign {
  const _Campaign({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "status") this.status, @JsonKey(name: "objective") this.objective, @JsonKey(name: "channel") this.channel, @JsonKey(name: "budget") this.budget, @JsonKey(name: "spend") this.spend, @JsonKey(name: "impressions") this.impressions, @JsonKey(name: "clicks") this.clicks, @JsonKey(name: "start_date") this.startDate, @JsonKey(name: "end_date") this.endDate, @JsonKey(name: "currency") this.currency, @JsonKey(name: "thumbnail") this.thumbnail, @JsonKey(name: "ctr") this.ctr, @JsonKey(name: "budget_utilization") this.budgetUtilization});
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
@override@JsonKey(name: "start_date") final  DateTime? startDate;
@override@JsonKey(name: "end_date") final  DateTime? endDate;
@override@JsonKey(name: "currency") final  String? currency;
@override@JsonKey(name: "thumbnail") final  String? thumbnail;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Campaign&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,startDate,endDate,currency,thumbnail,ctr,budgetUtilization);

@override
String toString() {
  return 'Campaign(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, startDate: $startDate, endDate: $endDate, currency: $currency, thumbnail: $thumbnail, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class _$CampaignCopyWith<$Res> implements $CampaignCopyWith<$Res> {
  factory _$CampaignCopyWith(_Campaign value, $Res Function(_Campaign) _then) = __$CampaignCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "objective") String? objective,@JsonKey(name: "channel") String? channel,@JsonKey(name: "budget") int? budget,@JsonKey(name: "spend") int? spend,@JsonKey(name: "impressions") int? impressions,@JsonKey(name: "clicks") int? clicks,@JsonKey(name: "start_date") DateTime? startDate,@JsonKey(name: "end_date") DateTime? endDate,@JsonKey(name: "currency") String? currency,@JsonKey(name: "thumbnail") String? thumbnail,@JsonKey(name: "ctr") double? ctr,@JsonKey(name: "budget_utilization") double? budgetUtilization
});




}
/// @nodoc
class __$CampaignCopyWithImpl<$Res>
    implements _$CampaignCopyWith<$Res> {
  __$CampaignCopyWithImpl(this._self, this._then);

  final _Campaign _self;
  final $Res Function(_Campaign) _then;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? status = freezed,Object? objective = freezed,Object? channel = freezed,Object? budget = freezed,Object? spend = freezed,Object? impressions = freezed,Object? clicks = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? currency = freezed,Object? thumbnail = freezed,Object? ctr = freezed,Object? budgetUtilization = freezed,}) {
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
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,ctr: freezed == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double?,budgetUtilization: freezed == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
