import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Updated color palette based on the image
  static const Color background = Color(0xFFF1FFF3);
  static const Color primaryGreen = Color(0xFF00D09E);
  static const Color darkText = Color(0xFF052224);
  static const Color blueDark = Color(0xFF0068FF);
  static const Color blueLight = Color(0xFF6DB6FE);
  static const Color cardBackground = Color(0xFFF8FFFB);
  static const Color dividerColor = Color(0xFFDFF7E2);
  static const Color lightBlue = Color(0xFF81D4FA);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Enhanced Header with full-screen width and rounded corners
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryGreen,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x20000000),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chào Mừng Bạn Trở Lại',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Chào buổi sáng!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Balance cards
                    Row(
                      children: [
                        Expanded(
                          child: _buildFinancialCard(
                            title: 'Tổng Số Dư',
                            amount: '7,830.00 VND',
                            icon: Icons.account_balance_wallet_outlined,
                            color: cardBackground,
                            amountColor: blueDark,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Expanded(
                          child: _buildFinancialCard(
                            title: 'Tổng Chi Phí',
                            amount: '-11,187.00 VND',
                            icon: Icons.trending_down,
                            color: cardBackground,
                            amountColor: Colors.red,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: screenHeight * 0.02),

                    // Progress bar matching the image
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: cardBackground,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: primaryGreen.withOpacity(0.2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.celebration,
                                      size: 20,
                                      color: primaryGreen,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Tuyệt Vời! Bạn Đã Giảm Chi Phí 30%',
                                    style: TextStyle(
                                      color: darkText,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(
                              children: [
                                Container(
                                  height: 12,
                                  width: double.infinity,
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                                FractionallySizedBox(
                                  widthFactor: 0.3, // 30% progress
                                  child: Container(
                                    height: 12,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          primaryGreen,
                                          primaryGreen.withOpacity(0.7),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 0,
                                  bottom: 0,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 2,
                                        ),
                                        child: const Text(
                                          "30%",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "20,000.00 VND",
                              style: TextStyle(
                                color: darkText,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // REDESIGNED Savings Goals with Clear Column Separation
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mục Tiêu Tiết Kiệm',
                      style: TextStyle(
                        color: darkText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00D19D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          // Left section with car icon - clearly separated
                          Container(
                            width: 100,
                            height: 100,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0068FF).withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: CircularProgressIndicator(
                                    value: 0.3,
                                    strokeWidth: 8,
                                    backgroundColor: const Color(
                                      0xFF0068FF,
                                    ).withOpacity(0.1),
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                          Color(0xFF0068FF),
                                        ),
                                  ),
                                ),
                                const Icon(
                                  Icons.directions_car,
                                  size: 35,
                                  color: Color(0xFF0068FF),
                                ),
                              ],
                            ),
                          ),
                          // Add a vertical divider for clear column separation
                          Container(
                            height: 100,
                            width: 1,
                            color: Colors.white.withOpacity(0.3),
                          ),
                          const SizedBox(width: 15),
                          // Right section with two clearly separated columns
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mục Tiêu Tiết Kiệm',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // Row with two separated columns
                                Row(
                                  children: [
                                    // First Column: Income
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.monetization_on_outlined,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              const SizedBox(width: 5),
                                              const Text(
                                                'Doanh thu',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 4),
                                          const Text(
                                            '4,000,000.00 VND',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Vertical divider between sub-columns
                                    Container(
                                      height: 40,
                                      width: 1,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                    // Second Column: Expenses
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.fastfood,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                const SizedBox(width: 5),
                                                const Text(
                                                  'Thực phẩm',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            const Text(
                                              '-1,000,000.00 VND',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                // Progress tracker for savings goal
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Tiến độ tiết kiệm',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const Text(
                                          '30%',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    // Progress bar
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 6,
                                            width: double.infinity,
                                            color: Colors.white.withOpacity(
                                              0.3,
                                            ),
                                          ),
                                          FractionallySizedBox(
                                            widthFactor: 0.3, // 30% progress
                                            child: Container(
                                              height: 6,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Transaction section with improved design
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  children: [
                    _buildTransactionHeader(),
                    // Transactions list
                    _buildTransactionItem(
                      icon: Icons.account_balance_wallet,
                      title: 'Tiền Lương',
                      time: '18:27 - 30 Tháng 1',
                      amount: '4,000,000 VND',
                      iconBgColor: const Color(0xFF81D4FA),
                    ),
                    Divider(color: dividerColor, height: 1),
                    _buildTransactionItem(
                      icon: Icons.fastfood,
                      title: 'Thực Phẩm',
                      time: '17:00 - 24 Tháng 1',
                      amount: '-100,000 VND',
                      isNegative: true,
                      iconBgColor: const Color(0xFF81D4FA),
                    ),
                    Divider(color: dividerColor, height: 1),
                    _buildTransactionItem(
                      icon: Icons.home_work,
                      title: 'Thuê Nhà',
                      time: '8:30 - 15 Tháng 1',
                      amount: '-674,400 VND',
                      isNegative: true,
                      iconBgColor: const Color(0xFF81D4FA),
                    ),
                  ],
                ),
              ),

              // Add some bottom padding for better UX
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  // Enhanced financial card with icon
  Widget _buildFinancialCard({
    required String title,
    required String amount,
    required IconData icon,
    required Color color,
    Color? amountColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: darkText.withOpacity(0.7)),
              const SizedBox(width: 5),
              Text(
                title,
                style: TextStyle(
                  color: darkText.withOpacity(0.6),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            amount,
            style: TextStyle(
              color: amountColor ?? primaryGreen,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  // Improved transaction header with filters
  Widget _buildTransactionHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Giao Dịch Gần Đây',
                style: TextStyle(
                  color: darkText,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Filter tabs matching image
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTimeFilter('Ngày', isActive: true),
                _buildTimeFilter('Tuần'),
                _buildTimeFilter('Tháng', isMonth: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Enhanced time filter to match the image
  Widget _buildTimeFilter(
    String text, {
    bool isActive = false,
    bool isMonth = false,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color:
              isActive
                  ? Colors.white
                  : isMonth
                  ? primaryGreen
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          boxShadow:
              isActive || isMonth
                  ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]
                  : [],
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color:
                isActive
                    ? Colors.black
                    : isMonth
                    ? Colors.white
                    : Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  // Improved transaction item to match the image
  Widget _buildTransactionItem({
    required IconData icon,
    required String title,
    required String time,
    required String amount,
    bool isNegative = false,
    required Color iconBgColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          // Icon similar to the image
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(width: 12),
          // Title and time
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: darkText,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ],
            ),
          ),
          // Amount
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                isNegative ? amount : amount,
                style: TextStyle(
                  color: isNegative ? Colors.red : primaryGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Enhanced bottom navigation bar to match the image
  Widget _buildBottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavIcon(Icons.home, true),
            _buildNavIcon(Icons.analytics_outlined, false),
            _buildNavIcon(Icons.swap_horiz, false),
            _buildNavIcon(Icons.article_outlined, false),
            _buildNavIcon(Icons.person_outline, false),
          ],
        ),
      ),
    );
  }

  // Nav icon helper
  Widget _buildNavIcon(IconData icon, bool isActive) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isActive ? primaryGreen.withOpacity(0.2) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: isActive ? primaryGreen : Colors.grey, size: 24),
    );
  }
}
