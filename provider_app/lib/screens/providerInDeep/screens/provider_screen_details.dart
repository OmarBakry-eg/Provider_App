import 'Exporting/export.dart';

class ProviderScreenDetails extends StatelessWidget {
  static const routeName = '/provider_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          text: 'Provider Screen Details',
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MainRaisedButtons(
                  function: () {
                    mainRaisedNavigation(
                        context, NormalProviderScreen.routeName);
                  },
                  text: 'Normal Provider of Context',
                ),
                SizedBox(
                  height: 25,
                ),
                MainRaisedButtons(
                  function: () {
                    mainRaisedNavigation(context, ConsumerProvider.routeName);
                  },
                  text: 'Consumer Widget',
                ),
                SizedBox(
                  height: 25,
                ),
                MainRaisedButtons(
                  function: () {
                    mainRaisedNavigation(
                        context, SelectorProviderScreen.routeName);
                  },
                  text: 'Selector Widget',
                ),
                SizedBox(
                  height: 25,
                ),
                MainRaisedButtons(
                  function: () {
                    mainRaisedNavigation(
                        context, ProxyProviderScreen.routeName);
                  },
                  text: 'Proxy Provider',
                ),
                SizedBox(
                  height: 25,
                ),
                MainRaisedButtons(
                  function: () {
                    mainRaisedNavigation(
                        context, StreamProviderScreen.routeName);
                  },
                  text: 'Stream Provider',
                ),
                SizedBox(
                  height: 25,
                ),
                MainRaisedButtons(
                  function: () {
                    mainRaisedNavigation(
                        context, FutureProviderScreen.routeName);
                  },
                  text: 'Future Provider',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
