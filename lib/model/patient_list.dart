class patientmodel {
  bool? status;
  String? message;
  List<Data>? data;

  patientmodel({this.status, this.message, this.data});

  patientmodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? roleId;
  String? roleName;
  String? firstName;
  String? surname;
  String? email;
  String? phone;
  String? dob;
  int? age;
  String? gender;
  String? image;
  String? address;
  String? profession;
  String? primaryContactName;
  String? relationship;
  String? check1;
  String? check2;
  String? check3;
  String? check4;
  String? check5;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.roleId,
      this.roleName,
      this.firstName,
      this.surname,
      this.email,
      this.phone,
      this.dob,
      this.age,
      this.gender,
      this.image,
      this.address,
      this.profession,
      this.primaryContactName,
      this.relationship,
      this.check1,
      this.check2,
      this.check3,
      this.check4,
      this.check5,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    roleName = json['role_name'];
    firstName = json['first_name'];
    surname = json['surname'];
    email = json['email'];
    phone = json['phone'];
    dob = json['dob'];
    age = json['age'];
    gender = json['gender'];
    image = json['image'];
    address = json['address'];
    profession = json['profession'];
    primaryContactName = json['primary_contact_name'];
    relationship = json['relationship'];
    check1 = json['check1'];
    check2 = json['check2'];
    check3 = json['check3'];
    check4 = json['check4'];
    check5 = json['check5'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['role_name'] = this.roleName;
    data['first_name'] = this.firstName;
    data['surname'] = this.surname;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['dob'] = this.dob;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['address'] = this.address;
    data['profession'] = this.profession;
    data['primary_contact_name'] = this.primaryContactName;
    data['relationship'] = this.relationship;
    data['check1'] = this.check1;
    data['check2'] = this.check2;
    data['check3'] = this.check3;
    data['check4'] = this.check4;
    data['check5'] = this.check5;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
