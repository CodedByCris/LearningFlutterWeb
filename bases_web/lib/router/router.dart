import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define("/",
        handler: _counterHandler,
        // transitionDuration: Duration(seconds: 1),
        transitionType: TransitionType.fadeIn);
    router.define("/stateful",
        handler: _counterHandler,
        // transitionDuration: Duration(seconds: 1),
        transitionType: TransitionType.fadeIn);
    router.define("/provider",
        handler: _counterProviderHandler,
        // transitionDuration: Duration(seconds: 1),
        transitionType: TransitionType.fadeIn);

    // 404
    router.notFoundHandler = _pageNotFound;
  }

  //Handlers
  static final Handler _counterHandler =
      Handler(handlerFunc: (context, params) => CounterView());

  static final Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) => CounterProviderView());

  // 404
  static final Handler _pageNotFound =
      Handler(handlerFunc: (_, __) => View404());
}
