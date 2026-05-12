// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_summary_date_range_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SpendSummaryDateRangeController)
final spendSummaryDateRangeControllerProvider =
    SpendSummaryDateRangeControllerProvider._();

final class SpendSummaryDateRangeControllerProvider
    extends
        $NotifierProvider<
          SpendSummaryDateRangeController,
          SpendSummaryDateRangeEnum
        > {
  SpendSummaryDateRangeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'spendSummaryDateRangeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$spendSummaryDateRangeControllerHash();

  @$internal
  @override
  SpendSummaryDateRangeController create() => SpendSummaryDateRangeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpendSummaryDateRangeEnum value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpendSummaryDateRangeEnum>(value),
    );
  }
}

String _$spendSummaryDateRangeControllerHash() =>
    r'9440f31fdef246b711a2ef6e3714269ca2d89228';

abstract class _$SpendSummaryDateRangeController
    extends $Notifier<SpendSummaryDateRangeEnum> {
  SpendSummaryDateRangeEnum build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<SpendSummaryDateRangeEnum, SpendSummaryDateRangeEnum>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SpendSummaryDateRangeEnum, SpendSummaryDateRangeEnum>,
              SpendSummaryDateRangeEnum,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
