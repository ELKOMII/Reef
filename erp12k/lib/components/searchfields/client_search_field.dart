import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import 'package:erp12k/src/user_data_example.dart';

class ClientSearchField extends StatefulWidget {
  const ClientSearchField({super.key, required this.title});
  final String title;
  @override
  State<ClientSearchField> createState() => _ClientSearchFieldState();
}

class _ClientSearchFieldState extends State<ClientSearchField> {
  final List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    for (var element in usersdata) {
      users.add(UserModel.fromJson(element));
    }
  }

  // ignore: non_constant_identifier_names
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SearchField<UserModel>(
        searchStyle: const TextStyle(fontSize: 15),
        maxSuggestionsInViewPort: 5,
        itemHeight: 80,
        suggestionsDecoration: SuggestionDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8),
          ),
          border: Border.all(
            color: Colors.blue.shade900,
          ),
        ),
        // initialValue: SearchFieldListItem<UserModel>(
        //   users[2].name,
        //   child: Container(
        //     color: Colors.red,
        //     width: 100,
        //     alignment: Alignment.center,
        //     child: Text(
        //       users[2].name,
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ),
        controller: SearchController,
        textAlign: TextAlign.right,
        suggestionItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            shape: BoxShape.rectangle,
            border: Border.all(
                color: Colors.transparent,
                style: BorderStyle.solid,
                width: 1.0)),
        //          decoration: InputDecoration(
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        searchInputDecoration: InputDecoration(
          labelText: widget.title,
          // filled: true,
          // fillColor: Colors.grey.withOpacity(0.2),
          // focusedBorder: OutlineInputBorder(
          //   borderSide: const BorderSide(
          //     color: Colors.white,
          //     width: 2.0,
          //   ),
          //   borderRadius: BorderRadius.circular(8.0),
          // ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        marginColor: Colors.grey.shade300,
        // onSuggestionTap: (p0) => {
        //       setState(() {
        //         SearchController.text =
        //             p0.searchKey.split(',')[1].replaceFirst('[', '');

        //         // SearchController. = p0.searchKey.split(',')[0].replaceFirst('[', '');
        //       })
        //     },
        // onSuggestionTap: (p0)=>{ SearchController.text = "asdsad"},
        suggestions: users
            .map((e) => SearchFieldListItem<UserModel>(e.name,
                child: UserTile(user: e)))
            .toList());
  }
}

class UserTile extends StatelessWidget {
  final UserModel user;

  // ignore: use_super_parameters
  const UserTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(user.name),
          Text(user.role),
        ],
      ),
    );
  }
}

class UserModel {
  final int id;
  final String name;
  final String role;
  final String searchdata;
  final String team;
  final String status;
  final String age;
  final String avatar;
  final String email;

  UserModel({
    required this.searchdata,
    required this.id,
    required this.name,
    required this.role,
    required this.team,
    required this.status,
    required this.age,
    required this.avatar,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      searchdata: json['searchdata'].toString(),
      id: json['id'],
      name: json['name'],
      role: json['role'],
      team: json['team'],
      status: json['status'],
      age: json['age'] ?? '18',
      avatar: json['avatar'],
      email: json['email'],
    );
  }
}
