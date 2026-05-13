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
    r'a93fd8fbc69527e55562afb30bf32422a585ef94';

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
        isAutoDispose: true,
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
    r'5173d18a7469d8030bc43c71be2925f74c718031';

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
