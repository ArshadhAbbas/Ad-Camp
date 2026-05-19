# ad_camp

## Project Summary

`ad_camp` is a Flutter advertising analytics dashboard built with Riverpod, GoRouter, and Hive. The app offers campaign browsing, campaign details, spend analytics, anomaly detection, and offline-aware behavior.

---

## App Architecture

### Entry Point
- `lib/main.dart`
  - Initializes `WidgetsFlutterBinding` and application services.
  - Calls `NotificationService.init()`.
  - Initializes Hive and registers generated adapters.
  - Opens `campaign_cache` Hive box for campaign caching.
  - Wraps the app in `ProviderScope`.
  - Uses `ConnectivityAppWrapper` and `ConnectivityWidgetWrapper` for offline support.
  - Hosts `MaterialApp.router` with `GoRouterConfig.router`.

### Theme & Design
- `lib/core/theme/app_theme.dart`
  - Centralizes the app theme and color scheme.
  - Configures app bar, switch, text button, popup menu, bottom sheet, and bottom navigation styling.
  - Uses the dark palette from `ColorConstants`.

### Constants
- `lib/core/constants/color_constants.dart` — shared color palette.
- `lib/core/constants/text_style_constants.dart` — reusable text styles.
- `lib/core/constants/image_constants.dart` — SVG asset and sample image paths.
- `lib/core/constants/string_constants.dart` — string constants such as Hive box names.
- `lib/core/constants/enums/campaign_status_enum.dart` — campaign status enum.
- `lib/core/constants/enums/spend_summary_enums.dart` — spend summary range enum.
- `lib/core/constants/enums/anomaly_enums.dart` — anomaly type enum.

### Helpers and Utilities
- `lib/utils/date_time_extensions.dart` — date formatting extension.
- `lib/utils/num_extensions.dart` — compact number formatting helper.
- `lib/utils/string_helpers.dart` — title case and date parsing.
- `lib/utils/campaign_status_helper.dart` — status string/enum conversion.
- `lib/utils/spend_summary_helper.dart` — range label conversion.
- `lib/utils/anomaly_helper.dart` — anomaly text, color, and icon mapping.

---

## Navigation

- `lib/core/services/go_router_config.dart`
  - Main route `/` to `BottomNavBarScreen`.
  - Route `/campaign_details` to `CampaignDetailsScreen` with `campaign_id` query parameter.
  - Handles route errors with a fallback `Scaffold`.

- `lib/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart`
  - The app container for tabs: Campaigns, Spend Summary, Alerts, Profile.
  - Uses `UniversalAppbar` for consistent app bar styling.

- `lib/view/screens/bottom_nav_bar/widgets/custom_bottom_nav_bar.dart`
  - Custom bottom nav with animated selected icon scaling and tint.

---

## State Management

### Controllers
- `lib/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart`
  - Tracks the active bottom nav index.
- `lib/controller/campaign_data_source_controller/campaign_data_source/campaign_data_source_controller.dart`
  - Loads campaigns from repository.
  - Applies search text, status filter, objective filter, and refresh.
- `lib/controller/campaign_details_controller/campaign_details_controller.dart`
  - Loads campaign details, campaign history, and forecast.
  - Prepares chart points and forecast labels.
- `lib/controller/spend_summary_controller/spend_summary_controller.dart`
  - Loads spend summary based on selected date range.
  - Prepares chart data and top campaign metrics.
- `lib/controller/spend_summary_date_range_controller/spend_summary_date_range_controller.dart`
  - Manages the selected spend summary range.
- `lib/controller/anomaly_controller/anomaly_controller.dart`
  - Polls anomaly data every 30 seconds.
  - Emits notifications when enabled.
- `lib/controller/notification_controller/notification_controller.dart`
  - Checks notification permission state.
  - Requests permission when toggled.

---

## Data Layer

### Services
- `lib/core/services/dio_service.dart`
  - Singleton Dio client configured with `Env.apiBaseUrl`.
  - Implements `get` and `post` helpers.
- `lib/core/services/notification_service.dart`
  - Initializes local notifications.
  - Requests and checks Android notification permission.
  - Displays anomaly push notifications.
- `lib/core/services/campaign_cache_service.dart`
  - Uses Hive to cache campaign list data.
  - Provides cached data for faster startup.

### Endpoints
- `lib/env.dart`
  - Defines backend endpoints used by the app:
    - `/campaigns/`
    - `/campaigns/summary/`
    - `/campaigns/metrics/live`
    - `/anomaly/detect`
    - `/history/`
    - `/forecast/ctr/`

### Data Sources
- `lib/data_source/campaign_data_source.dart`
  - Fetch campaigns, campaign details, campaign history, and forecast.
- `lib/data_source/spend_summary_data_source.dart`
  - Fetch spend summary data by range.
- `lib/data_source/anomaly_data_source.dart`
  - Fetch live metrics and detect anomalies.

### Repositories
- `lib/repository/campaign_repository/campaign_repository.dart`
  - Campaign repository interface.
