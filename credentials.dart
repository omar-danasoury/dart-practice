class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;
  
  Credentials copyWith({
    String? email,
    String? password,
  }) {
    return Credentials(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
  
  @override
  String toString() => 'Crednetials($email, $password)';
}

void main(List<String> args) {
  const cred = Credentials();
  final cred2 = cred.copyWith(email: 'myemail@email.com');
  final cred3 = cred2.copyWith(password: '1234');
  print(cred3);
}
