import 'package:flutter/material.dart';
import 'package:mobx_learning/src/mobx/cats_store/cats_store.dart';
import 'package:mobx_learning/src/models/cat_fact.dart';
import 'package:provider/provider.dart';

class CatFactPage extends StatelessWidget {
  const CatFactPage({
    Key key,
    @required this.catFact,
  }) : super(key: key);

  final CatFact catFact;

  @override
  Widget build(BuildContext context) {
    final _catsStore = Provider.of<CatsStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(catFact.userName),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Total amount of posts read: '),
              Text(_catsStore.factsRead),
            ],
          ),
          Row(
            children: <Widget>[
              Text('Total amount of posts: '),
              Text(_catsStore.facts.toString()),
            ],
          ),
          SizedBox(height: 42),
          Text(catFact.text),
        ],
      ),
    );
  }
}
