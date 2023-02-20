// ignore_for_file: body_might_complete_normally_nullable

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:newapp/magazineresponse';

class Categories {
  final String thumbnail;
  final String name;
    final String catId;

  const Categories({required this.thumbnail, required this.name required this.catId});

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
        thumbnail: json['cat_icon'] as String, name: json['name'] as String, catId: json['category_id'] as String);
  }
}

Future<List<Categories>> fetchCategories(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://sls.magzter.com/magservices/prod/getCategories?lang=en'));
  return compute(parseCategories, response.body);
}

List<Categories> parseCategories(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Categories>((json) => Categories.fromJson(json)).toList();
}

void main(List<String> args) {
  runApp(const CategoriesApp());
}

class CategoriesApp extends StatelessWidget {
  const CategoriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = "Category page";
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: CategoryPage(title: appTitle),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new), title: Text(title)),
      body: FutureBuilder<List<Categories>>(
          future: fetchCategories(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("Unable to load categories"),
              );
            } else if (snapshot.hasData) {
              return CategoriesList(categories: snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.categories});
  final List<Categories> categories;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(item: categories[index]);
        });
  }
}

class CategoryItem extends StatelessWidget {
  final Categories item;
  const CategoryItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(13),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MagazineList(catName: item.name),
              ),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                // Padding(
                //   padding: const EdgeInsets.all(18),

                child: Image.network(item.thumbnail),
              ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(4),
              Text(
                item.name,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              // ),
            ],
          ),
        ));
  }
}

class MagazineResponse {
  List<Hits>? hits;
  
  MagazineResponse(
      {this.hits,
      });

  MagazineResponse.fromJson(Map<String, dynamic> json) {
    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits!.add(new Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hits != null) {
      data['hits'] = this.hits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hits {
  String? magName;
  String? imgPath;
  
  Hits(
      {this.magName,
      this.imgPath,
      });

  Hits.fromJson(Map<String, dynamic> json) {
    magName = json['magName'];
    imgPath = json['imgPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['magName'] = this.magName;
    data['imgPath'] = this.imgPath;
    return data;
  }
}


Future<MagazineResponse?> fetchHits(http.Client client,String catId) async {
  //try {
  final response = await client.get(Uri.parse(
      'https://sls.magzter.com/maglists/prod/magazine-filter?storeID=1&categoryID=${catId}&ver=3'));
  return MagazineResponse.fromJson(jsonDecode(response.body));
  //} catch (e) {}
}

List<Hits> parseHits(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed
      .map<MagazineResponse>((json) => MagazineResponse.fromJson(json))
      .toList();
}

class MagazineList extends StatelessWidget {
      final String catName;
final String categoryId;
    
  const MagazineList({super.key, required this.catName, required this.categoryId});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const CategoryPage(
              //             title: 'CategoryPage',
              //           )),
              // );
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: Text(catName),
        ),
        body: FutureBuilder<MagazineResponse?>(
            future: fetchHits(http.Client(),categoryId),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text("Couldn't load Magazines..."),
                );
              } else if (snapshot.hasData) {
                return MagazineView(magazineViews: snapshot.data!.hits);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}

class MagazineView extends StatelessWidget {
  const MagazineView({super.key, required this.magazineViews});
  final List<Hits>? magazineViews;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 14,
                mainAxisExtent: 260),
            itemCount: magazineViews!.length,
            itemBuilder: (context, index) {
              return MagazinBox(item: magazineViews![index]);
            }),
      ),
    );
  }
}

class MagazinBox extends StatelessWidget {
  final Hits item;
  const MagazinBox({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            child: Image.network(
              'https://cdn.magzter.com/${item.imgPath!}',
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                item.magName!,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
