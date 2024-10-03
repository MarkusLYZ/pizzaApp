import '../entities/entities.dart';
import 'models.dart';

class Pizza {
  String pizzaId;
  String picture;
  bool isVeg;
  int spice;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  Pizza({
    required this.pizzaId,
    required this.picture,
    required this.isVeg,
    required this.spice,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  PizzaEntity toEntity() {
    return PizzaEntity(
      pizzaId: pizzaId,
      picture: picture,
      isVeg: isVeg,
      spice: spice,
      name: name,
      description: description,
      price: price,
      discount: discount,
      macros: macros,
    );
  }

  static Pizza fromEntity(PizzaEntity entity) {
    return Pizza(
      pizzaId: entity.pizzaId,
      picture: entity.picture,
      isVeg: entity.isVeg,
      spice: entity.spice,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      discount: entity.discount,
      macros: entity.macros,
    );
  }
}
