// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_episode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nextEpisode)
final nextEpisodeProvider = NextEpisodeFamily._();

final class NextEpisodeProvider
    extends $FunctionalProvider<Episode?, Episode?, Episode?>
    with $Provider<Episode?> {
  NextEpisodeProvider._({
    required NextEpisodeFamily super.from,
    required Episode super.argument,
  }) : super(
         retry: null,
         name: r'nextEpisodeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$nextEpisodeHash();

  @override
  String toString() {
    return r'nextEpisodeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Episode?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Episode? create(Ref ref) {
    final argument = this.argument as Episode;
    return nextEpisode(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Episode? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Episode?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NextEpisodeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$nextEpisodeHash() => r'5be367e368eb2751c06ca2332f54966a4b1cc5e1';

final class NextEpisodeFamily extends $Family
    with $FunctionalFamilyOverride<Episode?, Episode> {
  NextEpisodeFamily._()
    : super(
        retry: null,
        name: r'nextEpisodeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NextEpisodeProvider call(Episode currentEpisode) =>
      NextEpisodeProvider._(argument: currentEpisode, from: this);

  @override
  String toString() => r'nextEpisodeProvider';
}
