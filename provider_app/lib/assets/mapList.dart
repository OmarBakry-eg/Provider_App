import 'export.dart';

Map<String, Widget Function(BuildContext context)> routesMap = {
  ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
  CartScreen.routeName: (ctx) => CartScreen(),
  OrdersScreen.routeName: (ctx) => OrdersScreen(),
  ProviderScreenDetails.routeName: (ctx) => ProviderScreenDetails(),
  NormalProviderScreen.routeName: (ctx) => NormalProviderScreen(),
  ConsumerProvider.routeName: (fd) => ConsumerProvider(),
  SelectorProviderScreen.routeName: (c) => SelectorProviderScreen(),
  ProxyProviderScreen.routeName: (c) => ProxyProviderScreen(),
  StreamProviderScreen.routeName: (v) => StreamProviderScreen(),
  FutureProviderScreen.routeName: (x) => FutureProviderScreen(),
};

List<SingleChildCloneableWidget> providerList = [
  ChangeNotifierProvider.value(
    value: Products(),
  ),
  ChangeNotifierProvider.value(
    value: Cart(),
  ),
  ChangeNotifierProvider.value(
    value: Orders(),
  ),
  ChangeNotifierProvider.value(
    value: NormalProvider(),
  ),
  ChangeNotifierProvider.value(
    value: ConsumerProviderNotifier(),
  ),
  ChangeNotifierProvider.value(
    value: SelectorProvider(),
  ),
  ChangeNotifierProvider.value(
    value: ProxyProviderNotifierOne(),
  ),
  ProxyProvider<ProxyProviderNotifierOne, ProxyProviderNotifierTwo>(
    update: (context, proxyOne, proxyTwo) => ProxyProviderNotifierTwo(proxyOne),
  ),
  ChangeNotifierProvider.value(
    value: StreamModel(),
  ),
  ChangeNotifierProvider.value(
    value: FutureModel(),
  ),
];