- `lib/repository/campaign_repository/campaign_repository_impl.dart`
  - Implements campaign fetch, details, history, forecast, and caching.
- `lib/repository/spend_summary_repository/spend_summary_repository.dart`
  - Spend summary repository interface.
- `lib/repository/spend_summary_repository/spend_summary_repository_impl.dart`
  - Implements spend summary fetch.
- `lib/repository/anomaly_repository/anomaly_repository.dart`
  - Anomaly repository interface.
- `lib/repository/anomaly_repository/anomaly_repository_impl.dart`
  - Implements anomaly fetch by combining live metrics and detection.

---

## Screens and Widgets

### Campaign Experience
- `lib/view/screens/campaign/campaign_screen.dart`
  - Search bar, objective filter modal, and live campaign list.
- Key campaign widgets:
  - `CampaignSearchField` — search input.
  - `CampaignFilterChips` — status chips.
  - `ObjectiveFilterIcon` — objective filter bottom sheet.
  - `CampaignOverviewCard` — tappable campaign entry.
  - `CampaignCardHeader` — thumbnail, objective, and status.
  - `CampaignSpendSection` — spending progress bar.
  - `CampaignMetricCard` — impressions/clicks/CTR metrics.
  - `CampaignBottomInfoSection` — campaign metadata.

### Campaign Details
- `lib/view/screens/campaign_details/campaign_details_screen.dart`
  - Detail view for an individual campaign.
  - Loads details, historical data, and forecast.
- Supporting detail widgets:
  - `CampaignDetailsAppBar` — custom app bar with objective and status.
  - `CampaignDetailsMetricCard` — metrics row.
  - `CtrForecastCard` — forecast visualization.
  - `BudgetRecommendationCard` — recommendation summary.
  - `DetailsLoadingScreen`, `DetailsErrorScreen` — request states.

### Spend Summary
- `lib/view/screens/spend_summary/spend_summary_screen.dart`
  - Overview of total spend and channel split.
- Spend widgets:
  - `TotalSpendCard` — total spend summary.
  - `SpendByChannelCard` — donut chart breakdown.
  - `Top3CampaignCTRCard` — top-performing campaigns.
  - `SpendSummaryDateRangePicker` — date range selection.

### Alerts
- `lib/view/screens/alerts/alerts_screen.dart`
  - Shows anomaly alerts and notification control.
- Alert widgets:
  - `AlertsHeaderCard` — live monitoring state.
  - `AlertAnomalyCard` — anomaly incident card.
  - `AppSwitch` — custom toggle control.

### Shared UI Components
- `lib/view/widgets/universal_appbar.dart`
  - Standard app bar wrapper.
- `lib/view/widgets/app_card.dart`
  - Reusable surface card.
- `lib/view/widgets/topaz_card.dart`
  - Accent card style.
- `lib/view/widgets/app_loader.dart`
  - Shown during async loading.
- `lib/view/widgets/image_widget.dart` — shared image component.
- `lib/view/widgets/dashed_line_painter.dart` — dashed separator painter.
- `lib/view/widgets/shimmers/rectangular_shimmer.dart` — shimmer placeholder.

---

## Models & Persistence

### Core Models
- `CampaignsListModel` — campaign list payload.
- `CampaignDetailsModel` — detailed campaign response.
- `CampaignHistoryModel` — historical CTR series.
- `ForecastModel` — forecast response data.
- `SpendSummaryModel` — spend summary payload.
- `AnomalyModel` — anomaly event model.
- `LiveMetricsModel` — live metrics for anomaly detection.
- `HistoricalCtrModel` — CTR point model.

### Code Generation
- Uses Freezed, JSON Serializable, Hive adapters, and Riverpod generators.
- Generated files live alongside model/controller sources in `*.g.dart` and `*.freezed.dart`.
- Hive adapter registration occurs in `lib/models/hive_adapters/hive_registrar.g.dart`.

---

## Packages Used

- `cached_network_image`
- `connectivity_wrapper`
- `dio`
- `flutter_local_notifications`
- `flutter_riverpod`
- `flutter_svg`
- `freezed_annotation`
- `go_router`
- `hive_ce`, `hive_ce_flutter`
- `intl`
- `json_annotation`
- `riverpod_annotation`
- `shimmer_animation`
- `syncfusion_flutter_charts`
- `timeago`

Dev tools:
- `build_runner`
- `freezed`
- `hive_ce_generator`
- `json_serializable`
- `riverpod_generator`

---

## Running the App

From the project root:

```bash
flutter pub get
flutter run
```

To target a specific device:

```bash
flutter run -d <device_id>
```

---

## Notes

- The profile screen is a placeholder for future content.
- Campaign list filtering, search, and objective filtering are managed in the campaign controller.
- Anomaly polling is automatic and respects notification permission state.
- The app uses cached campaign responses for faster initial UI display.
- Offline connectivity is handled by `ConnectivityWrapper`.
