import 'Exporting/export.dart';

class ProxyProviderScreen extends StatelessWidget {
  static const routeName = '/proxy';
  @override
  Widget build(BuildContext context) {
    String name1 = 'Bakry';
    String name2 = 'Omar Bakry';
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(text: 'ProxyProvider'),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
//                Consumer<ProxyProviderNotifierOne>(
//                  builder: (context, proxy, ch) => Text(proxy.name),
//                ),
                Selector<ProxyProviderNotifierOne, String>(
                  builder: (context, proxy, ch) => Text(proxy),
                  selector: (context, selector) => selector.name,
                ),
                SizedBox(
                  height: 15,
                ),
                Consumer<ProxyProviderNotifierOne>(
                    builder: (context, proxy1, ch) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      MainRaisedButtons(
                          function: () {
                            proxy1.changeName(name1);
                          },
                          text: 'Normal Provider')
                    ],
                  );
                }),
                SizedBox(
                  height: 25,
                ),
                Consumer<ProxyProviderNotifierTwo>(
                    builder: (context, proxy2, ch) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      MainRaisedButtons(
                        function: () {
                          proxy2.changeNameElse(name2);
                        },
                        text: 'Proxy Provider',
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
