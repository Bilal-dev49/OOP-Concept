import 'dart:async';
import 'dart:io';

class BankAccount {
  String name;
  double balance;
  List<String> transactionHistory = [];

  BankAccount(this.name, this.balance);

  void addTransaction(String transaction) {
    if (transactionHistory.length == 5) {
      transactionHistory.removeAt(0);
    }
    transactionHistory.add('${DateTime.now()}: $transaction');
  }
}

void main() async {
  BankAccount account = await createAccount();

  while (true) {
    print('\n--- Banking Menu ---');
    print('1. Deposit Money');
    print('2. Withdraw Money');
    print('3. Check Balance');
    print('4. Exit');
    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        await depositMoney(account);
        break;
      case '2':
        await withdrawMoney(account);
        break;
      case '3':
        checkBalance(account);
        break;
      case '4':
        print('Exiting the program. Thank you for using our services.');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

Future<BankAccount> createAccount() async {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  double? initialDeposit;
  while (true) {
    stdout.write('Enter your initial deposit amount (min \$100): ');
    initialDeposit = double.tryParse(stdin.readLineSync() ?? '');
    if (initialDeposit != null && initialDeposit >= 100) {
      break;
    } else {
      print('Invalid amount. The initial deposit must be at least \$100.');
    }
  }

  BankAccount account = BankAccount(name ?? 'User', initialDeposit);
  print(
      'Account created successfully for ${account.name} with a balance of \$${account.balance.toStringAsFixed(2)}');
  return account;
}

Future<void> depositMoney(BankAccount account) async {
  stdout.write('Enter the amount to deposit: ');
  double? amount = double.tryParse(stdin.readLineSync() ?? '');

  if (amount != null && amount > 0) {
    print('Processing...');
    await Future.delayed(Duration(seconds: 2));
    account.balance += amount;
    account.addTransaction('Deposited \$${amount.toStringAsFixed(2)}');
    print(
        'Deposit successful. New balance: \$${account.balance.toStringAsFixed(2)}');
  } else {
    print('Invalid deposit amount.');
  }
}

Future<void> withdrawMoney(BankAccount account) async {
  stdout.write('Enter the amount to withdraw: ');
  double? amount = double.tryParse(stdin.readLineSync() ?? '');

  if (amount != null && amount > 0) {
    if (amount <= account.balance) {
      print('Processing...');
      await Future.delayed(Duration(seconds: 2));
      account.balance -= amount;
      account.addTransaction('Withdrew \$${amount.toStringAsFixed(2)}');
      print(
          'Withdrawal successful. New balance: \$${account.balance.toStringAsFixed(2)}');
    } else {
      print('Insufficient balance. Withdrawal amount exceeds current balance.');
    }
  } else {
    print('Invalid withdrawal amount.');
  }
}

void checkBalance(BankAccount account) {
  print('Current balance: \$${account.balance.toStringAsFixed(2)}');
  print('Last 5 transactions:');
  for (var transaction in account.transactionHistory) {
    print(transaction);
  }
}
