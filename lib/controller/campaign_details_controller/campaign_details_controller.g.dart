// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CampaignDetailsController)
final campaignDetailsControllerProvider = CampaignDetailsControllerFamily._();

final class CampaignDetailsControllerProvider
    extends
        $AsyncNotifierProvider<
          CampaignDetailsController,
          CampaignDetailsControllerModel
        > {
  CampaignDetailsControllerProvider._({
    required CampaignDetailsControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'campaignDetailsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$campaignDetailsControllerHash();

  @override
  String toString() {
    return r'campaignDetailsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CampaignDetailsController create() => CampaignDetailsController();

  @override
  bool operator ==(Object other) {
    return other is CampaignDetailsControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$campaignDetailsControllerHash() =>
    r'5410a5e15e2c1ab77736f063d3f40385e47f06b1';

final class CampaignDetailsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CampaignDetailsController,
          AsyncValue<CampaignDetailsControllerModel>,
          CampaignDetailsControllerModel,
          FutureOr<CampaignDetailsControllerModel>,
          String
        > {
  CampaignDetailsControllerFamily._()
    : super(
        retry: null,
        name: r'campaignDetailsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CampaignDetailsControllerProvider call({required String campid}) =>
      CampaignDetailsControllerProvider._(argument: campid, from: this);

  @override
  String toString() => r'campaignDetailsControllerProvider';
}

abstract class _$CampaignDetailsController
    extends $AsyncNotifier<CampaignDetailsControllerModel> {
  late final _$args = ref.$arg as String;
  String get campid => _$args;

  FutureOr<CampaignDetailsControllerModel> build({required String campid});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<CampaignDetailsControllerModel>,
              CampaignDetailsControllerModel
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<CampaignDetailsControllerModel>,
                CampaignDetailsControllerModel
              >,
              AsyncValue<CampaignDetailsControllerModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(campid: _$args));
  }
}
