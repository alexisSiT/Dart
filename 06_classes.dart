void main(){
  
  final Hero wolwerine = new Hero(name:'Logan', power:'Regeneación');
  print( wolwerine );
  print( wolwerine.name );
  print( wolwerine.power );
  
}

class Hero {
  
  String name;
  String power;
  
  Hero({
        required this.name, 
        this.power = 'Sin poder'
      });
  
//   Hero(String pName, String pPower) 
//     : name = pName,
//       power = pPower;
  
  @override
  String toString(){
    return '$name - $power';
  }
  
}