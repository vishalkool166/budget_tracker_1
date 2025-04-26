import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/sections/dashboard_section.dart';
import '../../models/transaction_model.dart';
import '../../providers/user_provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;
    final transactions = SampleTransactions.getData();

    if (user == null) return const SizedBox();

    final double income = transactions
        .where((tx) => !tx.isExpense)
        .fold(0, (sum, tx) => sum + tx.amount);
    final double expense = transactions
        .where((tx) => tx.isExpense)
        .fold(0, (sum, tx) => sum + tx.amount);
    final double balance = income - expense;

    return SafeArea(
      child: SingleChildScrollView(
        child: DashboardSection(
          userName: user.name,
          balance: balance,
          income: income,
          expense: expense,
          transactions: transactions,
        ),
      ),
    );
  }
}
