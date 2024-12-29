import '../database.dart';

class IngressoTable extends SupabaseTable<IngressoRow> {
  @override
  String get tableName => 'ingresso';

  @override
  IngressoRow createRow(Map<String, dynamic> data) => IngressoRow(data);
}

class IngressoRow extends SupabaseDataRow {
  IngressoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IngressoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get escaneadoEm => getField<DateTime>('escaneado_em')!;
  set escaneadoEm(DateTime value) => setField<DateTime>('escaneado_em', value);

  String get codIngresso => getField<String>('cod_ingresso')!;
  set codIngresso(String value) => setField<String>('cod_ingresso', value);
}
