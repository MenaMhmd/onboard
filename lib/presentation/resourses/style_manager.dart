import 'package:flutter/material.dart';

import 'package:ecommerceudemy/presentation/resourses/FontManager.dart';

TextStyle _gettextstyle(double _fontsize,FontWeight _fontWeight,Color _color,){
  return TextStyle(
    fontSize:_fontsize ,color:_color ,fontWeight:_fontWeight ,
  );

}

TextStyle getregularstyle({double fontsize=Fontsize.s12,required Color color})
{
  return _gettextstyle(fontsize, Fontweightmanger.regular,color);
}

//medium style
TextStyle getmeduimstyle({double fontsize=Fontsize.s12,required Color color})
{
  return _gettextstyle(fontsize, Fontweightmanger.medium,color);
}

//light style
TextStyle getlightstyle({double fontsize=Fontsize.s12,required Color color})
{
  return _gettextstyle(fontsize, Fontweightmanger.light,color);
}
//medium style
TextStyle getboldstyle({double fontsize=Fontsize.s12,required Color color})
{
  return _gettextstyle(fontsize, Fontweightmanger.bold,color);
}

//medium style
TextStyle getsemiboldstyle({double fontsize=Fontsize.s12,required Color color})
{
  return _gettextstyle(fontsize, Fontweightmanger.semibold,color);
}