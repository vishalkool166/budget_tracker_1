import 'package:flutter/material.dart';
import '../../models/transaction_model.dart';
import '../cards/balance_card.dart'; // Reuse or create a light variant
import '../cards/transaction_card.dart';

class DashboardSection extends StatelessWidget {
  final String userName;
  final double balance;
  final double income;
  final double expense;
  final List<TransactionModel> transactions;

  const DashboardSection({
    Key? key,
    required this.userName,
    required this.balance,
    required this.income,
    required this.expense,
    required this.transactions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(context),
        const SizedBox(height: 16),
        SleekBalanceCard(
          balance: balance,
          income: income,
          expense: expense,
          changePercent: 2.11, // hardcoded for now
        ),
        const SizedBox(height: 24),
        _buildTransactionHeader(context),
        const SizedBox(height: 12),
        ...transactions.take(3).map(
          (tx) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: ModernTransactionCard(transaction: tx, onTap: () {}),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                userName,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 24,
            backgroundColor: const Color(0xFFE3E3FE),
            child: Text(
              userName.isNotEmpty ? userName[0].toUpperCase() : 'U',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF6563FF),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTransactionHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Transactions',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See all',
              style: TextStyle(
                color: Color(0xFF6563FF),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
