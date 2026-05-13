// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'historical_ctr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HistoricalCtrModel {

@JsonKey(name: "campaign_id") String get campaignId;@JsonKey(name: "data_points") int get dataPoints;@JsonKey(name: "history") List<History> get history;
/// Create a copy of HistoricalCtrModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoricalCtrModelCopyWith<HistoricalCtrModel> get copyWith => _$HistoricalCtrModelCopyWithImpl<HistoricalCtrModel>(this as HistoricalCtrModel, _$identity);

  /// Serializes this HistoricalCtrModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoricalCtrModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.dataPoints, dataPoints) || other.dataPoints == dataPoints)&&const DeepCollectionEquality().equals(other.history, history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,dataPoints,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'HistoricalCtrModel(campaignId: $campaignId, dataPoints: $dataPoints, history: $history)';
}


}

/// @nodoc
abstract mixin class $HistoricalCtrModelCopyWith<$Res>  {
  factory $HistoricalCtrModelCopyWith(HistoricalCtrModel value, $Res Function(HistoricalCtrModel) _then) = _$HistoricalCtrModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "campaign_id") String campaignId,@JsonKey(name: "data_points") int dataPoints,@JsonKey(name: "history") List<History> history
});




}
/// @nodoc
class _$HistoricalCtrModelCopyWithImpl<$Res>
    implements $HistoricalCtrModelCopyWith<$Res> {
  _$HistoricalCtrModelCopyWithImpl(this._self, this._then);

  final HistoricalCtrModel _self;
  final $Res Function(HistoricalCtrModel) _then;

/// Create a copy of HistoricalCtrModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaignId = null,Object? dataPoints = null,Object? history = null,}) {
  return _then(_self.copyWith(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,dataPoints: null == dataPoints ? _self.dataPoints : dataPoints // ignore: cast_nullable_to_non_nullable
as int,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<History>,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoricalCtrModel].
extension HistoricalCtrModelPatterns on HistoricalCtrModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoricalCtrModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoricalCtrModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoricalCtrModel value)  $default,){
final _that = this;
switch (_that) {
case _HistoricalCtrModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoricalCtrModel value)?  $default,){
final _that = this;
switch (_that) {
case _HistoricalCtrModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "campaign_id")  String campaignId, @JsonKey(name: "data_points")  int dataPoints, @JsonKey(name: "history")  List<History> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoricalCtrModel() when $default != null:
return $default(_that.campaignId,_that.dataPoints,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "campaign_id")  String campaignId, @JsonKey(name: "data_points")  int dataPoints, @JsonKey(name: "history")  List<History> history)  $default,) {final _that = this;
switch (_that) {
case _HistoricalCtrModel():
return $default(_that.campaignId,_that.dataPoints,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "campaign_id")  String campaignId, @JsonKey(name: "data_points")  int dataPoints, @JsonKey(name: "history")  List<History> history)?  $default,) {final _that = this;
switch (_that) {
case _HistoricalCtrModel() when $default != null:
return $default(_that.campaignId,_that.dataPoints,_that.history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HistoricalCtrModel implements HistoricalCtrModel {
  const _HistoricalCtrModel({@JsonKey(name: "campaign_id") required this.campaignId, @JsonKey(name: "data_points") required this.dataPoints, @JsonKey(name: "history") required final  List<History> history}): _history = history;
  factory _HistoricalCtrModel.fromJson(Map<String, dynamic> json) => _$HistoricalCtrModelFromJson(json);

@override@JsonKey(name: "campaign_id") final  String campaignId;
@override@JsonKey(name: "data_points") final  int dataPoints;
 final  List<History> _history;
@override@JsonKey(name: "history") List<History> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of HistoricalCtrModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoricalCtrModelCopyWith<_HistoricalCtrModel> get copyWith => __$HistoricalCtrModelCopyWithImpl<_HistoricalCtrModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoricalCtrModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoricalCtrModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.dataPoints, dataPoints) || other.dataPoints == dataPoints)&&const DeepCollectionEquality().equals(other._history, _history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,dataPoints,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'HistoricalCtrModel(campaignId: $campaignId, dataPoints: $dataPoints, history: $history)';
}


}

/// @nodoc
abstract mixin class _$HistoricalCtrModelCopyWith<$Res> implements $HistoricalCtrModelCopyWith<$Res> {
  factory _$HistoricalCtrModelCopyWith(_HistoricalCtrModel value, $Res Function(_HistoricalCtrModel) _then) = __$HistoricalCtrModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "campaign_id") String campaignId,@JsonKey(name: "data_points") int dataPoints,@JsonKey(name: "history") List<History> history
});




}
/// @nodoc
class __$HistoricalCtrModelCopyWithImpl<$Res>
    implements _$HistoricalCtrModelCopyWith<$Res> {
  __$HistoricalCtrModelCopyWithImpl(this._self, this._then);

  final _HistoricalCtrModel _self;
  final $Res Function(_HistoricalCtrModel) _then;

/// Create a copy of HistoricalCtrModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? dataPoints = null,Object? history = null,}) {
  return _then(_HistoricalCtrModel(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,dataPoints: null == dataPoints ? _self.dataPoints : dataPoints // ignore: cast_nullable_to_non_nullable
as int,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<History>,
  ));
}


}


