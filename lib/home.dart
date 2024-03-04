import 'package:finaltender/tender_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        body:ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.1),BlendMode.saturation),
          child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/govern.png'),
              fit: BoxFit.cover,
            ),
          ),
           
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: const Text("Tender",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(248, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          hintText: 'Enter your email',
                          
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                      
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter your email' : null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(248, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.password),
                          iconColor: Colors.blueGrey,
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter your password' : null;
                        },
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TenderHome(),
                            ),
                                 );
                                  },
                                child: const Text(
                              'Sign In',
                              style: TextStyle(
                     color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
                  ),
        ),
    //  ),
    );
  }
}
