// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpendSummaryModel {

@JsonKey(name: "range") String? get range;@JsonKey(name: "summary") Summary? get summary;
/// Create a copy of SpendSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendSummaryModelCopyWith<SpendSummaryModel> get copyWith => _$SpendSummaryModelCopyWithImpl<SpendSummaryModel>(this as SpendSummaryModel, _$identity);

  /// Serializes this SpendSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendSummaryModel&&(identical(other.range, range) || other.range == range)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,summary);

@override
String toString() {
  return 'SpendSummaryModel(range: $range, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $SpendSummaryModelCopyWith<$Res>  {
  factory $SpendSummaryModelCopyWith(SpendSummaryModel value, $Res Function(SpendSummaryModel) _then) = _$SpendSummaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "range") String? range,@JsonKey(name: "summary") Summary? summary
});


$SummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class _$SpendSummaryModelCopyWithImpl<$Res>
    implements $SpendSummaryModelCopyWith<$Res> {
  _$SpendSummaryModelCopyWithImpl(this._self, this._then);

  final SpendSummaryModel _self;
  final $Res Function(SpendSummaryModel) _then;

/// Create a copy of SpendSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? range = freezed,Object? summary = freezed,}) {
  return _then(_self.copyWith(
range: freezed == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary?,
  ));
}
/// Create a copy of SpendSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $SummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpendSummaryModel].
extension SpendSummaryModelPatterns on SpendSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpendSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpendSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpendSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _SpendSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpendSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpendSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "range")  String? range, @JsonKey(name: "summary")  Summary? summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpendSummaryModel() when $default != null:
return $default(_that.range,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "range")  String? range, @JsonKey(name: "summary")  Summary? summary)  $default,) {final _that = this;
switch (_that) {
case _SpendSummaryModel():
return $default(_that.range,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "range")  String? range, @JsonKey(name: "summary")  Summary? summary)?  $default,) {final _that = this;
switch (_that) {
case _SpendSummaryModel() when $default != null:
return $default(_that.range,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpendSummaryModel implements SpendSummaryModel {
  const _SpendSummaryModel({@JsonKey(name: "range") this.range, @JsonKey(name: "summary") this.summary});
  factory _SpendSummaryModel.fromJson(Map<String, dynamic> json) => _$SpendSummaryModelFromJson(json);

@override@JsonKey(name: "range") final  String? range;
@override@JsonKey(name: "summary") final  Summary? summary;

/// Create a copy of SpendSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpendSummaryModelCopyWith<_SpendSummaryModel> get copyWith => __$SpendSummaryModelCopyWithImpl<_SpendSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpendSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpendSummaryModel&&(identical(other.range, range) || other.range == range)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,summary);

@override
String toString() {
  return 'SpendSummaryModel(range: $range, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$SpendSummaryModelCopyWith<$Res> implements $SpendSummaryModelCopyWith<$Res> {
  factory _$SpendSummaryModelCopyWith(_SpendSummaryModel value, $Res Function(_SpendSummaryModel) _then) = __$SpendSummaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "range") String? range,@JsonKey(name: "summary") Summary? summary
});


@override $SummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class __$SpendSummaryModelCopyWithImpl<$Res>
    implements _$SpendSummaryModelCopyWith<$Res> {
  __$SpendSummaryModelCopyWithImpl(this._self, this._then);

  final _SpendSummaryModel _self;
  final $Res Function(_SpendSummaryModel) _then;

/// Create a copy of SpendSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = freezed,Object? summary = freezed,}) {
  return _then(_SpendSummaryModel(
range: freezed == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary?,
  ));
}

/// Create a copy of SpendSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $SummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$Summary {

@JsonKey(name: "total_spend") int? get totalSpend;@JsonKey(name: "total_impressions") int? get totalImpressions;@JsonKey(name: "total_clicks") int? get totalClicks;@JsonKey(name: "overall_ctr") double? get overallCtr;@JsonKey(name: "by_channel") List<ByChannel>? get byChannel;@JsonKey(name: "top_campaigns") List<TopCampaign>? get topCampaigns;
/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryCopyWith<Summary> get copyWith => _$SummaryCopyWithImpl<Summary>(this as Summary, _$identity);

  /// Serializes this Summary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Summary&&(identical(other.totalSpend, totalSpend) || other.totalSpend == totalSpend)&&(identical(other.totalImpressions, totalImpressions) || other.totalImpressions == totalImpressions)&&(identical(other.totalClicks, totalClicks) || other.totalClicks == totalClicks)&&(identical(other.overallCtr, overallCtr) || other.overallCtr == overallCtr)&&const DeepCollectionEquality().equals(other.byChannel, byChannel)&&const DeepCollectionEquality().equals(other.topCampaigns, topCampaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSpend,totalImpressions,totalClicks,overallCtr,const DeepCollectionEquality().hash(byChannel),const DeepCollectionEquality().hash(topCampaigns));

@override
String toString() {
  return 'Summary(totalSpend: $totalSpend, totalImpressions: $totalImpressions, totalClicks: $totalClicks, overallCtr: $overallCtr, byChannel: $byChannel, topCampaigns: $topCampaigns)';
}


}

/// @nodoc
abstract mixin class $SummaryCopyWith<$Res>  {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) _then) = _$SummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "total_spend") int? totalSpend,@JsonKey(name: "total_impressions") int? totalImpressions,@JsonKey(name: "total_clicks") int? totalClicks,@JsonKey(name: "overall_ctr") double? overallCtr,@JsonKey(name: "by_channel") List<ByChannel>? byChannel,@JsonKey(name: "top_campaigns") List<TopCampaign>? topCampaigns
});




}
/// @nodoc
class _$SummaryCopyWithImpl<$Res>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._self, this._then);

  final Summary _self;
  final $Res Function(Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSpend = freezed,Object? totalImpressions = freezed,Object? totalClicks = freezed,Object? overallCtr = freezed,Object? byChannel = freezed,Object? topCampaigns = freezed,}) {
  return _then(_self.copyWith(
totalSpend: freezed == totalSpend ? _self.totalSpend : totalSpend // ignore: cast_nullable_to_non_nullable
as int?,totalImpressions: freezed == totalImpressions ? _self.totalImpressions : totalImpressions // ignore: cast_nullable_to_non_nullable
as int?,totalClicks: freezed == totalClicks ? _self.totalClicks : totalClicks // ignore: cast_nullable_to_non_nullable
as int?,overallCtr: freezed == overallCtr ? _self.overallCtr : overallCtr // ignore: cast_nullable_to_non_nullable
as double?,byChannel: freezed == byChannel ? _self.byChannel : byChannel // ignore: cast_nullable_to_non_nullable
as List<ByChannel>?,topCampaigns: freezed == topCampaigns ? _self.topCampaigns : topCampaigns // ignore: cast_nullable_to_non_nullable
as List<TopCampaign>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Summary].
extension SummaryPatterns on Summary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Summary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Summary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Summary value)  $default,){
final _that = this;
switch (_that) {
case _Summary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Summary value)?  $default,){
final _that = this;
switch (_that) {
case _Summary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "total_spend")  int? totalSpend, @JsonKey(name: "total_impressions")  int? totalImpressions, @JsonKey(name: "total_clicks")  int? totalClicks, @JsonKey(name: "overall_ctr")  double? overallCtr, @JsonKey(name: "by_channel")  List<ByChannel>? byChannel, @JsonKey(name: "top_campaigns")  List<TopCampaign>? topCampaigns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Summary() when $default != null:
return $default(_that.totalSpend,_that.totalImpressions,_that.totalClicks,_that.overallCtr,_that.byChannel,_that.topCampaigns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "total_spend")  int? totalSpend, @JsonKey(name: "total_impressions")  int? totalImpressions, @JsonKey(name: "total_clicks")  int? totalClicks, @JsonKey(name: "overall_ctr")  double? overallCtr, @JsonKey(name: "by_channel")  List<ByChannel>? byChannel, @JsonKey(name: "top_campaigns")  List<TopCampaign>? topCampaigns)  $default,) {final _that = this;
switch (_that) {
case _Summary():
return $default(_that.totalSpend,_that.totalImpressions,_that.totalClicks,_that.overallCtr,_that.byChannel,_that.topCampaigns);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "total_spend")  int? totalSpend, @JsonKey(name: "total_impressions")  int? totalImpressions, @JsonKey(name: "total_clicks")  int? totalClicks, @JsonKey(name: "overall_ctr")  double? overallCtr, @JsonKey(name: "by_channel")  List<ByChannel>? byChannel, @JsonKey(name: "top_campaigns")  List<TopCampaign>? topCampaigns)?  $default,) {final _that = this;
switch (_that) {
case _Summary() when $default != null:
return $default(_that.totalSpend,_that.totalImpressions,_that.totalClicks,_that.overallCtr,_that.byChannel,_that.topCampaigns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Summary implements Summary {
  const _Summary({@JsonKey(name: "total_spend") this.totalSpend, @JsonKey(name: "total_impressions") this.totalImpressions, @JsonKey(name: "total_clicks") this.totalClicks, @JsonKey(name: "overall_ctr") this.overallCtr, @JsonKey(name: "by_channel") final  List<ByChannel>? byChannel, @JsonKey(name: "top_campaigns") final  List<TopCampaign>? topCampaigns}): _byChannel = byChannel,_topCampaigns = topCampaigns;
  factory _Summary.fromJson(Map<String, dynamic> json) => _$SummaryFromJson(json);

@override@JsonKey(name: "total_spend") final  int? totalSpend;
@override@JsonKey(name: "total_impressions") final  int? totalImpressions;
@override@JsonKey(name: "total_clicks") final  int? totalClicks;
@override@JsonKey(name: "overall_ctr") final  double? overallCtr;
 final  List<ByChannel>? _byChannel;
@override@JsonKey(name: "by_channel") List<ByChannel>? get byChannel {
  final value = _byChannel;
  if (value == null) return null;
  if (_byChannel is EqualUnmodifiableListView) return _byChannel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TopCampaign>? _topCampaigns;
@override@JsonKey(name: "top_campaigns") List<TopCampaign>? get topCampaigns {
  final value = _topCampaigns;
  if (value == null) return null;
  if (_topCampaigns is EqualUnmodifiableListView) return _topCampaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryCopyWith<_Summary> get copyWith => __$SummaryCopyWithImpl<_Summary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Summary&&(identical(other.totalSpend, totalSpend) || other.totalSpend == totalSpend)&&(identical(other.totalImpressions, totalImpressions) || other.totalImpressions == totalImpressions)&&(identical(other.totalClicks, totalClicks) || other.totalClicks == totalClicks)&&(identical(other.overallCtr, overallCtr) || other.overallCtr == overallCtr)&&const DeepCollectionEquality().equals(other._byChannel, _byChannel)&&const DeepCollectionEquality().equals(other._topCampaigns, _topCampaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSpend,totalImpressions,totalClicks,overallCtr,const DeepCollectionEquality().hash(_byChannel),const DeepCollectionEquality().hash(_topCampaigns));

@override
String toString() {
  return 'Summary(totalSpend: $totalSpend, totalImpressions: $totalImpressions, totalClicks: $totalClicks, overallCtr: $overallCtr, byChannel: $byChannel, topCampaigns: $topCampaigns)';
}


}

/// @nodoc
abstract mixin class _$SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$SummaryCopyWith(_Summary value, $Res Function(_Summary) _then) = __$SummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "total_spend") int? totalSpend,@JsonKey(name: "total_impressions") int? totalImpressions,@JsonKey(name: "total_clicks") int? totalClicks,@JsonKey(name: "overall_ctr") double? overallCtr,@JsonKey(name: "by_channel") List<ByChannel>? byChannel,@JsonKey(name: "top_campaigns") List<TopCampaign>? topCampaigns
});




}
/// @nodoc
class __$SummaryCopyWithImpl<$Res>
    implements _$SummaryCopyWith<$Res> {
  __$SummaryCopyWithImpl(this._self, this._then);

  final _Summary _self;
  final $Res Function(_Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSpend = freezed,Object? totalImpressions = freezed,Object? totalClicks = freezed,Object? overallCtr = freezed,Object? byChannel = freezed,Object? topCampaigns = freezed,}) {
  return _then(_Summary(
totalSpend: freezed == totalSpend ? _self.totalSpend : totalSpend // ignore: cast_nullable_to_non_nullable
as int?,totalImpressions: freezed == totalImpressions ? _self.totalImpressions : totalImpressions // ignore: cast_nullable_to_non_nullable
as int?,totalClicks: freezed == totalClicks ? _self.totalClicks : totalClicks // ignore: cast_nullable_to_non_nullable
as int?,overallCtr: freezed == overallCtr ? _self.overallCtr : overallCtr // ignore: cast_nullable_to_non_nullable
as double?,byChannel: freezed == byChannel ? _self._byChannel : byChannel // ignore: cast_nullable_to_non_nullable
as List<ByChannel>?,topCampaigns: freezed == topCampaigns ? _self._topCampaigns : topCampaigns // ignore: cast_nullable_to_non_nullable
as List<TopCampaign>?,
  ));
}


}


