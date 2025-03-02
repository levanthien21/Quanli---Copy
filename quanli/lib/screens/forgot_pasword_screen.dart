import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            decoration: const BoxDecoration(
              color: AppColors.primaryGreen,
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Status bar section
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Container(
                    width: 335,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Time
                        const Text("16:04", style: AppTextStyles.statusBarTime),
                        // Status icons
                        Row(
                          children: [
                            Image.network(
                              "https://img.icons8.com/?size=100&id=118468&format=png&color=000000",
                              width: 13,
                              height: 11,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 4),
                            Image.network(
                              "https://img.icons8.com/?size=100&id=17904&format=png&color=000000",
                              width: 17,
                              height: 10,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Main title
                const Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Text(
                    "Quên mật khẩu?",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkText,
                      height: 1.0,
                    ),
                  ),
                ),

                // Main content area
                Container(
                  margin: const EdgeInsets.only(top: 65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGreenBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(34, 90, 34, 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Subtitle
                      const Text(
                        "Quên mật khẩu?",
                        style: AppTextStyles.heading2,
                      ),

                      // Description text
                      const Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: AppTextStyles.bodyText,
                        ),
                      ),

                      // Email input label
                      const Padding(
                        padding: EdgeInsets.only(top: 82),
                        child: Text(
                          "Nhập email của bạn",
                          style: AppTextStyles.inputLabel,
                        ),
                      ),

                      // Email input field
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 19,
                          vertical: 14,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.inputFieldBackground,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Text(
                          "example@example.com",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0x73093030), // Opacity 0.45
                          ),
                        ),
                      ),

                      // Continue button
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 49),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryGreen,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primaryGreen.withOpacity(
                                    0.3,
                                  ),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(15),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 12,
                                  ),
                                  child: Text(
                                    "tiếp tục",
                                    style: AppTextStyles.buttonText.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Register button
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 130),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.primaryGreen,
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(15),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 12,
                                  ),
                                  child: Text(
                                    "Đăng kí",
                                    style: AppTextStyles.buttonText.copyWith(
                                      color: AppColors.primaryGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Or login with text
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            "hoặc đăng nhập với",
                            style: AppTextStyles.smallText,
                          ),
                        ),
                      ),

                      // Social login options
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                "https://cdn.builder.io/api/v1/image/assets/TEMP/99005c40ca69c3b86009cccb5c1d4067adc97556dadd17ae6b732359308a0f66?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5",
                                width: 34,
                                height: 34,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 16),
                              Image.network(
                                "https://cdn.builder.io/api/v1/image/assets/TEMP/5be806f23e1e9eda1d1b631199a57c90aaa9dc07776f339ccaaa5dcd883faf30?placeholderIfAbsent=true&apiKey=8506627395044e738f3e2377e0cce4c5",
                                width: 34,
                                height: 34,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Sign up link
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28),
                          child: RichText(
                            text: const TextSpan(
                              style: AppTextStyles.smallText,
                              children: [
                                TextSpan(text: "Bạn chưa có tài khoản? "),
                                TextSpan(
                                  text: "Đăng Kí",
                                  style: TextStyle(
                                    fontFamily: 'League Spartan',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.linkBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
