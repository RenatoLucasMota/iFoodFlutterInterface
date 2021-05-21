import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/controllers/content_controller.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_icons.dart';
import 'package:ifood_flutter_clone/core/theme/app_images.dart';
import 'package:ifood_flutter_clone/core/theme/app_typography.dart';
import 'package:ifood_flutter_clone/models/category.dart';
import 'package:ifood_flutter_clone/views/content/components/bottom_navigator_component.dart';

import 'components/banners_component.dart';
import 'components/category_item_component.dart';
import 'components/content_tab_bar_component.dart';
import 'components/filters_component.dart';
import 'components/header_local_component.dart';
import 'components/restaurants_list_component.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  final controller = ContentController();
  List<Category> categories;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    categories = controller.getCategorys();
    super.initState();
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, innetBoxScroll) {
            return [
              HeaderLocationComponent(
                location: 'Rua Flores do Campo, Bariri - São Paulo',
              ),
              ContentTabBarComponent(
                controller: tabController,
                onTap: (index) {},
              ),
              FiltersComponent(),
            ];
          },
          body: Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    return await Future.value();
                  },
                  child: CustomScrollView(
                    physics: BouncingScrollPhysics(),
                    slivers: [
                      _CategorySession(
                        categories: categories,
                      ),
                      _BannerSession(),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24.0, right: 24, bottom: 24),
                          child: Text('Lojas',
                              style: AppTypography.sessionTitle(
                                context,
                              )),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          restaurants
                              .map((e) => RestaurantItemComponent(
                                    restaurant: e,
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _BottomNavigator(
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategorySession extends StatelessWidget {
  final List<Category> categories;

  const _CategorySession({Key key, @required this.categories})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 86,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 16 : 0,
                right: index == categories.length - 1 ? 16 : 10,
              ),
              child: CategoryItemComponent(
                category: categories[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BannerSession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 170,
        child: BannersComponent(
          list: [
            BannerItemComponent(
              imagePath: AppImages.banner1,
            ),
            BannerItemComponent(
              imagePath: AppImages.banner2,
            ),
            BannerItemComponent(
              imagePath: AppImages.banner3,
            ),
            BannerItemComponent(
              imagePath: AppImages.banner4,
            )
          ],
        ),
      ),
    );
  }
}

class _BottomNavigator extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const _BottomNavigator(
      {Key key, @required this.onTap, @required this.currentIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigatorComponent(
      onTap: onTap,
      currentIndex: currentIndex,
      items: [
        BottomNavigatorItemComponent(
          label: 'Início',
          activeIcon: AppIcons.homeActive,
          icon: AppIcons.home,
        ),
        BottomNavigatorItemComponent(
            label: 'Busca',
            activeIcon: AppIcons.searchActive,
            icon: AppIcons.search),
        BottomNavigatorItemComponent(
          label: 'Pedidos',
          activeIcon: AppIcons.ordersActive,
          icon: AppIcons.orders,
        ),
        BottomNavigatorItemComponent(
          label: 'Perfil',
          activeIcon: AppIcons.profileActive,
          icon: AppIcons.profile,
        ),
      ],
    );
  }
}
