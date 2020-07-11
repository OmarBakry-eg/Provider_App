import 'Exporting/export.dart';

class SelectorProviderScreen extends StatelessWidget {
  static const routeName = '/selector';
  @override
  Widget build(BuildContext context) {
    bool forSelectorTwo = false;
    String myName = '';
    final String code =
        '\n\n Selector<SelectorProvider, String>\n\n( selector: (context, selector) => selector.prov1,\n\nbuilder: (context, selectorProvider, child)\n\n{\nprint(\'selector text 1\');\n\nreturn Center(\n\nchild: Column(\n\nchildren: <Widget>[\n\nText(selectorProvider),\n\nchild,\n],\n));},';
    return Scaffold(
      appBar: AppBarWidget(text: 'Selector Provider'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Selector<SelectorProvider, String>(
              selector: (context, selector) => selector.prov1,
              builder: (context, selectorProvider, child) {
                print('selector text 1');
                return Center(
                    child: Column(
                  children: <Widget>[
                    Text(selectorProvider),
                    child,
                  ],
                ));
              },
              child: Container(
                width: 200,
                height: 100,
                child: TextField(
                  onChanged: (value) {
                    myName = value;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Consumer<SelectorProvider>(
                builder: (context, selectorProvider, ch) {
              return MainRaisedButtons(
                  function: () {
                    //  print('selector 1 called inside consumer 1 button');
                    selectorProvider.changeName(myName);
                  },
                  text: 'click to run provider');
            }),
            SizedBox(
              height: 20,
            ),
            Consumer<SelectorProvider>(
              builder: (c, selectorProvider, child) => MainRaisedButtons(
                  function: () {
                    //  print('selector 2 called inside consumer 2 button');
                    selectorProvider.changeCode(code);
                    forSelectorTwo = !forSelectorTwo;
                  },
                  text: 'showCode'),
            ),
            Selector<SelectorProvider, String>(
              selector: (co, selector) => selector.coding,
              builder: (context, selectorProvider, ch) {
                print('selector text 2');
                return Center(
                  child: Column(
                    children: <Widget>[
                      forSelectorTwo
                          ? Text(
                              selectorProvider,
                              textAlign: TextAlign.center,
                            )
                          : Text('')
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//problem with consumer that it rebuild all consumers<TheSameClassName> again .
//here selector solve this problem it just rebuild one pattern that it changes .
//the selector accept the dataType to rebuild it so it's update it and it can't do anyThing else .
