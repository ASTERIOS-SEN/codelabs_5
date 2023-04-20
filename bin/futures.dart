Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void future() {
  fetchUserOrder();
  print('Fetching user order...');
}

//Ejercicio: Practique el uso de async y await

Future<String> fetchRole() async {
  // Simulamos una espera de 2 segundos para obtener el nombre de usuario
  await Future.delayed(Duration(seconds: 2));
  return 'Juan'; // Retorna el nombre de usuario
}

Future<int> fetchLoginAmount() async {
  // Simulamos una espera de 3 segundos para obtener la cantidad de logins
  await Future.delayed(Duration(seconds: 3));
  return 10; // Retorna la cantidad de logins
}

Future<String?> reportUserRole() async {
  try {
    var username = await fetchRole();
    return 'User role: $username';
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String?> reportLogins() async {
  try {
    var logins = await fetchLoginAmount();
    return 'Total de sessiones: $logins';
  } catch (err) {
    print('Caught error: $err');
  }
}

void returnFuture() async {
  print(await reportUserRole());
  print(await reportLogins());
}

Future<String> fetchUsername() async {
  // Simulamos una espera de 2 segundos para obtener el nombre de usuario
  await Future.delayed(Duration(seconds: 2));
  return 'Juan'; // Retorna el nombre de usuario
}

Future<int> logoutUser() async {
  // Simulamos una espera de 3 segundos para obtener la cantidad de logins
  await Future.delayed(Duration(seconds: 3));
  return 10; // Retorna la cantidad de logins
}

//Ejercicio: poner todo junto
String addHello(String user) => 'Hola $user';

Future<String> greetUser() async {
  var username = await fetchUsername();
  return addHello(username);
}

Future<String> sayGoodbye() async {
  try {
    var result = await logoutUser();
    return '$result Adios, hasta luego!';
  } catch (e) {
    return 'Failed to logout user: $e';
  }
}

void returnFuture2() async {
  print(await greetUser());
  print(await sayGoodbye());
}
