class MacrosEntity{
  int calories;
  int proteins;
  int fat;
  int carbs;

  MacrosEntity({
    required this.calories,
    required this.carbs,
    required this.fat,
    required this.proteins
  });
  Map<String, Object?> toJson() {
    return {
      'calories': calories,
      'fat': fat,
      'carbs':carbs,
      'proteins': proteins
    };
  }

  static MacrosEntity fromJson(Map<String, dynamic> doc) {
    return MacrosEntity(
      calories: doc['calories'],
      fat: doc['fat'],
      carbs: doc['carbs'],
      proteins: doc['proteins'],
      
    );
  }
}