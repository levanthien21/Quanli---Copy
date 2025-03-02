import 'package:flutter/material.dart';
import '../models/transaction.dart' as model;

class TransactionItem extends StatelessWidget {
  final model.Transaction transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          transaction.iconPath,
          width: 57,
          height: 53,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.category,
                style: const TextStyle(
                  color: Color(0xFF052224),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                transaction.date,
                style: const TextStyle(
                  color: Color(0xFF0068FF),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: 6),
        Text(
          transaction.amount,
          style: TextStyle(
            color:
                transaction.type == model.TransactionType.income
                    ? const Color(0xFF052224)
                    : const Color(0xFF0068FF),
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
