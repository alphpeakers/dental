class doctormodel {
  bool? status;
  String? message;
  List<DoctorData>? data;

  doctormodel({this.status, this.message, this.data});

  doctormodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <DoctorData>[];
      json['data'].forEach((v) {
        data!.add(DoctorData.fromJson(v));
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

class DoctorData {
  String? departmentName;
  int? id;
  int? roleId;
  String? roleName;
  String? firstName;
  Null? surname;
  Null? email;
  String? phone;
  Null? dob;
  Null? age;
  String? gender;
  String? image;
  Null? address;
  String? qualification;
  int? status;
  String? createdAt;
  String? updatedAt;

  DoctorData(
      {this.departmentName,
      this.id,
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
      this.qualification,
      this.status,
      this.createdAt,
      this.updatedAt});

  DoctorData.fromJson(Map<String, dynamic> json) {
    departmentName = json['department_name'];
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
    qualification = json['qualification'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['department_name'] = this.departmentName;
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
    data['qualification'] = this.qualification;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
