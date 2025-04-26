class TransactionModel {
  final String id;
  final String title;
  final String merchant;
  final double amount;
  final DateTime date;
  final String category;
  final bool isExpense;
  final String? logo;

  TransactionModel({
    required this.id,
    required this.title,
    required this.merchant,
    required this.amount,
    required this.date,
    required this.category,
    required this.isExpense,
    this.logo,
  });
}

// Sample data
class SampleTransactions {
  static List<TransactionModel> getData() {
    return [
      TransactionModel(
        id: '1',
        title: 'Grocery Shopping',
        merchant: 'Whole Foods Market',
        amount: 156.78,
        date: DateTime.now().subtract(const Duration(hours: 2)),
        category: 'Groceries',
        isExpense: true,
        logo: '🛒',
      ),
      TransactionModel(
        id: '2',
        title: 'Monthly Salary',
        merchant: 'Tech Corp Inc.',
        amount: 5000.00,
        date: DateTime.now().subtract(const Duration(days: 1)),
        category: 'Income',
        isExpense: false,
        logo: '💼',
      ),
      TransactionModel(
        id: '3',
        title: 'Coffee & Snacks',
        merchant: 'Starbucks',
        amount: 12.40,
        date: DateTime.now().subtract(const Duration(hours: 5)),
        category: 'Food & Drinks',
        isExpense: true,
        logo: '☕',
      ),
      // Add more sample transactions...
    ];
  }
}
