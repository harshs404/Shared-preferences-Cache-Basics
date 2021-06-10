import 'package:basicappflutter/core/notifiers/cache_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CacheNotifier()),
];
