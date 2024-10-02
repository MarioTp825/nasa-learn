import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/myscelaneous/space_network_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Space Trivia', style: GoogleFonts.spaceMono(color: Colors.white, fontSize: 30),),
          const Text('Powered by', style: TextStyle(fontSize: 20, color: Colors.white),),
          const SizedBox(height: 10,),
          const SpaceNetworkImage(
            url: 'https://i0.wp.com/rockfordil.com/wp-content/uploads/2023/08/nasa-logo.png?ssl=1',
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }

}
