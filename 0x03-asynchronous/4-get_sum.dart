import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    var str = await fetchUserData();
    var user = json.decode(str);
    var ord = await fetchUserOrders(user['id']);
    var orders = json.decode(ord);
    double total = 0.0;
    for (var order in orders) {
      var price = json.decode(await fetchProductPrice(order));
      total += price;
    }
    return total;
  } catch (e) {
    return -1.0;
  }
}
