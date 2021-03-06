import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/navigator_service.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/menu_item.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  void navigateTo(String routeName) {
    NavigationService.navigateTo(routeName);
    SidemenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {
    final sideMenuProvider = Provider.of<SidemenuProvider>(context);
    return Container(
      width: 200,
      height: double.infinity,
      // color: Colors.red,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Logo(),
          SizedBox(
            height: 50,
          ),
          TextSeparator(text: 'main'),
          MenuItem(
            isActive:
                sideMenuProvider.currentPage == Flurorouter.dashboardRoute,
            text: 'Dashboard',
            icon: Icons.compass_calibration_outlined,
            //isActive: false,
            onPressed: () => navigateTo(Flurorouter.dashboardRoute),
          ),
          MenuItem(
              text: 'Orders',
              icon: Icons.shopping_basket_outlined,
              isActive: false,
              onPressed: () => print('Orders ')),
          MenuItem(
              text: 'Analytics',
              icon: Icons.analytics_outlined,
              isActive: false,
              onPressed: () => print('Analytics ')),
          MenuItem(
              text: 'Categories',
              icon: Icons.category_outlined,
              isActive:
                  sideMenuProvider.currentPage == Flurorouter.categoriesRoute,
              onPressed: () => navigateTo(Flurorouter.categoriesRoute)),
          MenuItem(
              text: 'Products',
              icon: Icons.dashboard_outlined,
              isActive: false,
              onPressed: () => print('Products')),
          MenuItem(
              text: 'Discount',
              icon: Icons.attach_money_outlined,
              isActive: false,
              onPressed: () => print('Discount')),
          MenuItem(
              text: 'Customers',
              icon: Icons.people_alt_outlined,
              isActive: false,
              onPressed: () => print('Customers')),
          SizedBox(
            height: 50,
          ),
          TextSeparator(text: 'UI Elements'),
          MenuItem(
              text: 'Icons',
              icon: Icons.list_alt_outlined,
              isActive: sideMenuProvider.currentPage == Flurorouter.iconsRoute,
              onPressed: () => navigateTo(Flurorouter.iconsRoute)),
          MenuItem(
              text: 'Marketing',
              icon: Icons.mark_email_read_outlined,
              isActive: false,
              onPressed: () => print('Marketing')),
          MenuItem(
              isActive: sideMenuProvider.currentPage == Flurorouter.blankRoute,
              text: 'Blank',
              icon: Icons.bluetooth_audio_outlined,
              onPressed: () => navigateTo(Flurorouter.blankRoute)),
          SizedBox(
            height: 50,
          ),
          TextSeparator(text: 'Exit'),
          MenuItem(
              text: 'Logout',
              icon: Icons.exit_to_app_outlined,
              isActive: false,
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).logout();
              }),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xff092044), Color(0xff092042)]),
      boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10)]);
}
