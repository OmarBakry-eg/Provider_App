import 'Exporting/export.dart';

class ConsumerProvider extends StatelessWidget {
  static const routeName = '/consumer';
  @override
  Widget build(BuildContext context) {
    String myName = '';
    final String code =
        '\n\nConsumer<ConsumerProviderNotifier>(builder: (context, consumerProvider, child) {\n\n print(\'Consumer 1 called\');\n\nreturn Text(consumerProvider.prov1);\n\n}),';
    return Scaffold(
      appBar: AppBarWidget(text: 'Consumer Provider'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Consumer<ConsumerProviderNotifier>(
              builder: (context, consumerProvider, child) {
                print('called outside button for consumer 1');
                return Center(
                    child: Column(
                  children: <Widget>[
                    Text(consumerProvider.prov1),
                    child,
                    MainRaisedButtons(
                        function: () {
                          print('Consumer 1 called inside it\'s button');
                          consumerProvider.changeName(myName);
                        },
                        text: 'click to run provider'),
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
              height: 20,
            ),
            Consumer<ConsumerProviderNotifier>(
              builder: (context, consumerProvider, ch) {
                print('called outside button for consumer 2');
                return Center(
                  child: Column(
                    children: <Widget>[
                      MainRaisedButtons(
                          function: () {
                            print('Consumer 2 called inside it\'s button');
                            consumerProvider.changeCode(code);
                            consumerProvider.showCode();
                          },
                          text: 'showCode'),
                      consumerProvider.show
                          ? Text(
                              consumerProvider.coding,
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
