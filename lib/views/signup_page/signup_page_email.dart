import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterbloc_learning/constant/data/data.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPageWithEmail extends StatefulWidget {
  const SignupPageWithEmail({super.key});

  @override
  State<SignupPageWithEmail> createState() => _SignupPageWithEmailState();
}

class _SignupPageWithEmailState extends State<SignupPageWithEmail> {
  ConstantData constantData = ConstantData();
   final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: SizedBox(
        height: 30.h,
        child: Center(
          child: Text.rich(
            TextSpan(
              text: 'I agree with your',
              style: TextStyle(
                color: const Color.fromRGBO(60, 60, 67, 1),
                fontSize: 12.sp,
              ),
              children: [
                TextSpan(
                  text: ' Terms',
                  style: TextStyle(
                    color: const Color.fromRGBO(4, 4, 4, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(
                    color: const Color.fromRGBO(60, 60, 67, 1),
                    fontSize: 12.sp,
                  ),
                ),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    color: const Color.fromRGBO(4, 4, 4, 1),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    
    body:SingleChildScrollView(
      child: Column(
        children: [
           CarouselSlider(
              options: CarouselOptions(
                height: 390.h,
                autoPlayCurve: Curves.easeInSine,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
              ),
              items: constantData.signupPageBanner.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      image,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
         SizedBox(height: 15.h, ),
         Center(
              child: Column(
                children: [
                  Text(
                    'Get Fresh Fruits and ',
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  Text(
                    ' vegetables at your doresteps',
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  TextButton(
                    onPressed: () {
                      //Get.off(() => const SignupPage());
                    },
                    child: Text(
                      'Log in with phone number',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromRGBO(4, 4, 4, 1),
                      ),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),

             Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: SizedBox(
                height: 46.h,
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email can not be empty";
                    }
                    return null;
                  },
                ),
              ),
            ),
        
        SizedBox(
              height: 15.h,
            ),
        //! Login Button =========================== >
        Loginbtn(emailController: _emailController,
        // passwordController: _passwordController,
        ),

        //! Login Button =========================== >
        ],
      ),
    ) ,
    );
  }
}







class Loginbtn extends StatelessWidget {
  final TextEditingController emailController;
 // final TextEditingController passwordController;

  const Loginbtn({
    Key? key,
    required this.emailController,
   // required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      width: double.infinity,
      height: 40.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: const Color.fromRGBO(226, 10, 19, 1),
        ),
        onPressed: () {},
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}