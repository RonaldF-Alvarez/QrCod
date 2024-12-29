import '../database.dart';

class EventoTicketTable extends SupabaseTable<EventoTicketRow> {
  @override
  String get tableName => 'evento_ticket';

  @override
  EventoTicketRow createRow(Map<String, dynamic> data) => EventoTicketRow(data);
}

class EventoTicketRow extends SupabaseDataRow {
  EventoTicketRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventoTicketTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nomeEvento => getField<String>('nome_evento')!;
  set nomeEvento(String value) => setField<String>('nome_evento', value);

  String get tipoTicket => getField<String>('tipo_ticket')!;
  set tipoTicket(String value) => setField<String>('tipo_ticket', value);
}
