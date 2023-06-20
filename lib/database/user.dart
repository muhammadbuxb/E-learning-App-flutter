class UserModel {
  dynamic name, email, password, isActive, course, role;
 
  UserModel(
      {this.name,
      this.email,
      this.course,
      this.isActive,
      this.password,
      this.role});

  factory UserModel.fromJson(data) => UserModel(
      email: data['email'],
      name: data['name'],
      isActive: data['isActive'],
      course: data['course'],
      role: data['role']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email.toString().toLowerCase(),
        'isActive': isActive,
        'friends': course ?? [],
        'role': 'student',
      };
}
