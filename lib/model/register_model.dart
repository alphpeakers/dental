class RegisterationModel {
  bool? status; // Make status nullable
  String? message;
  PatientData? patientData;

  RegisterationModel({this.status, this.message, this.patientData});

  factory RegisterationModel.fromJson(Map<String, dynamic> json) {
    return RegisterationModel(
      status: json['status'],
      message: json['message'],
      patientData: json['data'] != null ? PatientData.fromJson(json['data']) : null,
    );
  }
}

class PatientData {
  int? id;
  int? roleId;
  int? departmentId;
  int? staffCategoryId;
  String? firstName;
  String? surname;
  String? email;
  String? phone;
  String? password;
  String? dob;
  int? age;
  String? gender;
  String? image;
  String? address;
  String? qualification;
  String? profession;
  String? primaryContactName;
  String? relationship;
  String? contactMobile;
  String? check1;
  String? check2;
  String? check3;
  String? check4;
  String? check5;
  String? verify;
  int? status;
  String? createdAt;
  String? updatedAt;

  PatientData({
    this.id,
    this.roleId,
    this.departmentId,
    this.staffCategoryId,
    this.firstName,
    this.surname,
    this.email,
    this.phone,
    this.password,
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
    this.updatedAt,
  });

  factory PatientData.fromJson(Map<String, dynamic> json) {
    return PatientData(
      id: json['id'],
      roleId: json['role_id'],
      departmentId: json['department_id'],
      staffCategoryId: json['staff_category_id'],
      firstName: json['first_name'],
      surname: json['surname'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      dob: json['dob'],
      age: json['age'],
      gender: json['gender'],
      image: json['image'],
      address: json['address'],
      qualification: json['qualification'],
      profession: json['profession'],
      primaryContactName: json['primary_contact_name'],
      relationship: json['relationship'],
      contactMobile: json['contact_mobile'],
      check1: json['check1'],
      check2: json['check2'],
      check3: json['check3'],
      check4: json['check4'],
      check5: json['check5'],
      verify: json['verify'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
