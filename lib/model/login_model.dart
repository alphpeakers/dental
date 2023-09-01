class Loginmodel {
  bool? status;
  String? message;
  Data? data;

  Loginmodel({this.status, this.message, this.data});

  Loginmodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  int? roleId;
  Null? departmentId;
  Null? staffCategoryId;
  String? firstName;
  String? surname;
  String? email;
  String? phone;
  String? dob;
  int? age;
  String? gender;
  String? image;
  String? address;
  Null? qualification;
  String? profession;
  String? primaryContactName;
  String? relationship;
  Null? contactMobile;
  String? check1;
  String? check2;
  String? check3;
  String? check4;
  String? check5;
  String? verify;
  int? status;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.roleId,
      this.departmentId,
      this.staffCategoryId,
      this.firstName,
      this.surname,
      this.email,
      this.phone,
      this.dob,
      this.age,
      this.gender,
      this.image,
      this.address,
      this.qualification,
      this.profession,
      this.primaryContactName,
      this.relationship,
      this.contactMobile,
      this.check1,
      this.check2,
      this.check3,
      this.check4,
      this.check5,
      this.verify,
      this.status,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    departmentId = json['department_id'];
    staffCategoryId = json['staff_category_id'];
    firstName = json['first_name'];
    surname = json['surname'];
    email = json['email'];
    phone = json['phone'];
    dob = json['dob'];
    age = json['age'];
    gender = json['gender'];
    image = json['image'];
    address = json['address'];
    qualification = json['qualification'];
    profession = json['profession'];
    primaryContactName = json['primary_contact_name'];
    relationship = json['relationship'];
    contactMobile = json['contact_mobile'];
    check1 = json['check1'];
    check2 = json['check2'];
    check3 = json['check3'];
    check4 = json['check4'];
    check5 = json['check5'];
    verify = json['verify'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['department_id'] = this.departmentId;
    data['staff_category_id'] = this.staffCategoryId;
    data['first_name'] = this.firstName;
    data['surname'] = this.surname;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['dob'] = this.dob;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['address'] = this.address;
    data['qualification'] = this.qualification;
    data['profession'] = this.profession;
    data['primary_contact_name'] = this.primaryContactName;
    data['relationship'] = this.relationship;
    data['contact_mobile'] = this.contactMobile;
    data['check1'] = this.check1;
    data['check2'] = this.check2;
    data['check3'] = this.check3;
    data['check4'] = this.check4;
    data['check5'] = this.check5;
    data['verify'] = this.verify;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
