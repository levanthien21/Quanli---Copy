enum TransactionType { income, expense }

class Transaction {
  final TransactionType type;
  final String category;
  final String date;
  final String amount;
  final String iconPath;

  Transaction({
    required this.type,
    required this.category,
    required this.date,
    required this.amount,
    required this.iconPath,
  });
}
