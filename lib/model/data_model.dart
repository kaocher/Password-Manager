class DataModel{
  String? id;
  String? password;

  DataModel({this.id, this.password});

  factory DataModel.fromMap(map){
    return DataModel(
      id: map['id'],
      password: map['password'],
    );
  }
  Map<String,dynamic> toMap(){
    return{
      'id':id,
      'password':password,
    };
  }
}