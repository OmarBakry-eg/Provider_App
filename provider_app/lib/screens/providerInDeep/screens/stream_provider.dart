import 'Exporting/export.dart';

class StreamProviderScreen extends StatelessWidget {
  static const routeName = '/streaming';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarWidget(
        text: 'StreamProvider',
      ),
      body: Center(
        child: StreamProvider(
          create: (context) => getMyStreamModel(),
          initialData: StreamModel(randomValue: 'initial value here '),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 90,
                color: Colors.blueAccent,
                child: Consumer<StreamModel>(builder: (context, stream, ch) {
                  return RaisedButton(
                    onPressed: () {
                      stream.changeValue();
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
                child: Consumer<StreamModel>(
                    builder: (context, stream, ch) =>
                        Center(child: Text(stream.randomValue))),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
