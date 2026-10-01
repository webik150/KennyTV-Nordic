// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(season)
final seasonProvider = SeasonProvider._();

final class SeasonProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Season>>,
          List<Season>,
          FutureOr<List<Season>>
        >
    with $FutureModifier<List<Season>>, $FutureProvider<List<Season>> {
  SeasonProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'seasonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$seasonHash();

  @$internal
  @override
  $FutureProviderElement<List<Season>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Season>> create(Ref ref) {
    return season(ref);
  }
}

String _$seasonHash() => r'f5a67d2b352a84a26011bf0aee27dc6499bc0147';
