import 'Exporting/export.dart';

class NormalProviderScreen extends StatelessWidget {
  static const routeName = '/NormalProvider';
  @override
  Widget build(BuildContext context) {
    String myName = '';
    String code =
        '\n\nfinal provider = Provider.of<NormalProvider>(context)\n\nText(provider.prov1)\n\nprovider.changeName(myName);\n\n';
    final provider = Provider.of<NormalProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(text: 'Normal Provider'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(provider.prov1),
              Container(
                width: 200,
                height: 100,
                child: TextField(
                  onChanged: (value) {
                    myName = value;
                  },
                ),
              ),
              MainRaisedButtons(
                  function: () {
                    provider.changeName(myName, code);
                  },
                  text: 'click to run provider'),
              SizedBox(
                height: 20,
              ),
              Text(
                provider.coding,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
