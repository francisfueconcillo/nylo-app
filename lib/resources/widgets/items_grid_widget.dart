import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ItemsGrid extends StatelessWidget {
  const ItemsGrid({super.key});

  final String NEXT_PUBLIC_FIREBASE_STORAGEBUCKET =
      "ibentamo-78eb3.appspot.com";

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: gql(r'''
          query SearchItems(
            $searchText: String
            $category: String
            $city: String
            ) {
            SearchItems(
                searchText: $searchText
                category: $category
                city: $city
            ) {
                id,
                currency,
                condition,
                date_created,
                date_updated,
                delivery_type,
                description,
                images,
                item_city,
                item_location,
                likes,
                meetup_location,
                price,
                seller_id,
                seller_alias,
                seller_avatar,
                slug,
                status,
                title,
            }
          }'''),
        variables: {'searchText': '', 'category': '*', 'city': '*'},
      ),
      builder: (QueryResult result,
          {VoidCallback? refetch, FetchMore? fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.isLoading) {
          return const Text('Loading');
        }

        List items = result.data?['SearchItems'];

        if (items.isEmpty) {
          return const Text('No items to show');
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid
            crossAxisSpacing: 4.0, // Spacing between columns
            mainAxisSpacing: 4.0, // Spacing between rows
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            String imgUrl =
                "https://firebasestorage.googleapis.com/v0/b/${NEXT_PUBLIC_FIREBASE_STORAGEBUCKET}/o/" +
                    Uri.encodeComponent(
                        "item/${items[index]["id"]}/${items[index]["images"][0]}") +
                    "?alt=media";

            return GridTile(
              child: Image.network(imgUrl, fit: BoxFit.cover),
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(items[index]["title"]),
              ),
            );
          },
        );
      },
    );
  }
}