/// @nodoc
mixin _$History {

@JsonKey(name: "date") DateTime get date;@JsonKey(name: "impressions") int get impressions;@JsonKey(name: "clicks") int get clicks;@JsonKey(name: "ctr") double get ctr;
/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryCopyWith<History> get copyWith => _$HistoryCopyWithImpl<History>(this as History, _$identity);

  /// Serializes this History to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is History&&(identical(other.date, date) || other.date == date)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.ctr, ctr) || other.ctr == ctr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,impressions,clicks,ctr);

@override
String toString() {
  return 'History(date: $date, impressions: $impressions, clicks: $clicks, ctr: $ctr)';
}


}

/// @nodoc
abstract mixin class $HistoryCopyWith<$Res>  {
  factory $HistoryCopyWith(History value, $Res Function(History) _then) = _$HistoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "date") DateTime date,@JsonKey(name: "impressions") int impressions,@JsonKey(name: "clicks") int clicks,@JsonKey(name: "ctr") double ctr
});




}
/// @nodoc
class _$HistoryCopyWithImpl<$Res>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._self, this._then);

  final History _self;
  final $Res Function(History) _then;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? impressions = null,Object? clicks = null,Object? ctr = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [History].
extension HistoryPatterns on History {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _History value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _History() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _History value)  $default,){
final _that = this;
switch (_that) {
case _History():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _History value)?  $default,){
final _that = this;
switch (_that) {
case _History() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "date")  DateTime date, @JsonKey(name: "impressions")  int impressions, @JsonKey(name: "clicks")  int clicks, @JsonKey(name: "ctr")  double ctr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _History() when $default != null:
return $default(_that.date,_that.impressions,_that.clicks,_that.ctr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "date")  DateTime date, @JsonKey(name: "impressions")  int impressions, @JsonKey(name: "clicks")  int clicks, @JsonKey(name: "ctr")  double ctr)  $default,) {final _that = this;
switch (_that) {
case _History():
return $default(_that.date,_that.impressions,_that.clicks,_that.ctr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "date")  DateTime date, @JsonKey(name: "impressions")  int impressions, @JsonKey(name: "clicks")  int clicks, @JsonKey(name: "ctr")  double ctr)?  $default,) {final _that = this;
switch (_that) {
case _History() when $default != null:
return $default(_that.date,_that.impressions,_that.clicks,_that.ctr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _History implements History {
  const _History({@JsonKey(name: "date") required this.date, @JsonKey(name: "impressions") required this.impressions, @JsonKey(name: "clicks") required this.clicks, @JsonKey(name: "ctr") required this.ctr});
  factory _History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);

@override@JsonKey(name: "date") final  DateTime date;
@override@JsonKey(name: "impressions") final  int impressions;
@override@JsonKey(name: "clicks") final  int clicks;
@override@JsonKey(name: "ctr") final  double ctr;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryCopyWith<_History> get copyWith => __$HistoryCopyWithImpl<_History>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _History&&(identical(other.date, date) || other.date == date)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.ctr, ctr) || other.ctr == ctr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,impressions,clicks,ctr);

@override
String toString() {
  return 'History(date: $date, impressions: $impressions, clicks: $clicks, ctr: $ctr)';
}


}

/// @nodoc
abstract mixin class _$HistoryCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$HistoryCopyWith(_History value, $Res Function(_History) _then) = __$HistoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "date") DateTime date,@JsonKey(name: "impressions") int impressions,@JsonKey(name: "clicks") int clicks,@JsonKey(name: "ctr") double ctr
});




}
/// @nodoc
class __$HistoryCopyWithImpl<$Res>
    implements _$HistoryCopyWith<$Res> {
  __$HistoryCopyWithImpl(this._self, this._then);

  final _History _self;
  final $Res Function(_History) _then;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? impressions = null,Object? clicks = null,Object? ctr = null,}) {
  return _then(_History(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
