// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_nav_bar_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BottomNavBarController)
final bottomNavBarControllerProvider = BottomNavBarControllerProvider._();

final class BottomNavBarControllerProvider
    extends $NotifierProvider<BottomNavBarController, int> {
  BottomNavBarControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bottomNavBarControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bottomNavBarControllerHash();

  @$internal
  @override
  BottomNavBarController create() => BottomNavBarController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$bottomNavBarControllerHash() =>
    r'69544e2b07f959b8b969c3763656bf560231af8d';

abstract class _$BottomNavBarController extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
