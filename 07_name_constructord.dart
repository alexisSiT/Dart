void main() {

  final Map<String, dynamic> rawJson = {
    'name': 'Bruce Wayne',
    'power': 'Money',
    'isAlive': true
  }; 

  final batman = Hero.fromJson( rawJson );

  // final batman = Hero(
  // isAlive: rawJson['isAlive2'] ?? false,
  // power: 'Money',
  //name: 'Bruce Wayne'
  //);
  
  // final batman = Hero(
  //  isAlive: rawJson['isAlive'],
  //  power: 'Money',
  //  name: 'Bruce Wayne'
  //);

  print(batman);

}

class Hero {

  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No is alive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'Yes' : 'Nope'}';
  }
}