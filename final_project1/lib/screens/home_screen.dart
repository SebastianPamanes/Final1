import 'package:final_project1/providers/movies_provider1.dart';
import 'package:flutter/material.dart';
import 'package:final_project1/providers/movies_provider.dart';
import 'package:final_project1/screens/widgets/background.dart';
import 'package:final_project1/screens/widgets/card_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
     final moviesProvider1 = Provider.of<MoviesProvider1>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){
              
            }, 
            icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Stack(
        children: [
          const Background(),
          SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.dataMovies),
              CardSwiper(movies: moviesProvider1.dataMovies)
              ],
            ),
          ),
        ]
      ),
    );
  }
}