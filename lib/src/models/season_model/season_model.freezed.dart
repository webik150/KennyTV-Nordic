// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Season {

 String get url; String get shortId; int get number; String get seasonId; String get encodedSeasonId;
/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonCopyWith<Season> get copyWith => _$SeasonCopyWithImpl<Season>(this as Season, _$identity);

  /// Serializes this Season to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Season;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Season&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.shortId, _this.shortId) || other.shortId == _this.shortId)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.seasonId, _this.seasonId) || other.seasonId == _this.seasonId)&&(identical(other.encodedSeasonId, _this.encodedSeasonId) || other.encodedSeasonId == _this.encodedSeasonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Season;
  return Object.hash(runtimeType,_this.url,_this.shortId,_this.number,_this.seasonId,_this.encodedSeasonId);
}

@override
String toString() {
  final _this = this as Season;
  return 'Season(url: ${_this.url}, shortId: ${_this.shortId}, number: ${_this.number}, seasonId: ${_this.seasonId}, encodedSeasonId: ${_this.encodedSeasonId})';
}


}

/// @nodoc
abstract mixin class $SeasonCopyWith<$Res>  {
  factory $SeasonCopyWith(Season value, $Res Function(Season) _then) = _$SeasonCopyWithImpl;
@useResult
$Res call({
 String url, String shortId, int number, String seasonId, String encodedSeasonId
});




}
/// @nodoc
class _$SeasonCopyWithImpl<$Res>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._self, this._then);

  final Season _self;
  final $Res Function(Season) _then;

/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? shortId = null,Object? number = null,Object? seasonId = null,Object? encodedSeasonId = null,}) {
  return _then(Season(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,shortId: null == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,seasonId: null == seasonId ? _self.seasonId : seasonId // ignore: cast_nullable_to_non_nullable
as String,encodedSeasonId: null == encodedSeasonId ? _self.encodedSeasonId : encodedSeasonId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Season].
extension SeasonPatterns on Season {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Season value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Season() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Season value)  $default,){
final _that = this;
switch (_that) {
case _Season():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Season value)?  $default,){
final _that = this;
switch (_that) {
case _Season() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String shortId,  int number,  String seasonId,  String encodedSeasonId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Season() when $default != null:
return $default(_that.url,_that.shortId,_that.number,_that.seasonId,_that.encodedSeasonId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String shortId,  int number,  String seasonId,  String encodedSeasonId)  $default,) {final _that = this;
switch (_that) {
case _Season():
return $default(_that.url,_that.shortId,_that.number,_that.seasonId,_that.encodedSeasonId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String shortId,  int number,  String seasonId,  String encodedSeasonId)?  $default,) {final _that = this;
switch (_that) {
case _Season() when $default != null:
return $default(_that.url,_that.shortId,_that.number,_that.seasonId,_that.encodedSeasonId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Season implements Season {
   _Season({required this.url, required this.shortId, required this.number, required this.seasonId, required this.encodedSeasonId});
  factory _Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

@override final  String url;
@override final  String shortId;
@override final  int number;
@override final  String seasonId;
@override final  String encodedSeasonId;

/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeasonCopyWith<_Season> get copyWith => __$SeasonCopyWithImpl<_Season>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeasonToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Season&&(identical(other.url, url) || other.url == url)&&(identical(other.shortId, shortId) || other.shortId == shortId)&&(identical(other.number, number) || other.number == number)&&(identical(other.seasonId, seasonId) || other.seasonId == seasonId)&&(identical(other.encodedSeasonId, encodedSeasonId) || other.encodedSeasonId == encodedSeasonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,url,shortId,number,seasonId,encodedSeasonId);
}

@override
String toString() {
    return 'Season(url: $url, shortId: $shortId, number: $number, seasonId: $seasonId, encodedSeasonId: $encodedSeasonId)';
}


}

/// @nodoc
abstract mixin class _$SeasonCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$SeasonCopyWith(_Season value, $Res Function(_Season) _then) = __$SeasonCopyWithImpl;
@override @useResult
$Res call({
 String url, String shortId, int number, String seasonId, String encodedSeasonId
});




}
/// @nodoc
class __$SeasonCopyWithImpl<$Res>
    implements _$SeasonCopyWith<$Res> {
  __$SeasonCopyWithImpl(this._self, this._then);

  final _Season _self;
  final $Res Function(_Season) _then;

/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? shortId = null,Object? number = null,Object? seasonId = null,Object? encodedSeasonId = null,}) {
  return _then(_Season(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,shortId: null == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,seasonId: null == seasonId ? _self.seasonId : seasonId // ignore: cast_nullable_to_non_nullable
as String,encodedSeasonId: null == encodedSeasonId ? _self.encodedSeasonId : encodedSeasonId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
