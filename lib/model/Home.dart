class Home{
  String name;
  String id;

  Home(this.name,this.id);

  Home.fromjson(Map<String, dynamic> json){
   name = json['name'];
   id = json['id'];
  }



}

