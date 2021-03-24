import 'package:ifood_flutter_clone/core/theme/app_images.dart';
import 'package:ifood_flutter_clone/models/category.dart';

class ContentController {
  List<Category> getCategorys() {
    return [
      Category(name: 'Açai', picture: AppImages.acai),
      Category(name: 'Brasileira', picture: AppImages.brasileira),
      Category(name: 'Café', picture: AppImages.cafe),
      Category(name: 'Doces', picture: AppImages.doces),
      Category(name: 'Japonêsa', picture: AppImages.japones),
      Category(name: 'Lanches', picture: AppImages.lanches),
      Category(name: 'Marmita', picture: AppImages.marmita),
      Category(name: 'Mercado', picture: AppImages.mercado),
      Category(name: 'Padaria', picture: AppImages.padaria),
      Category(name: 'Pizza', picture: AppImages.pizza),
      Category(name: 'Promoções', picture: AppImages.promocoes),
      Category(name: 'Saudável', picture: AppImages.saudavel),
      Category(name: 'Vegetariano', picture: AppImages.vegetariano),
      Category(name: 'Vale Refeição', picture: AppImages.vr),
    ];
  }
}
