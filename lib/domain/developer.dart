class Developer {
  final String id;
  final String name;
  final bool attended;

  Developer({required this.id, required this.name, required this.attended});

  Developer copyWith({String? id, String? name, bool? attended}) {
    return Developer(
      id: id ?? this.id,
      name: name ?? this.name,
      attended: attended ?? this.attended,
    );
  }
}
