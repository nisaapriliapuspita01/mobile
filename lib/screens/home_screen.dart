import 'package:flutter/material.dart';
import 'package:kawalcorona/widgets/widgets.dart';
import 'package:kawalcorona/config/palette.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _country = 'USA',
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          _buildHeader(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'KAWALCORONA',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CountryDropdown(
                  countries: ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'],
                  country: _country,
                  onChanged: (val) => setState(() => _country = val),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(  
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>)[
              Text(
              'Are you feeling sick?',
              style: const TextStyle(
                color: Colors.white,
                fontSize : 22.0,
                fontWeight: FontWeight.w600,
              ),
              ),
              Text(
              'If you feel sick with any COVID-19 symptoms, please call or text us immediate for help'
                style: const TextStyle(
                color: Colors.white,
                fontSize : 15.0,
              ),
              ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}
