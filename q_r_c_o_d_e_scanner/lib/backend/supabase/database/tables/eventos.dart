import '../database.dart';

class EventosTable extends SupabaseTable<EventosRow> {
  @override
  String get tableName => 'eventos';

  @override
  EventosRow createRow(Map<String, dynamic> data) => EventosRow(data);
}

class EventosRow extends SupabaseDataRow {
  EventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get codigoEvento => getField<String>('codigo_evento')!;
  set codigoEvento(String value) => setField<String>('codigo_evento', value);

  String get nomeEvento => getField<String>('nome_evento')!;
  set nomeEvento(String value) => setField<String>('nome_evento', value);
}
