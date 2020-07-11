import 'Exporting/export.dart';

class FutureProviderScreen extends StatelessWidget {
  static const routeName = '/future';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarWidget(
        text: 'Future Provider',
      ),
      body: Center(
        child: FutureProvider(
          create: (context) => getNewData(),
          initialData: FutureModel(value: 'initial value here '),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 90,
                color: Colors.blueAccent,
                child: Consumer<FutureModel>(builder: (context, future, ch) {
                  return RaisedButton(
                    onPressed: () {
                      future.changeValue();
                    },
                    child: Center(
                      child: Text('Press to change value after hot reload'),
                    ),
                  );
                }),
              ),
              Container(
                width: 130,
                height: 60,
                color: Colors.greenAccent,
                child: Consumer<FutureModel>(
                    builder: (context, future, ch) =>
                        Center(child: Text(future.value))),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
