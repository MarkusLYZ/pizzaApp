import '../models/models.dart';
import 'entities.dart';

class PizzaEntity {
  String pizzaId;
  String picture;
  bool isVeg;
  int spice;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  PizzaEntity({
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
  Map<String, Object?> toJson() {
    return {
      'pizzaId': pizzaId,
      'picture': picture,
      'isVeg': isVeg,
      'spice': spice,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toJson(),
    };
  }

  static PizzaEntity fromJson(Map<String, dynamic> doc) {
    return PizzaEntity(
      pizzaId: doc['pizzaId'],
      picture: doc['picture'],
      isVeg: doc['isVeg'],
      spice: doc['spice'],
      name: doc['name'],
      description: doc['description'],
      price: doc['price'],
      discount: doc['discount'],
      macros: Macros.fromEntity(MacrosEntity.fromJson(doc['macros'])),
    );
  }
}
