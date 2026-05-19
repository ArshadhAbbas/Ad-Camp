// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class CampaignsListModelAdapter extends TypeAdapter<CampaignsListModel> {
  @override
  final typeId = 0;

  @override
  CampaignsListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CampaignsListModel(
      campaigns: (fields[0] as List?)?.cast<Campaign>(),
      total: (fields[1] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, CampaignsListModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.campaigns)
      ..writeByte(1)
      ..write(obj.total);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CampaignsListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CampaignAdapter extends TypeAdapter<Campaign> {
  @override
  final typeId = 1;

  @override
  Campaign read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Campaign(
      id: fields[0] as String?,
      name: fields[1] as String?,
      status: fields[2] as String?,
      objective: fields[3] as String?,
      channel: fields[4] as String?,
      budget: (fields[5] as num?)?.toInt(),
      spend: (fields[6] as num?)?.toInt(),
      impressions: (fields[7] as num?)?.toInt(),
      clicks: (fields[8] as num?)?.toInt(),
      startDate: fields[9] as DateTime?,
      endDate: fields[10] as DateTime?,
      currency: fields[11] as String?,
      thumbnail: fields[12] as String?,
      ctr: (fields[13] as num?)?.toDouble(),
      budgetUtilization: (fields[14] as num?)?.toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, Campaign obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.objective)
      ..writeByte(4)
      ..write(obj.channel)
      ..writeByte(5)
      ..write(obj.budget)
      ..writeByte(6)
      ..write(obj.spend)
      ..writeByte(7)
      ..write(obj.impressions)
      ..writeByte(8)
      ..write(obj.clicks)
      ..writeByte(9)
      ..write(obj.startDate)
      ..writeByte(10)
      ..write(obj.endDate)
      ..writeByte(11)
      ..write(obj.currency)
      ..writeByte(12)
      ..write(obj.thumbnail)
      ..writeByte(13)
      ..write(obj.ctr)
      ..writeByte(14)
      ..write(obj.budgetUtilization);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CampaignAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
