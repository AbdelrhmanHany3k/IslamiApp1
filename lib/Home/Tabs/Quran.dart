import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Home/Sura_details.dart';
import 'package:islami/My_theme_data.dart';
import 'package:islami/sura_model.dart';

class Quran extends StatelessWidget {
   Quran({super.key});
   List<String> suraNames = [
     "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
     ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
     ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
     ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
     ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
     ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
     ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
     ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
     ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
     "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
   ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/quran_header_icn.png", height: 227),
        Divider(thickness: 3,),
        Text(
          "quran".tr(),
          textAlign: TextAlign.center,
          style:Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(thickness: 3, ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Row(
                children:[
                  Expanded(child: Align(alignment: Alignment.centerRight,
                      child: Icon(Icons.stars_rounded,color: primarycolor))),
                  Expanded(
                    flex: 3,
                    child: Divider(
                    color: primarycolor,
                    ),
                  ),
                  Expanded(child: Align(alignment: Alignment.centerLeft,
                      child: Icon(Icons.stars_rounded,color: primarycolor,))),
               ]
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SuraDetails.suranames
                  ,arguments: SuraModel(suraNames[index], index));
                },
                child: Text(
                  suraNames[index],
                  style: GoogleFonts.inder(
                      fontSize: 24, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}