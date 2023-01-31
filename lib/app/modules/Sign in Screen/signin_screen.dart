import 'package:application/app/modules/Sign%20in%20Screen/signin_controller.dart';
import 'package:flutter/material.dart';
import '../../routes/app_pages.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
        builder: (SignInController controller) {
          return Scaffold(
            backgroundColor: const Color(0xff4F7D67),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      bottom: 45,
                    ),

                    child: Image.asset(
                      'assets/door1.png',
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 165,
                      left: 55,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 55,
                    ),
                    child: SizedBox(
                      width: 300,
                      height: 59,
                      child: TextField(
                        controller: controller.controller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          hintText: 'Enter Your Stick ID',
                          hintStyle: TextStyle(
                            color: controller.isTextEmpty
                                ? const Color(0xffff0000)
                                : const Color(0xff8C9F9B),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              width: 3,
                              color: controller.isTextEmpty
                                  ? const Color(0xffff0000)
                                  : const Color(0xff354A41),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff354A41),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: SizedBox(
                      width: 300,
                      height: 59,
                      child: ElevatedButton(
                        onPressed: () async{
                          await controller.getAllUsers();
                          controller.empty();
                          controller.exisit(controller.controller.text);
                            if(controller.isUserExisit) {
                              Get.offNamed(Routes.routeEnterData);
                            } else{
                              const Center(
                                  child:Text(
                                "Stick ID not found!!",
                                style: TextStyle(color: Colors.white,fontSize: 14,),
                              ),
                              );
                            }

                          // final DocumentReference documentReference = FirebaseFirestore.instance.doc("users/${controller.controller.text}");
                          // StreamSubscription<DocumentSnapshot> subscription = documentReference. snapshots().listen((datasnapshot) {
                          //   print(datasnapshot.exists);
                          //   if(datasnapshot.exists){
                          //     Get.offNamed(Routes.routeEnterData);
                          //   } else {
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: const Color(0xff354A41),
                            elevation: 0,
                            side: const BorderSide(
                              color: Colors.white,
                              width: 3,
                            )),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
