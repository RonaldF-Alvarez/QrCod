import '../database.dart';

class EventoUsuarioTable extends SupabaseTable<EventoUsuarioRow> {
  @override
  String get tableName => 'evento_usuario';

  @override
  EventoUsuarioRow createRow(Map<String, dynamic> data) =>
      EventoUsuarioRow(data);
}

class EventoUsuarioRow extends SupabaseDataRow {
  EventoUsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventoUsuarioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get validadoEm => getField<DateTime>('validado_em')!;
  set validadoEm(DateTime value) => setField<DateTime>('validado_em', value);

  String get codEvento => getField<String>('cod_evento')!;
  set codEvento(String value) => setField<String>('cod_evento', value);

  String get codUsuario => getField<String>('cod_usuario')!;
  set codUsuario(String value) => setField<String>('cod_usuario', value);

  int get validado => getField<int>('validado')!;
  set validado(int value) => setField<int>('validado', value);
}
