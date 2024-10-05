import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class UserData {
  String name;
  String subtitle;
  String imagePath;
  UserData({required this.name, required this.subtitle, required this.imagePath});
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<Search> {

  List<UserData> userData = [
    UserData(name: 'Prince', subtitle: 'hello how are you', imagePath: 'assets/images/img.png'),
    UserData(name: 'Rahul', subtitle: 'ok bye', imagePath: 'assets/images/img_1.png'),
    UserData(name: 'Ram', subtitle: 'when are come to class', imagePath: 'assets/images/img_2.png'),
    UserData(name: 'Ramu', subtitle: 'bye', imagePath: 'assets/images/img_3.png'),
  ];

  File? _imageFile;
  final _picker = ImagePicker();
  var filteredItems = <UserData>[];
  var textController = TextEditingController();
  var textSabTitle = TextEditingController();
  var searchController = TextEditingController();
  final _selectedItems = <int>{};
  bool isSelectMood = false;


  @override
  void initState() {
    super.initState();
    filteredItems = userData;
  }

  void addToListData() {
    if (_imageFile != null) {
      setState(() {
        userData.add(UserData(
          name: textController.text,
          subtitle: textSabTitle.text,
          imagePath: _imageFile!.path,
        ));
        filteredItems = userData;
        textController.clear();
        textSabTitle.clear();
        _imageFile = null;
      });
      Navigator.of(context).pop();
    } else {
      Fluttertoast.showToast(msg: 'Please select an image first');
    }
  }

  void removeSelectedItems() {
    setState(() {
      userData.removeWhere((item) => _selectedItems.contains(userData.indexOf(item)));
      filteredItems = userData;
      _selectedItems.clear();
      isSelectMood = false;
    });
  }

  void updateData(int index) {
    textController.text = userData[index].name;
    textSabTitle.text = userData[index].subtitle;

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  pickImage();
                },
                child: CircleAvatar(
                  maxRadius: 40,
                  backgroundColor: Colors.orange,
                  child: ClipOval(
                    child: _imageFile != null
                        ? Image.file(
                      _imageFile!,
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    )
                        : userData[index].imagePath.startsWith('assets/')
                        ? Image.asset(
                      userData[index].imagePath,
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    )
                        : Image.file(
                      File(userData[index].imagePath),
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
              ),
              TextField(
                controller: textController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: textSabTitle,
                decoration: InputDecoration(labelText: 'SubTitle'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    userData[index].name = textController.text;
                    userData[index].subtitle = textSabTitle.text;
                    if (_imageFile != null) {
                      userData[index].imagePath = _imageFile!.path;
                      _imageFile = null;
                    }
                    filteredItems = userData;
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Update'),
              ),
            ],
          ),
        );
      },
    );
  }

  void pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    } else {
      Fluttertoast.showToast(msg: 'Image is not selected');
    }
  }

  void filterSearch(String query) {
    var result = <UserData>[];
    if (query.isEmpty) {
      result = userData;
    } else {
      result = userData.where((item) => item.name.toLowerCase().contains(query.toLowerCase())).toList();
    }
    setState(() {
      filteredItems = result;
    });
  }

  void showDeleteDialog() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('!Alert'),
        content: const Text('Do you want to delete the selected items?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'OK');
              removeSelectedItems();
              Fluttertoast.showToast(msg: 'Items Deleted');
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          child: TextField(
            controller: searchController,
            onChanged: (value) {
              filterSearch(value);
            },
            decoration:  InputDecoration(
              labelText: 'Search...',
              suffixIcon: Icon(Icons.search),
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 10),
            ),
          ),
        ),
        actions: [
          if (_selectedItems.isNotEmpty)
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: showDeleteDialog,
            ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 5),
        itemBuilder: (context, index) {
          bool isSelected = _selectedItems.contains(index);
          return Card(
            color: isSelected ? Colors.grey : Colors.white,
            shadowColor: Colors.blue,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Colors.blue, width: 1.5),
            ),
            child: ListTile(
              leading: GestureDetector(
                onTap: () {
                  updateData(index);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  maxRadius: 35,
                  child: ClipOval(
                    child: filteredItems[index].imagePath.startsWith('assets/') ? Image.asset(filteredItems[index].imagePath,
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    )
                        : Image.file(
                      File(filteredItems[index].imagePath),
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),
              title: Text('${filteredItems[index].name}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              subtitle: Text('${filteredItems[index].subtitle}', style: TextStyle(fontSize: 17)),
              onLongPress: () {
                setState(() {
                  isSelectMood = true;
                  if (isSelected) {
                    _selectedItems.remove(index);
                  } else {
                    _selectedItems.add(index);
                  }
                });
              },
              onTap: () {
                if (isSelectMood) {
                  setState(() {
                    if (isSelected) {
                      _selectedItems.remove(index);
                      if (_selectedItems.isEmpty) {
                        isSelectMood = false;
                      }
                    } else {
                      _selectedItems.add(index);
                    }
                  });
                }
              },
              selected: isSelected,
              trailing: isSelectMood ? Icon(isSelected ? Icons.check_box : Icons.check_box_outline_blank) : null,
            ),
          );
        },
        itemCount: filteredItems.length,
        separatorBuilder: (context, index) {
          return Divider(height: 10, thickness: 0.0);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          textController.clear();
          textSabTitle.clear();
          _imageFile = null;

          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        maxRadius: 40,
                        child: ClipOval(
                          child: _imageFile != null
                              ? Image.file(_imageFile!, fit: BoxFit.cover, width: 70, height: 70)
                              : Text('No Image'),
                        ),
                      ),
                      onTap: pickImage,
                    ),
                    TextField(
                      controller: textController,
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                    TextField(
                      controller: textSabTitle,
                      decoration: InputDecoration(labelText: 'SubTitle'),
                    ),
                    ElevatedButton(
                      onPressed: addToListData,
                      child: Text('Save'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
