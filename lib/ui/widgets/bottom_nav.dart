import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({ Key? key }) : super(key: key);

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  
  int _selected_index = 0;

  _onitem_tapped(int index){
    setState(() {
      _selected_index = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: _selected_index == 0
        ? SvgPicture.asset('assets/images/icon_my_parcels.svg'): 
        SvgPicture.asset('assets/images/icon_my_parcels.svg'),
        label: 'My Parcels'
        ),
        BottomNavigationBarItem(icon: _selected_index == 1
        ? SvgPicture.asset('assets/images/icon_send_parcel.svg'): 
        SvgPicture.asset('assets/images/icon_send_parcel.svg'),
        label: 'My Parcels'
        ),
        BottomNavigationBarItem(icon: _selected_index == 2
        ? SvgPicture.asset('assets/images/icon_parcel_center.svg'): 
        SvgPicture.asset('assets/images/icon_parcel_center.svg'),
        label: 'My Parcels'
        ),
      ],
        currentIndex: _selected_index,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Colors.black,
        onTap: _onitem_tapped,
    );
  }
}