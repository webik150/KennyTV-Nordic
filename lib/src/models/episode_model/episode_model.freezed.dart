// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpisodeMediaImage {

 String get url;
/// Create a copy of EpisodeMediaImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeMediaImageCopyWith<EpisodeMediaImage> get copyWith => _$EpisodeMediaImageCopyWithImpl<EpisodeMediaImage>(this as EpisodeMediaImage, _$identity);

  /// Serializes this EpisodeMediaImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EpisodeMediaImage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeMediaImage&&(identical(other.url, _this.url) || other.url == _this.url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EpisodeMediaImage;
  return Object.hash(runtimeType,_this.url);
}

@override
String toString() {
  final _this = this as EpisodeMediaImage;
  return 'EpisodeMediaImage(url: ${_this.url})';
}


}

/// @nodoc
abstract mixin class $EpisodeMediaImageCopyWith<$Res>  {
  factory $EpisodeMediaImageCopyWith(EpisodeMediaImage value, $Res Function(EpisodeMediaImage) _then) = _$EpisodeMediaImageCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$EpisodeMediaImageCopyWithImpl<$Res>
    implements $EpisodeMediaImageCopyWith<$Res> {
  _$EpisodeMediaImageCopyWithImpl(this._self, this._then);

  final EpisodeMediaImage _self;
  final $Res Function(EpisodeMediaImage) _then;

/// Create a copy of EpisodeMediaImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(EpisodeMediaImage(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EpisodeMediaImage].
extension EpisodeMediaImagePatterns on EpisodeMediaImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpisodeMediaImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpisodeMediaImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpisodeMediaImage value)  $default,){
final _that = this;
switch (_that) {
case _EpisodeMediaImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpisodeMediaImage value)?  $default,){
final _that = this;
switch (_that) {
case _EpisodeMediaImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpisodeMediaImage() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url)  $default,) {final _that = this;
switch (_that) {
case _EpisodeMediaImage():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url)?  $default,) {final _that = this;
switch (_that) {
case _EpisodeMediaImage() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpisodeMediaImage implements EpisodeMediaImage {
   _EpisodeMediaImage({required this.url});
  factory _EpisodeMediaImage.fromJson(Map<String, dynamic> json) => _$EpisodeMediaImageFromJson(json);

@override final  String url;

/// Create a copy of EpisodeMediaImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeMediaImageCopyWith<_EpisodeMediaImage> get copyWith => __$EpisodeMediaImageCopyWithImpl<_EpisodeMediaImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeMediaImageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeMediaImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,url);
}

@override
String toString() {
    return 'EpisodeMediaImage(url: $url)';
}


}

/// @nodoc
abstract mixin class _$EpisodeMediaImageCopyWith<$Res> implements $EpisodeMediaImageCopyWith<$Res> {
  factory _$EpisodeMediaImageCopyWith(_EpisodeMediaImage value, $Res Function(_EpisodeMediaImage) _then) = __$EpisodeMediaImageCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$EpisodeMediaImageCopyWithImpl<$Res>
    implements _$EpisodeMediaImageCopyWith<$Res> {
  __$EpisodeMediaImageCopyWithImpl(this._self, this._then);

  final _EpisodeMediaImage _self;
  final $Res Function(_EpisodeMediaImage) _then;

/// Create a copy of EpisodeMediaImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_EpisodeMediaImage(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EpisodeMedia {

 String get duration; EpisodeMediaImage get image;
/// Create a copy of EpisodeMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeMediaCopyWith<EpisodeMedia> get copyWith => _$EpisodeMediaCopyWithImpl<EpisodeMedia>(this as EpisodeMedia, _$identity);

  /// Serializes this EpisodeMedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EpisodeMedia;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeMedia&&(identical(other.duration, _this.duration) || other.duration == _this.duration)&&(identical(other.image, _this.image) || other.image == _this.image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EpisodeMedia;
  return Object.hash(runtimeType,_this.duration,_this.image);
}

@override
String toString() {
  final _this = this as EpisodeMedia;
  return 'EpisodeMedia(duration: ${_this.duration}, image: ${_this.image})';
}


}

/// @nodoc
abstract mixin class $EpisodeMediaCopyWith<$Res>  {
  factory $EpisodeMediaCopyWith(EpisodeMedia value, $Res Function(EpisodeMedia) _then) = _$EpisodeMediaCopyWithImpl;
@useResult
$Res call({
 String duration, EpisodeMediaImage image
});


$EpisodeMediaImageCopyWith<$Res> get image;

}
/// @nodoc
class _$EpisodeMediaCopyWithImpl<$Res>
    implements $EpisodeMediaCopyWith<$Res> {
  _$EpisodeMediaCopyWithImpl(this._self, this._then);

  final EpisodeMedia _self;
  final $Res Function(EpisodeMedia) _then;

/// Create a copy of EpisodeMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? duration = null,Object? image = null,}) {
  return _then(EpisodeMedia(
duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as EpisodeMediaImage,
  ));
}
/// Create a copy of EpisodeMedia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodeMediaImageCopyWith<$Res> get image {
  
  return $EpisodeMediaImageCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [EpisodeMedia].
extension EpisodeMediaPatterns on EpisodeMedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpisodeMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpisodeMedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpisodeMedia value)  $default,){
final _that = this;
switch (_that) {
case _EpisodeMedia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpisodeMedia value)?  $default,){
final _that = this;
switch (_that) {
case _EpisodeMedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String duration,  EpisodeMediaImage image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpisodeMedia() when $default != null:
return $default(_that.duration,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String duration,  EpisodeMediaImage image)  $default,) {final _that = this;
switch (_that) {
case _EpisodeMedia():
return $default(_that.duration,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String duration,  EpisodeMediaImage image)?  $default,) {final _that = this;
switch (_that) {
case _EpisodeMedia() when $default != null:
return $default(_that.duration,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpisodeMedia implements EpisodeMedia {
   _EpisodeMedia({required this.duration, required this.image});
  factory _EpisodeMedia.fromJson(Map<String, dynamic> json) => _$EpisodeMediaFromJson(json);

@override final  String duration;
@override final  EpisodeMediaImage image;

/// Create a copy of EpisodeMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeMediaCopyWith<_EpisodeMedia> get copyWith => __$EpisodeMediaCopyWithImpl<_EpisodeMedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeMediaToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeMedia&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,duration,image);
}

@override
String toString() {
    return 'EpisodeMedia(duration: $duration, image: $image)';
}


}

/// @nodoc
abstract mixin class _$EpisodeMediaCopyWith<$Res> implements $EpisodeMediaCopyWith<$Res> {
  factory _$EpisodeMediaCopyWith(_EpisodeMedia value, $Res Function(_EpisodeMedia) _then) = __$EpisodeMediaCopyWithImpl;
@override @useResult
$Res call({
 String duration, EpisodeMediaImage image
});


@override $EpisodeMediaImageCopyWith<$Res> get image;

}
/// @nodoc
class __$EpisodeMediaCopyWithImpl<$Res>
    implements _$EpisodeMediaCopyWith<$Res> {
  __$EpisodeMediaCopyWithImpl(this._self, this._then);

  final _EpisodeMedia _self;
  final $Res Function(_EpisodeMedia) _then;

/// Create a copy of EpisodeMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? duration = null,Object? image = null,}) {
  return _then(_EpisodeMedia(
duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as EpisodeMediaImage,
  ));
}

/// Create a copy of EpisodeMedia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodeMediaImageCopyWith<$Res> get image {
  
  return $EpisodeMediaImageCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
mixin _$EpisodeMeta {

 String get subHeader; String get description; String get date; String get seasonMgid;
/// Create a copy of EpisodeMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeMetaCopyWith<EpisodeMeta> get copyWith => _$EpisodeMetaCopyWithImpl<EpisodeMeta>(this as EpisodeMeta, _$identity);

  /// Serializes this EpisodeMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EpisodeMeta;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeMeta&&(identical(other.subHeader, _this.subHeader) || other.subHeader == _this.subHeader)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.seasonMgid, _this.seasonMgid) || other.seasonMgid == _this.seasonMgid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EpisodeMeta;
  return Object.hash(runtimeType,_this.subHeader,_this.description,_this.date,_this.seasonMgid);
}

@override
String toString() {
  final _this = this as EpisodeMeta;
  return 'EpisodeMeta(subHeader: ${_this.subHeader}, description: ${_this.description}, date: ${_this.date}, seasonMgid: ${_this.seasonMgid})';
}


}

/// @nodoc
abstract mixin class $EpisodeMetaCopyWith<$Res>  {
  factory $EpisodeMetaCopyWith(EpisodeMeta value, $Res Function(EpisodeMeta) _then) = _$EpisodeMetaCopyWithImpl;
@useResult
$Res call({
 String subHeader, String description, String date, String seasonMgid
});




}
/// @nodoc
class _$EpisodeMetaCopyWithImpl<$Res>
    implements $EpisodeMetaCopyWith<$Res> {
  _$EpisodeMetaCopyWithImpl(this._self, this._then);

  final EpisodeMeta _self;
  final $Res Function(EpisodeMeta) _then;

/// Create a copy of EpisodeMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subHeader = null,Object? description = null,Object? date = null,Object? seasonMgid = null,}) {
  return _then(EpisodeMeta(
subHeader: null == subHeader ? _self.subHeader : subHeader // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,seasonMgid: null == seasonMgid ? _self.seasonMgid : seasonMgid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EpisodeMeta].
extension EpisodeMetaPatterns on EpisodeMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpisodeMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpisodeMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpisodeMeta value)  $default,){
final _that = this;
switch (_that) {
case _EpisodeMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpisodeMeta value)?  $default,){
final _that = this;
switch (_that) {
case _EpisodeMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subHeader,  String description,  String date,  String seasonMgid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpisodeMeta() when $default != null:
return $default(_that.subHeader,_that.description,_that.date,_that.seasonMgid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subHeader,  String description,  String date,  String seasonMgid)  $default,) {final _that = this;
switch (_that) {
case _EpisodeMeta():
return $default(_that.subHeader,_that.description,_that.date,_that.seasonMgid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subHeader,  String description,  String date,  String seasonMgid)?  $default,) {final _that = this;
switch (_that) {
case _EpisodeMeta() when $default != null:
return $default(_that.subHeader,_that.description,_that.date,_that.seasonMgid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpisodeMeta implements EpisodeMeta {
   _EpisodeMeta({required this.subHeader, required this.description, required this.date, required this.seasonMgid});
  factory _EpisodeMeta.fromJson(Map<String, dynamic> json) => _$EpisodeMetaFromJson(json);

@override final  String subHeader;
@override final  String description;
@override final  String date;
@override final  String seasonMgid;

/// Create a copy of EpisodeMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeMetaCopyWith<_EpisodeMeta> get copyWith => __$EpisodeMetaCopyWithImpl<_EpisodeMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeMetaToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeMeta&&(identical(other.subHeader, subHeader) || other.subHeader == subHeader)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.seasonMgid, seasonMgid) || other.seasonMgid == seasonMgid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subHeader,description,date,seasonMgid);
}

@override
String toString() {
    return 'EpisodeMeta(subHeader: $subHeader, description: $description, date: $date, seasonMgid: $seasonMgid)';
}


}

/// @nodoc
abstract mixin class _$EpisodeMetaCopyWith<$Res> implements $EpisodeMetaCopyWith<$Res> {
  factory _$EpisodeMetaCopyWith(_EpisodeMeta value, $Res Function(_EpisodeMeta) _then) = __$EpisodeMetaCopyWithImpl;
@override @useResult
$Res call({
 String subHeader, String description, String date, String seasonMgid
});




}
/// @nodoc
class __$EpisodeMetaCopyWithImpl<$Res>
    implements _$EpisodeMetaCopyWith<$Res> {
  __$EpisodeMetaCopyWithImpl(this._self, this._then);

  final _EpisodeMeta _self;
  final $Res Function(_EpisodeMeta) _then;

/// Create a copy of EpisodeMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subHeader = null,Object? description = null,Object? date = null,Object? seasonMgid = null,}) {
  return _then(_EpisodeMeta(
subHeader: null == subHeader ? _self.subHeader : subHeader // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,seasonMgid: null == seasonMgid ? _self.seasonMgid : seasonMgid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Episode {

 String get id; String get url; EpisodeMedia get media; EpisodeMeta get meta;
/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeCopyWith<Episode> get copyWith => _$EpisodeCopyWithImpl<Episode>(this as Episode, _$identity);

  /// Serializes this Episode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Episode;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Episode&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.media, _this.media) || other.media == _this.media)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Episode;
  return Object.hash(runtimeType,_this.id,_this.url,_this.media,_this.meta);
}

@override
String toString() {
  final _this = this as Episode;
  return 'Episode(id: ${_this.id}, url: ${_this.url}, media: ${_this.media}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $EpisodeCopyWith<$Res>  {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) _then) = _$EpisodeCopyWithImpl;
@useResult
$Res call({
 String id, String url, EpisodeMedia media, EpisodeMeta meta
});


$EpisodeMediaCopyWith<$Res> get media;$EpisodeMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$EpisodeCopyWithImpl<$Res>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._self, this._then);

  final Episode _self;
  final $Res Function(Episode) _then;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? media = null,Object? meta = null,}) {
  return _then(Episode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as EpisodeMedia,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as EpisodeMeta,
  ));
}
/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodeMediaCopyWith<$Res> get media {
  
  return $EpisodeMediaCopyWith<$Res>(_self.media, (value) {
    return _then(_self.copyWith(media: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodeMetaCopyWith<$Res> get meta {
  
  return $EpisodeMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [Episode].
extension EpisodePatterns on Episode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Episode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Episode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Episode value)  $default,){
final _that = this;
switch (_that) {
case _Episode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Episode value)?  $default,){
final _that = this;
switch (_that) {
case _Episode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url,  EpisodeMedia media,  EpisodeMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Episode() when $default != null:
return $default(_that.id,_that.url,_that.media,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url,  EpisodeMedia media,  EpisodeMeta meta)  $default,) {final _that = this;
switch (_that) {
case _Episode():
return $default(_that.id,_that.url,_that.media,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url,  EpisodeMedia media,  EpisodeMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _Episode() when $default != null:
return $default(_that.id,_that.url,_that.media,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Episode implements Episode {
   _Episode({required this.id, required this.url, required this.media, required this.meta});
  factory _Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);

@override final  String id;
@override final  String url;
@override final  EpisodeMedia media;
@override final  EpisodeMeta meta;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeCopyWith<_Episode> get copyWith => __$EpisodeCopyWithImpl<_Episode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Episode&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.media, media) || other.media == media)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,url,media,meta);
}

@override
String toString() {
    return 'Episode(id: $id, url: $url, media: $media, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) _then) = __$EpisodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, EpisodeMedia media, EpisodeMeta meta
});


@override $EpisodeMediaCopyWith<$Res> get media;@override $EpisodeMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(this._self, this._then);

  final _Episode _self;
  final $Res Function(_Episode) _then;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? media = null,Object? meta = null,}) {
  return _then(_Episode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as EpisodeMedia,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as EpisodeMeta,
  ));
}

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodeMediaCopyWith<$Res> get media {
  
  return $EpisodeMediaCopyWith<$Res>(_self.media, (value) {
    return _then(_self.copyWith(media: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodeMetaCopyWith<$Res> get meta {
  
  return $EpisodeMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$Episodes {

 List<Episode> get episodes; Season get season;
/// Create a copy of Episodes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodesCopyWith<Episodes> get copyWith => _$EpisodesCopyWithImpl<Episodes>(this as Episodes, _$identity);

  /// Serializes this Episodes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Episodes;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Episodes&&const DeepCollectionEquality().equals(other.episodes, _this.episodes)&&(identical(other.season, _this.season) || other.season == _this.season));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Episodes;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.episodes),_this.season);
}

@override
String toString() {
  final _this = this as Episodes;
  return 'Episodes(episodes: ${_this.episodes}, season: ${_this.season})';
}


}

/// @nodoc
abstract mixin class $EpisodesCopyWith<$Res>  {
  factory $EpisodesCopyWith(Episodes value, $Res Function(Episodes) _then) = _$EpisodesCopyWithImpl;
@useResult
$Res call({
 List<Episode> episodes, Season season
});


$SeasonCopyWith<$Res> get season;

}
/// @nodoc
class _$EpisodesCopyWithImpl<$Res>
    implements $EpisodesCopyWith<$Res> {
  _$EpisodesCopyWithImpl(this._self, this._then);

  final Episodes _self;
  final $Res Function(Episodes) _then;

/// Create a copy of Episodes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? episodes = null,Object? season = null,}) {
  return _then(Episodes(
episodes: null == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>,season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as Season,
  ));
}
/// Create a copy of Episodes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeasonCopyWith<$Res> get season {
  
  return $SeasonCopyWith<$Res>(_self.season, (value) {
    return _then(_self.copyWith(season: value));
  });
}
}


/// Adds pattern-matching-related methods to [Episodes].
extension EpisodesPatterns on Episodes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Episodes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Episodes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Episodes value)  $default,){
final _that = this;
switch (_that) {
case _Episodes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Episodes value)?  $default,){
final _that = this;
switch (_that) {
case _Episodes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Episode> episodes,  Season season)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Episodes() when $default != null:
return $default(_that.episodes,_that.season);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Episode> episodes,  Season season)  $default,) {final _that = this;
switch (_that) {
case _Episodes():
return $default(_that.episodes,_that.season);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Episode> episodes,  Season season)?  $default,) {final _that = this;
switch (_that) {
case _Episodes() when $default != null:
return $default(_that.episodes,_that.season);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Episodes implements Episodes {
   _Episodes({required  List<Episode> episodes, required this.season}): _episodes = episodes;
  factory _Episodes.fromJson(Map<String, dynamic> json) => _$EpisodesFromJson(json);

 final  List<Episode> _episodes;
@override List<Episode> get episodes {
  if (_episodes is EqualUnmodifiableListView) return _episodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episodes);
}

@override final  Season season;

/// Create a copy of Episodes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodesCopyWith<_Episodes> get copyWith => __$EpisodesCopyWithImpl<_Episodes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Episodes&&const DeepCollectionEquality().equals(other.episodes, _episodes)&&(identical(other.season, season) || other.season == season));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_episodes),season);
}

@override
String toString() {
    return 'Episodes(episodes: $episodes, season: $season)';
}


}

/// @nodoc
abstract mixin class _$EpisodesCopyWith<$Res> implements $EpisodesCopyWith<$Res> {
  factory _$EpisodesCopyWith(_Episodes value, $Res Function(_Episodes) _then) = __$EpisodesCopyWithImpl;
@override @useResult
$Res call({
 List<Episode> episodes, Season season
});


@override $SeasonCopyWith<$Res> get season;

}
/// @nodoc
class __$EpisodesCopyWithImpl<$Res>
    implements _$EpisodesCopyWith<$Res> {
  __$EpisodesCopyWithImpl(this._self, this._then);

  final _Episodes _self;
  final $Res Function(_Episodes) _then;

/// Create a copy of Episodes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? episodes = null,Object? season = null,}) {
  return _then(_Episodes(
episodes: null == episodes ? _self._episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>,season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as Season,
  ));
}

/// Create a copy of Episodes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeasonCopyWith<$Res> get season {
  
  return $SeasonCopyWith<$Res>(_self.season, (value) {
    return _then(_self.copyWith(season: value));
  });
}
}


/// @nodoc
mixin _$EpisodesResponse {

 Episodes get items;
/// Create a copy of EpisodesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodesResponseCopyWith<EpisodesResponse> get copyWith => _$EpisodesResponseCopyWithImpl<EpisodesResponse>(this as EpisodesResponse, _$identity);

  /// Serializes this EpisodesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EpisodesResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodesResponse&&(identical(other.items, _this.items) || other.items == _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EpisodesResponse;
  return Object.hash(runtimeType,_this.items);
}

@override
String toString() {
  final _this = this as EpisodesResponse;
  return 'EpisodesResponse(items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $EpisodesResponseCopyWith<$Res>  {
  factory $EpisodesResponseCopyWith(EpisodesResponse value, $Res Function(EpisodesResponse) _then) = _$EpisodesResponseCopyWithImpl;
@useResult
$Res call({
 Episodes items
});


$EpisodesCopyWith<$Res> get items;

}
/// @nodoc
class _$EpisodesResponseCopyWithImpl<$Res>
    implements $EpisodesResponseCopyWith<$Res> {
  _$EpisodesResponseCopyWithImpl(this._self, this._then);

  final EpisodesResponse _self;
  final $Res Function(EpisodesResponse) _then;

/// Create a copy of EpisodesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(EpisodesResponse(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Episodes,
  ));
}
/// Create a copy of EpisodesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodesCopyWith<$Res> get items {
  
  return $EpisodesCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [EpisodesResponse].
extension EpisodesResponsePatterns on EpisodesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpisodesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpisodesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpisodesResponse value)  $default,){
final _that = this;
switch (_that) {
case _EpisodesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpisodesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EpisodesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Episodes items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpisodesResponse() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Episodes items)  $default,) {final _that = this;
switch (_that) {
case _EpisodesResponse():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Episodes items)?  $default,) {final _that = this;
switch (_that) {
case _EpisodesResponse() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpisodesResponse implements EpisodesResponse {
   _EpisodesResponse({required this.items});
  factory _EpisodesResponse.fromJson(Map<String, dynamic> json) => _$EpisodesResponseFromJson(json);

@override final  Episodes items;

/// Create a copy of EpisodesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodesResponseCopyWith<_EpisodesResponse> get copyWith => __$EpisodesResponseCopyWithImpl<_EpisodesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodesResponse&&(identical(other.items, items) || other.items == items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,items);
}

@override
String toString() {
    return 'EpisodesResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class _$EpisodesResponseCopyWith<$Res> implements $EpisodesResponseCopyWith<$Res> {
  factory _$EpisodesResponseCopyWith(_EpisodesResponse value, $Res Function(_EpisodesResponse) _then) = __$EpisodesResponseCopyWithImpl;
@override @useResult
$Res call({
 Episodes items
});


@override $EpisodesCopyWith<$Res> get items;

}
/// @nodoc
class __$EpisodesResponseCopyWithImpl<$Res>
    implements _$EpisodesResponseCopyWith<$Res> {
  __$EpisodesResponseCopyWithImpl(this._self, this._then);

  final _EpisodesResponse _self;
  final $Res Function(_EpisodesResponse) _then;

/// Create a copy of EpisodesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_EpisodesResponse(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Episodes,
  ));
}

/// Create a copy of EpisodesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpisodesCopyWith<$Res> get items {
  
  return $EpisodesCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}

// dart format on
