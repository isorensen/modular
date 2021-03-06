import 'package:example/app/modules/tabs/modules/tab1/pages/page1/page1_page.dart';
import 'package:example/app/modules/tabs/modules/tab1/pages/page2/page2_bloc.dart';
import 'package:example/app/modules/tabs/modules/tab1/pages/page1/page1_bloc.dart';
import 'package:example/app/modules/tabs/modules/tab1/pages/page2/page2_page.dart';
import 'package:example/app/modules/tabs/modules/tab1/tab1_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:example/app/modules/tabs/modules/tab1/tab1_page.dart';

class Tab1Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Page2Bloc()),
        Bind((i) => Page1Bloc()),
        Bind((i) => Tab1Bloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => Tab1Page()),
        Router("/page1",
            child: (_, args) => Page1Page(), transition: TransitionType.rotate),
        Router("/page2",
            child: (_, args) => Page2Page(),
            transition: TransitionType.leftToRight),
      ];
}
