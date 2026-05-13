// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_summary_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(spendSummaryDataSource)
final spendSummaryDataSourceProvider = SpendSummaryDataSourceProvider._();

final class SpendSummaryDataSourceProvider
    extends
        $FunctionalProvider<
          SpendSummaryDataSource,
          SpendSummaryDataSource,
          SpendSummaryDataSource
        >
    with $Provider<SpendSummaryDataSource> {
  SpendSummaryDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'spendSummaryDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$spendSummaryDataSourceHash();

  @$internal
  @override
  $ProviderElement<SpendSummaryDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SpendSummaryDataSource create(Ref ref) {
    return spendSummaryDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpendSummaryDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpendSummaryDataSource>(value),
    );
  }
}

String _$spendSummaryDataSourceHash() =>
    r'b2fc172a5092c01280090e4a484b9403c37b0c57';

@ProviderFor(spendSummaryRepository)
final spendSummaryRepositoryProvider = SpendSummaryRepositoryProvider._();

final class SpendSummaryRepositoryProvider
    extends
        $FunctionalProvider<
          SpendSummaryRepository,
          SpendSummaryRepository,
          SpendSummaryRepository
        >
    with $Provider<SpendSummaryRepository> {
  SpendSummaryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'spendSummaryRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$spendSummaryRepositoryHash();

  @$internal
  @override
  $ProviderElement<SpendSummaryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SpendSummaryRepository create(Ref ref) {
    return spendSummaryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpendSummaryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpendSummaryRepository>(value),
    );
  }
}

String _$spendSummaryRepositoryHash() =>
    r'bc78015323896aad4cb7189f25b19f0cfc2d3ce1';

@ProviderFor(SpendSummaryController)
final spendSummaryControllerProvider = SpendSummaryControllerProvider._();

final class SpendSummaryControllerProvider
    extends
        $AsyncNotifierProvider<
          SpendSummaryController,
          SpendSummaryControllerModel
        > {
  SpendSummaryControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'spendSummaryControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$spendSummaryControllerHash();

  @$internal
  @override
  SpendSummaryController create() => SpendSummaryController();
}

String _$spendSummaryControllerHash() =>
    r'231c70d79c8f773efaf4799a58c5427f683c6f51';

abstract class _$SpendSummaryController
    extends $AsyncNotifier<SpendSummaryControllerModel> {
  FutureOr<SpendSummaryControllerModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<SpendSummaryControllerModel>,
              SpendSummaryControllerModel
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SpendSummaryControllerModel>,
                SpendSummaryControllerModel
              >,
              AsyncValue<SpendSummaryControllerModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
