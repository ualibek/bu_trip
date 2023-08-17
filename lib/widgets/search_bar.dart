import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String) onSearch;

  const SearchBar({super.key, required this.searchController, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 0.5),
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TextField(
                controller: searchController,
                onChanged: onSearch,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              color: Colors.brown.shade900,
              icon: Icon(Icons.search, size: 40),
              onPressed: () {
                // Implement your search logic here
                onSearch(searchController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
