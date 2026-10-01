// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_season_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedSeasonNotifier)
final selectedSeasonProvider = SelectedSeasonNotifierProvider._();

final class SelectedSeasonNotifierProvider
    extends $NotifierProvider<SelectedSeasonNotifier, Episodes> {
  SelectedSeasonNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedSeasonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedSeasonNotifierHash();

  @$internal
  @override
  SelectedSeasonNotifier create() => SelectedSeasonNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Episodes value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Episodes>(value),
    );
  }
}

String _$selectedSeasonNotifierHash() =>
    r'c10a6d1a3c39a4d16843703b485d1ebffe72fd55';

abstract class _$SelectedSeasonNotifier extends $Notifier<Episodes> {
  Episodes build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Episodes, Episodes>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Episodes, Episodes>,
              Episodes,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
