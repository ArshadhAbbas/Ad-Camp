import 'package:ad_camp/core/constants/enums/spend_summary_enums.dart';
import 'package:ad_camp/data_source/spend_summary_data_source.dart';
import 'package:ad_camp/models/spend_summary_model/spend_summary_model.dart';
import 'package:ad_camp/repository/spend_summary_repository/spend_summary_repository.dart';

class SpendSummaryRepositoryImpl implements SpendSummaryRepository {
  SpendSummaryRepositoryImpl({required this.spendSummaryDataSource});
  final SpendSummaryDataSource spendSummaryDataSource;
  @override
  Future<SpendSummaryModel> fetchSpendSummary(SpendSummaryRangeEnum range) async {
    final spendSummary = await spendSummaryDataSource.fetchSpendSummary(range);
    return SpendSummaryModel.fromJson(spendSummary);
  }
}
