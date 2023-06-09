import 'Customer_Class.dart';
import 'Supermarket_class.dart';
import 'Product_Class.dart';
import 'dart:io';

void main() {
  Supermarket supermarket = Supermarket();

  supermarket.items.add(Item(1, 'T-shirt', 1599, 150));
  supermarket.items.add(Item(2, 'Jeans', 2099, 600));
  supermarket.items.add(Item(3, 'Wheat', 749, 2000));
  supermarket.items.add(Item(4, 'Oil', 1249, 750));
  supermarket.items.add(Item(5, 'Shampoo', 249, 500));
  supermarket.items.add(Item(6, 'Perfume', 799, 400));
  supermarket.items.add(Item(7, 'Biscuit', 49, 900));
  supermarket.items.add(Item(8, 'Cold drinks', 199, 3000));
  supermarket.items.add(Item(9, 'Maggie', 10, 1500));
  supermarket.items.add(Item(10, 'Egg', 10, 2500));

  while (true) {
    print('--- Supermarket Billing System ---');
    print('1. New Customer');
    print('2. Display Available Items');
    print('3. Add Item to Cart');
    print('4. Display Customer Cart');
    print('5. Generate Bill for Current Customer');
    print('6. Search Customer by ID');
    print('7. Exit');

    stdout.write('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);
    print('');

    switch (choice) {
      case 1:
        supermarket.newCustomer();
        break;
      case 2:
        supermarket.displayItems();
        break;
      case 3:
        if (supermarket.customers.isNotEmpty) {
          stdout.write('Enter Customer ID: ');
          int customerId = int.parse(stdin.readLineSync()!);
          Customer? customer = supermarket.customers
              .firstWhere((customer) => customer.id == customerId);
          if (customer != null) {
            supermarket.addItemToCart(customer);
          } else {
            print('Customer not found.\n');
          }
        } else {
          print('No customers available.\n');
        }
        break;
      case 4:
        if (supermarket.customers.isNotEmpty) {
          stdout.write('Enter Customer ID: ');
          int customerId = int.parse(stdin.readLineSync()!);
          Customer? customer = supermarket.customers
              .firstWhere((customer) => customer.id == customerId);
          if (customer != null) {
            customer.displayCart();
          } else {
            print('Customer not found.\n');
          }
        } else {
          print('No customers available.\n');
        }
        break;
      case 5:
        if (supermarket.customers.isNotEmpty) {
          stdout.write('Enter Customer ID: ');
          int customerId = int.parse(stdin.readLineSync()!);
          Customer? customer = supermarket.customers
              .firstWhere((customer) => customer.id == customerId);
          if (customer != null) {
            supermarket.generateBill(customer);
          } else {
            print('Customer not found.\n');
          }
        } else {
          print('No customers available.\n');
        }
        break;
      case 6:
        if (supermarket.customers.isNotEmpty) {
          supermarket.searchCustomerById();
        } else {
          print('No customers available.\n');
        }
        break;
      case 7:
        print('Exiting...');
        return;
      default:
        print('Invalid choice.\n');
    }
  }
}
