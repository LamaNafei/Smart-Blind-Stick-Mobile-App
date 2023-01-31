import 'package:flutter/material.dart';
import 'enter_data_controller.dart';

class EnterDataScreen extends StatelessWidget {
  const EnterDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EnterDataController>(
        init: EnterDataController(),
    builder: (EnterDataController controller) {
      return Scaffold(
        backgroundColor: const Color(0xff4F7D67),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 45,),
                child: Image.asset(
                  'assets/database1.png',
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 40, left: 40, right: 40,),
              //   child:
            SizedBox(
                  width: 300,
                  height:250,
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: controller.catfile != null ?
                      DecorationImage(
                        fit: BoxFit.cover,
                        image:  FileImage(controller.catfile!)
                      )
                          : null
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            controller.uploadImage();
                          },
                          icon: const Icon(Icons.add_photo_alternate_rounded)                    ,
                        ),
                        IconButton(
                          onPressed: () {
                            controller.cameraImage();
                          },
                          icon: const Icon(Icons.camera_alt),
                        ),
                      ],
                    ),
                    ),
                    //     pickCategoriesImage() async {
                    // XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
                    // this.Catfile = File(file!.path);
                    // notifyListeners();
                    // }
                  ),
                // ),

               Padding(
                padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
                child:
                SizedBox(
                  width: 300,
                  height: 59,
                  child: TextField(
                    controller: controller.controller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: controller.isTextEmpty
                            ? const Color(0xffff0000)
                            : const Color(0xff8C9F9B),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 3,
                          color: controller.isTextEmpty
                              ? const Color(0xffff0000)
                              : const Color(0xff354A41),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
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
                padding: const EdgeInsets.only(top: 80),
                child: SizedBox(
                  width: 300,
                  height: 59,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.empty();
                      controller.creatData();
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
                        )
                    ),
                    child: const Text(
                      'Enter Data',
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
    },
    );
  }
  } 