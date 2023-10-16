// import 'package:flutter/widgets.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';
// import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_app/screens/details/details_screen.dart';
// import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
// import 'package:shop_app/screens/home/home_screen.dart';
// import 'package:shop_app/screens/login_success/login_success_screen.dart';
// import 'package:shop_app/screens/otp/otp_screen.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';
// import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
// import 'package:shop_app/screens/splash/splash_screen.dart';

// import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
import 'package:flutter/cupertino.dart';
import 'package:renta/screens/ProductCart/cartPagee.dart';
import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';
import 'package:renta/screens/Sign%20in/VendorSignIn.dart';
import 'package:renta/screens/Sign%20up/customer_signup.dart';
import 'package:renta/screens/Sign%20up/vendorsignup.dart';
// import 'package:renta/screens/cart/cart.dart';
// import 'package:renta/screens/cart/components/cart_screen.dart';
import 'package:renta/screens/complete_profile/complete_profile_screen.dart';
import 'package:renta/screens/details/details_screen.dart';
import 'package:renta/screens/home/home.dart';
import 'package:renta/screens/otp/otp_screen.dart';
import 'package:renta/screens/password/forgotpassword.dart';
import 'package:renta/screens/profile/profile.dart';
import 'package:renta/splashscreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashscreenApp(),
  CustomerSignUpPage.routeName: (context) => CustomerSignUpPage(),
  VendorSignUpApp.routeName: (context) => CustomerSignUpPage(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  CustomerSignIn.routeName: (context) => CustomerSignIn(),
  VendorLoginPage.routeName: (context) => VendorLoginPage(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartPage.routeName: (context) => CartPage(),
  AccountProfileScreen.routeName: (context) => AccountProfileScreen(),
};