/// @nodoc
mixin _$ByChannel {

@JsonKey(name: "channel") String? get channel;@JsonKey(name: "spend") int? get spend;@JsonKey(name: "impressions") int? get impressions;@JsonKey(name: "clicks") int? get clicks;
/// Create a copy of ByChannel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ByChannelCopyWith<ByChannel> get copyWith => _$ByChannelCopyWithImpl<ByChannel>(this as ByChannel, _$identity);

  /// Serializes this ByChannel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ByChannel&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,spend,impressions,clicks);

@override
String toString() {
  return 'ByChannel(channel: $channel, spend: $spend, impressions: $impressions, clicks: $clicks)';
}


}

/// @nodoc
abstract mixin class $ByChannelCopyWith<$Res>  {
  factory $ByChannelCopyWith(ByChannel value, $Res Function(ByChannel) _then) = _$ByChannelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "channel") String? channel,@JsonKey(name: "spend") int? spend,@JsonKey(name: "impressions") int? impressions,@JsonKey(name: "clicks") int? clicks
});




}
/// @nodoc
class _$ByChannelCopyWithImpl<$Res>
    implements $ByChannelCopyWith<$Res> {
  _$ByChannelCopyWithImpl(this._self, this._then);

  final ByChannel _self;
  final $Res Function(ByChannel) _then;

/// Create a copy of ByChannel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channel = freezed,Object? spend = freezed,Object? impressions = freezed,Object? clicks = freezed,}) {
  return _then(_self.copyWith(
channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,spend: freezed == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int?,impressions: freezed == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int?,clicks: freezed == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ByChannel].
extension ByChannelPatterns on ByChannel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ByChannel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ByChannel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ByChannel value)  $default,){
final _that = this;
switch (_that) {
case _ByChannel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ByChannel value)?  $default,){
final _that = this;
switch (_that) {
case _ByChannel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "channel")  String? channel, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ByChannel() when $default != null:
return $default(_that.channel,_that.spend,_that.impressions,_that.clicks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "channel")  String? channel, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks)  $default,) {final _that = this;
switch (_that) {
case _ByChannel():
return $default(_that.channel,_that.spend,_that.impressions,_that.clicks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "channel")  String? channel, @JsonKey(name: "spend")  int? spend, @JsonKey(name: "impressions")  int? impressions, @JsonKey(name: "clicks")  int? clicks)?  $default,) {final _that = this;
switch (_that) {
case _ByChannel() when $default != null:
return $default(_that.channel,_that.spend,_that.impressions,_that.clicks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ByChannel implements ByChannel {
  const _ByChannel({@JsonKey(name: "channel") this.channel, @JsonKey(name: "spend") this.spend, @JsonKey(name: "impressions") this.impressions, @JsonKey(name: "clicks") this.clicks});
  factory _ByChannel.fromJson(Map<String, dynamic> json) => _$ByChannelFromJson(json);

@override@JsonKey(name: "channel") final  String? channel;
@override@JsonKey(name: "spend") final  int? spend;
@override@JsonKey(name: "impressions") final  int? impressions;
@override@JsonKey(name: "clicks") final  int? clicks;

/// Create a copy of ByChannel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ByChannelCopyWith<_ByChannel> get copyWith => __$ByChannelCopyWithImpl<_ByChannel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ByChannelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ByChannel&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,spend,impressions,clicks);

@override
String toString() {
  return 'ByChannel(channel: $channel, spend: $spend, impressions: $impressions, clicks: $clicks)';
}


}

/// @nodoc
abstract mixin class _$ByChannelCopyWith<$Res> implements $ByChannelCopyWith<$Res> {
  factory _$ByChannelCopyWith(_ByChannel value, $Res Function(_ByChannel) _then) = __$ByChannelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "channel") String? channel,@JsonKey(name: "spend") int? spend,@JsonKey(name: "impressions") int? impressions,@JsonKey(name: "clicks") int? clicks
});




}
/// @nodoc
class __$ByChannelCopyWithImpl<$Res>
    implements _$ByChannelCopyWith<$Res> {
  __$ByChannelCopyWithImpl(this._self, this._then);

  final _ByChannel _self;
  final $Res Function(_ByChannel) _then;

/// Create a copy of ByChannel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channel = freezed,Object? spend = freezed,Object? impressions = freezed,Object? clicks = freezed,}) {
  return _then(_ByChannel(
channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,spend: freezed == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int?,impressions: freezed == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int?,clicks: freezed == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$TopCampaign {

@JsonKey(name: "id") String? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "ctr") double? get ctr;@JsonKey(name: "spend") int? get spend;
/// Create a copy of TopCampaign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopCampaignCopyWith<TopCampaign> get copyWith => _$TopCampaignCopyWithImpl<TopCampaign>(this as TopCampaign, _$identity);

  /// Serializes this TopCampaign to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCampaign&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.spend, spend) || other.spend == spend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ctr,spend);

@override
String toString() {
  return 'TopCampaign(id: $id, name: $name, ctr: $ctr, spend: $spend)';
}


}

/// @nodoc
abstract mixin class $TopCampaignCopyWith<$Res>  {
  factory $TopCampaignCopyWith(TopCampaign value, $Res Function(TopCampaign) _then) = _$TopCampaignCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "ctr") double? ctr,@JsonKey(name: "spend") int? spend
});




}
/// @nodoc
class _$TopCampaignCopyWithImpl<$Res>
    implements $TopCampaignCopyWith<$Res> {
  _$TopCampaignCopyWithImpl(this._self, this._then);

  final TopCampaign _self;
  final $Res Function(TopCampaign) _then;

/// Create a copy of TopCampaign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? ctr = freezed,Object? spend = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ctr: freezed == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double?,spend: freezed == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TopCampaign].
extension TopCampaignPatterns on TopCampaign {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopCampaign value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopCampaign() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopCampaign value)  $default,){
final _that = this;
switch (_that) {
case _TopCampaign():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopCampaign value)?  $default,){
final _that = this;
switch (_that) {
case _TopCampaign() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "spend")  int? spend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopCampaign() when $default != null:
return $default(_that.id,_that.name,_that.ctr,_that.spend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "spend")  int? spend)  $default,) {final _that = this;
switch (_that) {
case _TopCampaign():
return $default(_that.id,_that.name,_that.ctr,_that.spend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "ctr")  double? ctr, @JsonKey(name: "spend")  int? spend)?  $default,) {final _that = this;
switch (_that) {
case _TopCampaign() when $default != null:
return $default(_that.id,_that.name,_that.ctr,_that.spend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopCampaign implements TopCampaign {
  const _TopCampaign({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "ctr") this.ctr, @JsonKey(name: "spend") this.spend});
  factory _TopCampaign.fromJson(Map<String, dynamic> json) => _$TopCampaignFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "ctr") final  double? ctr;
@override@JsonKey(name: "spend") final  int? spend;

/// Create a copy of TopCampaign
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopCampaignCopyWith<_TopCampaign> get copyWith => __$TopCampaignCopyWithImpl<_TopCampaign>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopCampaignToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCampaign&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.spend, spend) || other.spend == spend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ctr,spend);

@override
String toString() {
  return 'TopCampaign(id: $id, name: $name, ctr: $ctr, spend: $spend)';
}


}

/// @nodoc
abstract mixin class _$TopCampaignCopyWith<$Res> implements $TopCampaignCopyWith<$Res> {
  factory _$TopCampaignCopyWith(_TopCampaign value, $Res Function(_TopCampaign) _then) = __$TopCampaignCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "name") String? name,@JsonKey(name: "ctr") double? ctr,@JsonKey(name: "spend") int? spend
});




}
/// @nodoc
class __$TopCampaignCopyWithImpl<$Res>
    implements _$TopCampaignCopyWith<$Res> {
  __$TopCampaignCopyWithImpl(this._self, this._then);

  final _TopCampaign _self;
  final $Res Function(_TopCampaign) _then;

/// Create a copy of TopCampaign
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? ctr = freezed,Object? spend = freezed,}) {
  return _then(_TopCampaign(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ctr: freezed == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double?,spend: freezed == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
