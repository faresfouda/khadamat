import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/views/search/widgets/searchTags.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(color: Colors.white,),
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              fillColor: const Color(0xFFF5F5F5),
              filled: true,
              hintText: 'ما الذي تبحث عنه؟',
              prefixIcon: IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/search-normal.svg',
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              hintStyle: const TextStyle(color: Color(0xFFA1A1A1),fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            onTap: () {

            },
          ),
        ),
        titleSpacing: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.only(right: 24.0,left:50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.0,bottom: 16),
              child: Text('ابحث باسم الخدمة',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF37928B)),),
            ),
            SearchTags(),
          ],
        ),
      ),
    );
  }
}
