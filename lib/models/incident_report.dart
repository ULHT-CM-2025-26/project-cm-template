enum IncidentType {
  ESCALATOR('Escada rolante'),
  ELEVATOR('Elevador'),
  TICKET_MACHINE('Máquina de bilhetes'),
  TURNSTILE('Torniquete'),
  OTHER('Outro');

  final String displayName;

  const IncidentType(this.displayName);
}

class IncidentReport {

  final DateTime timestamp;
  final int rate;
  final String? notes;
  final IncidentType type;

}