# ad_camp

## Overview

`ad_camp` is a Flutter advertising dashboard prototype built with Riverpod state management. It is structured around four main screens: Campaigns, Spend Summary, Anomaly Alerts, and Profile. The app uses a custom dark theme, reusable card widgets, SVG iconography, and simple interactive controls.

---

## Application Structure

### Entry Point
- `lib/main.dart`
  - Creates the app using `ProviderScope` for Riverpod.
  - Uses `MaterialApp` with the custom `AppTheme.theme`.
  - Sets `BottomNavBarScreen()` as the home screen.

### Theme
- `lib/core/app_theme.dart`
  - Defines the global `ThemeData`.
  - Uses a dark palette with accent colors from `ColorConstants`.
  - Customizes `AppBarTheme`, `BottomNavigationBarThemeData`, `InputDecorationTheme`, and `SwitchThemeData`.

### Constants
- `lib/core/constants/color_constants.dart`
  - Centralizes app colors like `darkJungleGreen`, `onyx`, `topaz`, and `jadeGreen`.
- `lib/core/constants/text_style_constants.dart`
  - Reusable text styles such as `f16w600`, `f14w600`, `f40w800`, and `f10w400`.
- `lib/core/constants/image_constants.dart`
  - Defines asset paths for SVG icons and a sample remote image.
- `lib/core/constants/campaign_status_enum.dart`
  - Enum values: `active`, `paused`, and `ended`.

### Utilities
- `lib/utils/date_time_extensions.dart`
  - Adds `formattedDate` to `DateTime` with `dd MMM yyyy` formatting.

---

## Navigation and State

### Bottom Navigation
- `lib/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart`
  - Hosts the main screen stack.
  - Displays dynamic titles for each tab.
  - Uses `CustomBottomNavBar` and an `AppBar` via `UniversalAppbar`.

- `lib/view/screens/bottom_nav_bar/widgets/custom_bottom_nav_bar.dart`
  - Custom bottom navigation bar with animated icon scaling.
  - Uses Riverpod state to change selected index.

### Riverpod Controllers
- `lib/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart`
  - Manages the current bottom navigation index.
  - Actions: `changeIndex(int index)`.

- `lib/controller/spend_summary_date_range_controller/spend_summary_date_range_controller.dart`
  - Controls selected spend report date range.
  - Starts at `last7Days`.
  - Actions: `changeDateRange(SpendSummaryDateRangeEnum dateRange)`.

---

## Screens

### 1. Campaign Screen
- `lib/view/screens/campaign/campagin_screen.dart`
  - Displays search input, filter chips, and a vertical list of campaign cards.

#### Campaign Widgets
- `CampaignSearchField`
  - Input with search icon and filter suffix icon.
  - Dismisses keyboard when tapped outside.
- `CampaignFilterChips`
  - Two static filter chips: `All` and `Active`.
- `CampaignOverviewCard`
  - Main campaign listing card representing a single campaign entry.
  - Composes header, spend progress, metrics, and bottom info.
- `CampaignCardHeader`
  - Shows campaign image, title, category tag, status chip, and more icon.
- `CampaignStatusCard`
  - Displays status with a color-coded dot and text.
  - Status colors: green for active, yellow for paused, red for ended.
- `CampaignSpendSection`
  - Shows total spend and a progress bar for budget usage.
- `CampaignMetricCard`
  - Reusable metric widget with SVG icon, value, label, and optional suffix.
- `CampaignBottomInfoSection`
  - Displays details such as start date and audience info.

### 2. Spend Summary Screen
- `lib/view/screens/spend_summary/spend_summary_screen.dart`
  - Contains spend overview cards and a date range picker.

#### Spend Summary Widgets
- `TotalSpendCard`
  - Summary card with total spend amount and icon.
- `SpendByChannelCard`
  - Displays a doughnut chart using `syncfusion_flutter_charts`.
  - Summarizes spend distribution by channel.
- `Top3CampaignCTRCard`
  - Lists top three campaigns by click-through rate.
  - Uses `TopazCard` and built-in icons.
- `SpendSummaryDateRangePicker`
  - Interactive date range selector for last 7, 14, and 30 days.
  - Updates state via `spendSummaryDateRangeControllerProvider`.

### 3. Alerts Screen
- `lib/view/screens/alerts/alerts_screen.dart`
  - Displays alert overview and recent anomaly cards.
  - Includes a notification switch card.

#### Alerts Widgets
- `AlertsHeaderCard`
  - Live monitoring status card with indicator.
- `AlertAnomalyCard`
  - Detailed anomaly card with metric breakdown.
  - Includes spend, expected, and change metrics.
- `AppSwitch`
  - Custom toggle switch widget with animation.

### 4. Profile Screen
- `lib/view/screens/profile/profile_screen.dart`
  - Currently a placeholder returning an empty `Scaffold`.

---

## Shared Widgets

- `lib/view/widgets/universal_appbar.dart`
  - Custom app bar used across screens.
  - Adds a bottom divider line to reinforce the header.
- `lib/view/widgets/app_card.dart`
  - Reusable card container with inner padding and border.
- `lib/view/widgets/topaz_card.dart`
  - Accent container with light topaz background.
- `lib/view/widgets/app_loader.dart`
  - (Available but not referenced in current screens.)

---

## Theme and Style

- The app uses a dark UI palette:
  - Background: `ColorConstants.onyx`
  - Surface: `ColorConstants.darkJungleGreen`
  - Accent: `ColorConstants.topaz`
  - Secondary text: `ColorConstants.starDust` and `ColorConstants.cloud`
- Typography is centralized in `TextStyleConstants`.
- Input fields and switches are styled in `AppTheme.theme`.

---

## Assets and Icons

- SVG icon assets are declared in `ImageConstants`.
- Main icon categories:
  - `campaign`, `spendSummary`, `alerts`, `profile`
  - `filterIcon`, `view`, `calendar`, `cursor`, `tradeUp`, `target`, `tvIcon`
- `sampleImage` uses a remote placeholder image from `picsum.photos`.

---

## Actions and Interactions

- Bottom navigation changes screen by index with animation in `CustomBottomNavBar`.
- Campaign card list is currently static but parameterized by status.
- Spend date range picker toggles among last 7, 14, and 30 days.
- Alert notification on/off state is managed locally within `AppSwitch`.
- Search field presents a `TextField` and filter icon but does not yet implement search logic.

---

## Packages Used

- `flutter_riverpod` for state management.
- `riverpod_annotation` for controller generation.
- `cached_network_image` for remote campaign image loading.
- `flutter_svg` for SVG icon rendering.
- `syncfusion_flutter_charts` for the doughnut chart.
- `intl` for date formatting.

---

## Notes

- The `ProfileScreen` is currently unimplemented and serves as a placeholder for future profile content.
- `AppLoader` exists as a reusable loading indicator but is not currently used in the active screen flow.
- The campaign list is mocked with repeated cards and uses local enums for status representation.

---

## Running the App

From the project root:

```bash
flutter pub get
flutter run
```

For platform-specific runs, select the target device or platform in your IDE or use:

```bash
flutter run -d <device_id>
```
