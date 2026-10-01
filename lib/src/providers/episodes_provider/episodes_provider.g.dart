// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(episodes)
final episodesProvider = EpisodesProvider._();

final class EpisodesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Episodes>>,
          List<Episodes>,
          FutureOr<List<Episodes>>
        >
    with $FutureModifier<List<Episodes>>, $FutureProvider<List<Episodes>> {
  EpisodesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'episodesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$episodesHash();

  @$internal
  @override
  $FutureProviderElement<List<Episodes>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Episodes>> create(Ref ref) {
    return episodes(ref);
  }
}

String _$episodesHash() => r'536cfc2bf21307084d5f3dbf479653cac136bc97';
