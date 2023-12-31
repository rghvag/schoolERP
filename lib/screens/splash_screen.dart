import 'package:flutter/material.dart';
import 'package:schoolerp/screens/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                height: 240,
                child: Image.asset('assets/images/images.jpg'),
              ),

              //text
              const SizedBox(
                height: 30,
              ),

              Text(
                'Educating for complexity',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
              ),

              //text
              const SizedBox(
                height: 10,
              ),

              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  'LorenIpsumEducatingforcomplexityfasdsasdfalskdfjahklfhakfjjahlfhalkfakflhdlfhalkfkhasfaukygfajsgfjgagfkasjjaksqewiruqyrnb,mbxcvmvqerypqweuriqwtnzbvzvhlajsf',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //button
              Container(
                margin: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: TextButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) => HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      height: 3,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
