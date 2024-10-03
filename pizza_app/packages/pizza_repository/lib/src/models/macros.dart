import '../entities/entities.dart';

class Macros {
  int calories;
  int proteins;
  int fat;
  int carbs;

  Macros(
      {required this.calories,
      required this.carbs,
      required this.fat,
      required this.proteins});

  MacrosEntity toEntity() {
    return MacrosEntity(
        calories: calories, fat: fat, proteins: proteins, carbs: carbs);
  }

  static Macros fromEntity(MacrosEntity entity) {
    return Macros(
        calories: entity.calories,
        fat: entity.fat,
        proteins: entity.proteins,
        carbs: entity.carbs);
  }
}
