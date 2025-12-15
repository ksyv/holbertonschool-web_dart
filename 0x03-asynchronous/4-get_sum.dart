import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
    try {
        final String userJson = await fetchUserData();
        final Map<String, dynamic> userData = jsonDecode(userJson);
        final String userId = userData['id'] ?? 'unknown_id';

        final String ordersJson = await fetchUserOrders(userId);
        final List<dynamic> orders = jsonDecode(ordersJson);

        double totalPrice = 0.0;

        for (String product in orders) {
            final String priceJson = await fetchProductPrice(product);
            final num priceAsNum = jsonDecode(priceJson);
            final double price = priceAsNum.toDouble();
            totalPrice += price;
        }
        return totalPrice;

    } catch (error) {
        return -1;
    }
}