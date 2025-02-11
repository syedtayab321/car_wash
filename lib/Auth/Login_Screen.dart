import 'package:flutter/foundation.dart';
import 'package:fusionxcar/Auth/Signup_SCreen.dart';
import 'package:fusionxcar/Controller/Auth_Controller.dart';
import 'package:fusionxcar/Home/Home_Screen.dart';
import 'package:fusionxcar/common_widgets/App_Logo_widget.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    const bool isWeb = kIsWeb;
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    return isWeb && !isMobile ? DesktopLayout(controller: controller) : MobileLayout(controller: controller);
  }
}

class MobileLayout extends StatelessWidget {
  final AuthController controller;

  const MobileLayout({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Center(child: Container(width: 77, height: 77, child: ApplogoWidgets())),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: LoginForm(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}

// Desktop Layout
class DesktopLayout extends StatelessWidget {
  final AuthController controller;

  const DesktopLayout({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 100, height: 100, child: ApplogoWidgets()),
              const SizedBox(height: 18),
              LoginForm(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final AuthController controller;

  const LoginForm({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Thank you for choosing Car Wash App! Please login and order.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whiteColor,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 30),
        _buildTextField(
          controller: controller.emailcontroller,
          labelText: 'Email',
        ),
        const SizedBox(height: 20),
        _buildTextField(
          controller: controller.passwordcontroller,
          labelText: 'Password',
          obscureText: true,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text('Forgot Password?', style: TextStyle(color: halfwhite)),
          ),
        ),
        const SizedBox(height: 25),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: Obx(() => controller.isloading.value
                ? const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(buttoncolor))
                : ElevatedButton(
              onPressed: () async {
                controller.isloading(true);
                // await controller.loginmethod(context: context).then((value) {
                //   if (value != null) {
                //     VxToast.show(context, msg: "Logged In");
                //     Get.offAll(() => const HomeScreen());
                //   } else {
                //     controller.isloading(false);
                //   }
                // });
                Get.to(const HomeScreen());
              },
              style: ElevatedButton.styleFrom(backgroundColor: whiteColor),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don’t have an account?',
              style: TextStyle(color: halfwhite, fontSize: 13, fontWeight: FontWeight.w500),
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: () => Get.to(() => const SingUpScreen()),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: whiteColor, fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        _buildSocialLoginButton(),
      ],
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      textAlign: TextAlign.center,
      style: const TextStyle(color: whiteColor, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: halfwhite, fontSize: 15, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: whiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: whiteColor),
        ),
      ),
    );
  }

  Widget _buildSocialLoginButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: whiteColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Continue with Google',
                  style: TextStyle(color: purpleColor, fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Image.asset(
                  icGoogleLogo,
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
