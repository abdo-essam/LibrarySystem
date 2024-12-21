
class User {
  final String id;
  final String name;

  User(this.id, this.name);

  void displayInfo() {
    print('User ID: $id, Name: $name');
  }
}