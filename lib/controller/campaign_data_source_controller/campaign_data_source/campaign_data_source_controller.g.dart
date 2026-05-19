// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_data_source_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(campaignDataSource)
final campaignDataSourceProvider = CampaignDataSourceProvider._();

final class CampaignDataSourceProvider
    extends
        $FunctionalProvider<
          CampaignDataSource,
          CampaignDataSource,
          CampaignDataSource
        >
    with $Provider<CampaignDataSource> {
  CampaignDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'campaignDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$campaignDataSourceHash();

  @$internal
  @override
  $ProviderElement<CampaignDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CampaignDataSource create(Ref ref) {
    return campaignDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CampaignDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CampaignDataSource>(value),
    );
  }
}

String _$campaignDataSourceHash() =>
    r'b83f22156d7134ab1209119cb991020309b879f2';

@ProviderFor(cacheService)
final cacheServiceProvider = CacheServiceProvider._();

final class CacheServiceProvider
    extends
        $FunctionalProvider<
          CampaignCacheService,
          CampaignCacheService,
          CampaignCacheService
        >
    with $Provider<CampaignCacheService> {
  CacheServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cacheServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cacheServiceHash();

  @$internal
  @override
  $ProviderElement<CampaignCacheService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CampaignCacheService create(Ref ref) {
    return cacheService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CampaignCacheService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CampaignCacheService>(value),
    );
  }
}

String _$cacheServiceHash() => r'67306ca1b29fe772bcc2fb780c9846f9fb130c93';

@ProviderFor(campaignRepository)
final campaignRepositoryProvider = CampaignRepositoryProvider._();

final class CampaignRepositoryProvider
    extends
        $FunctionalProvider<
          CampaignRepository,
          CampaignRepository,
          CampaignRepository
        >
    with $Provider<CampaignRepository> {
  CampaignRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'campaignRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$campaignRepositoryHash();

  @$internal
  @override
  $ProviderElement<CampaignRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CampaignRepository create(Ref ref) {
    return campaignRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CampaignRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CampaignRepository>(value),
    );
  }
}

String _$campaignRepositoryHash() =>
    r'988203385a71878d8ee06838898b7352ea7f35f8';

@ProviderFor(CampaignDataSourceController)
final campaignDataSourceControllerProvider =
    CampaignDataSourceControllerProvider._();

final class CampaignDataSourceControllerProvider
    extends
        $AsyncNotifierProvider<
          CampaignDataSourceController,
          CampaignDataControllerModel
        > {
  CampaignDataSourceControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'campaignDataSourceControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$campaignDataSourceControllerHash();

  @$internal
  @override
  CampaignDataSourceController create() => CampaignDataSourceController();
}

String _$campaignDataSourceControllerHash() =>
    r'9a72744421c1833d57551c4c8d15f273f4c47785';

abstract class _$CampaignDataSourceController
    extends $AsyncNotifier<CampaignDataControllerModel> {
  FutureOr<CampaignDataControllerModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<CampaignDataControllerModel>,
              CampaignDataControllerModel
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<CampaignDataControllerModel>,
                CampaignDataControllerModel
              >,
              AsyncValue<CampaignDataControllerModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
