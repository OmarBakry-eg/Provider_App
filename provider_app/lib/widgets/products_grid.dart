import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/providerInDeep/screens/provider_screen_details.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;

  ProductsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = showFavs ? productsData.favoriteItems : productsData.items;
    return ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 400,
          child: GridView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: products.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              // builder: (c) => products[i],
              value: products[i],
              child: ProductItem(
                  // products[i].id,
                  // products[i].title,
                  // products[i].imageUrl,
                  ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Container(
            width: 90,
            height: 60,
            child: RaisedButton(
              onPressed: () {
                navigator(context);
              },
              child: Center(
                child: Text('More about provider'),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void navigator(BuildContext context) {
    Navigator.pushNamed(context, ProviderScreenDetails.routeName);
  }
}
