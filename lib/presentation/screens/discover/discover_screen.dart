import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_videw.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Estaremos llamando nuestro provider, si queremos ver que esta pasando tenemos que poner read, esto es escuchar sin renderizar
    // Si queremos que escuchemos algun cambio tenemos que uilitzar el watch
    final discoverProvider = context.watch<DiscoverProvider>();
    // Otra manera de obtener el contexto si algo cambia y hacer el renderizado, seria utilizando lo siguiente
    // final otroProvider = Provider.of<DiscoverProvider>(context);
    // si quisieramos simplemente escuchar que esta pasando sin renderizar, tendriamos que colocar
    // final otroProvider = Provider.of<DiscoverProvider>(context, listen:false);
    return Scaffold(
        body: discoverProvider.initialLoading
            ? const Center(
                child: CircularProgressIndicator(
                strokeWidth: 2,
              ))
            : VideoScrollableView(videos: discoverProvider.videos));
  }
}
