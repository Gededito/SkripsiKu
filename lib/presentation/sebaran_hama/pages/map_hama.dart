import 'package:flutter/material.dart';
import 'package:grapegrow_apps/core/constants/colors.dart';
import 'package:grapegrow_apps/presentation/sebaran_hama/pages/add_hama_map.dart';

class MapHama extends StatefulWidget {
  const MapHama({super.key});

  @override
  State<MapHama> createState() => _MapHamaState();
}

class _MapHamaState extends State<MapHama> {
  final String fontPoppins = 'FontPoppins';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Map Sebaran Hama',
          style: TextStyle(
            fontSize: 16,
            fontFamily: fontPoppins,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddHamaMap()
            ),
          );
        },
        backgroundColor: AppColors.white,
        child: const Icon(
          Icons.add,
          size: 40,
          color: AppColors.primary,
        ),
      ),
    );
  }
}