import 'package:flutter/material.dart';

class PeriodSelector extends StatelessWidget {
  const PeriodSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: const Color(0xFFDFF7E2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPeriodOption('Ngày', false),
          const SizedBox(width: 24),
          _buildPeriodOption('Tuần', false),
          const SizedBox(width: 24),
          _buildPeriodOption('Tháng', true),
        ],
      ),
    );
  }

  Widget _buildPeriodOption(String text, bool isActive) {
    return Container(
      width: 95,
      height: isActive ? 50 : 31,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isActive ? 19 : 10),
        color: isActive ? const Color(0xFF00D09E) : const Color(0xFFDFF7E2),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xFF052224),
          fontFamily: 'Poppins',
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
