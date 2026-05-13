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
          SpendSummaryRangeEnum
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
  Override overrideWithValue(SpendSummaryRangeEnum value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpendSummaryRangeEnum>(value),
    );
  }
}

String _$spendSummaryDateRangeControllerHash() =>
    r'f21df973be490689f4a8224bd014f5f92ca994be';

abstract class _$SpendSummaryDateRangeController
    extends $Notifier<SpendSummaryRangeEnum> {
  SpendSummaryRangeEnum build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SpendSummaryRangeEnum, SpendSummaryRangeEnum>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SpendSummaryRangeEnum, SpendSummaryRangeEnum>,
              SpendSummaryRangeEnum,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
