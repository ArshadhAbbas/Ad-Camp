// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(anomalyDataSource)
final anomalyDataSourceProvider = AnomalyDataSourceProvider._();

final class AnomalyDataSourceProvider
    extends
        $FunctionalProvider<
          AnomalyDataSource,
          AnomalyDataSource,
          AnomalyDataSource
        >
    with $Provider<AnomalyDataSource> {
  AnomalyDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'anomalyDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$anomalyDataSourceHash();

  @$internal
  @override
  $ProviderElement<AnomalyDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnomalyDataSource create(Ref ref) {
    return anomalyDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnomalyDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnomalyDataSource>(value),
    );
  }
}

String _$anomalyDataSourceHash() => r'a0151874ebbb681c0683513f9cf0579846b9ae14';

@ProviderFor(anomalyRepository)
final anomalyRepositoryProvider = AnomalyRepositoryProvider._();

final class AnomalyRepositoryProvider
    extends
        $FunctionalProvider<
          AnomalyRepository,
          AnomalyRepository,
          AnomalyRepository
        >
    with $Provider<AnomalyRepository> {
  AnomalyRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'anomalyRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$anomalyRepositoryHash();

  @$internal
  @override
  $ProviderElement<AnomalyRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnomalyRepository create(Ref ref) {
    return anomalyRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnomalyRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnomalyRepository>(value),
    );
  }
}

String _$anomalyRepositoryHash() => r'eb3138187268ee1eaaf8a058a4dd21650514d61c';

@ProviderFor(AnomalyController)
final anomalyControllerProvider = AnomalyControllerProvider._();

final class AnomalyControllerProvider
    extends
        $AsyncNotifierProvider<
          AnomalyController,
          List<AnomalyControllerModel>
        > {
  AnomalyControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'anomalyControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$anomalyControllerHash();

  @$internal
  @override
  AnomalyController create() => AnomalyController();
}

String _$anomalyControllerHash() => r'44bffa626c5a956d0f35956fafffc93b4e52fa55';

abstract class _$AnomalyController
    extends $AsyncNotifier<List<AnomalyControllerModel>> {
  FutureOr<List<AnomalyControllerModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<AnomalyControllerModel>>,
              List<AnomalyControllerModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AnomalyControllerModel>>,
                List<AnomalyControllerModel>
              >,
              AsyncValue<List<AnomalyControllerModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
