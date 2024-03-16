
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
            backgroundColor: Colors.black,
        title: const Center(child: Text('BMI',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      ),

      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
          Expanded(
              child: Container(
                child:Column(
                  children: [
                    const SizedBox(height: 30,),
                     Image.asset('assets/female.png',cacheHeight: 100,color: Colors.white,),
                        const SizedBox(height: 10,),
                     const Text('female',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                  ),
                height: 200,
                width: 100,
                decoration:  BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius:  BorderRadius.circular(20.0),

                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 200,
                child: Column(
                  children: [
                        const SizedBox(height: 35,),
                    Image.asset('assets/male.png',color: Colors.white,cacheHeight: 100,),
                     const SizedBox(height: 10,),
                     const Center(child: Text('male',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                  ],
                ),
                width: 100,
                decoration:  BoxDecoration(
                 color: Colors.grey.shade800,
                  borderRadius:  BorderRadius.circular(20.0)
                ),
              ),
            ),
            
               
               

              ],
            ),
              const SizedBox(height: 15,),
             Container(
                height: 200,
                width: double.infinity,
                decoration:  BoxDecoration(
                 color: Colors.grey.shade800,
                  borderRadius:  BorderRadius.circular(20.0)
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',style: const TextStyle(color: Colors.white)),
                      const Row(
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                       mainAxisAlignment: MainAxisAlignment.center,
                       textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('180',style: TextStyle(color: Colors.white),),
                          Text('cm',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      SliderTheme(data:SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.red,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ), child:  Slider(
                      value:120,
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                         
                        });
                      },
                    ),)
                    ],
                    ),
                ),
              ),
          
          ],
        ),
      ),
    );

  
  }
}