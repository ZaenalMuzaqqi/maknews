import 'package:flutter/material.dart';

// ICON
const String logoMaknews = 'assets/icons/logo.svg';
const String iconHome = 'assets/icons/home.svg';
const String iconHomeDisabled = 'assets/icons/home_disabled.svg';
const String iconCategory = 'assets/icons/category.svg';
const String iconCategoryDisabled = 'assets/icons/category_disabled.svg';
const String iconSearch = 'assets/icons/search.svg';
const String iconSearchDisabled = 'assets/icons/search_disabled.svg';
const String iconBookmark = 'assets/icons/bookmark.svg';
const String iconBookmarkDisabled = 'assets/icons/bookmark_disabled.svg';
const String iconSearchWidget = 'assets/icons/search_widget.svg';
const String iconShare = 'assets/icons/share.svg';
const String iconArrowBack = 'assets/icons/arrow_back.svg';

//IMAGE
const String imageBusiness = 'assets/images/business.jpg';
const String imageEntertainment = 'assets/images/entertainment.jpg';
const String imageGeneral = 'assets/images/general.jpg';
const String imageHealth = 'assets/images/health.jpg';
const String imageScience = 'assets/images/science.jpg';
const String imageSport = 'assets/images/sport.jpg';
const String imageTechnology = 'assets/images/technology.jpg';

// COLOR
const Color defaultColor = Color(0xFF594ED9);
const Color blackColor = Color(0xFF19163D);
const Color disabledColor = Color(0xFFB5BBC6);
const Color backgroundColor = Color(0xFFF4F4F4);

// FONTWEIGTH
FontWeight thin = FontWeight.w100;
FontWeight ultraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight heavy = FontWeight.w800;
FontWeight black = FontWeight.w900;

// FONT/TEXT
TextStyle defaultTextStyle = const TextStyle(color: defaultColor);
TextStyle blackTextStyle = const TextStyle(color: blackColor);
TextStyle whiteTextStyle = const TextStyle(color: Colors.white);
TextStyle disabledTextStyle = const TextStyle(color: disabledColor);

//LIST
List categoryList = [
  'Business',
  'Entertainment',
  'General',
  'Health',
  'Science',
  'Sport',
  'Technology',
];

List imageList = [
  imageBusiness,
  imageEntertainment,
  imageGeneral,
  imageHealth,
  imageScience,
  imageSport,
  imageTechnology,
];

//TEMPORARY DATA
final List photoList = [
  'https://images.unsplash.com/photo-1591628013840-58dbb435be89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
  'https://images.unsplash.com/photo-1616587226157-48e49175ee20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
  'https://images.unsplash.com/photo-1618887798986-1fa86bd22d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
  'https://images.unsplash.com/photo-1544644181-1484b3fdfc62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
  'https://images.unsplash.com/photo-1586015555751-63bb77f4322a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
  'https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
];

final List titleList = [
  'Thousands gather in London for George Floyd protest',
  'Texas Democrats plan to create a voter registration army',
  'A restaurant owner, a football star: the people killed as protests spread',
  'Indonesia puts 100-island archipelago up for auction, sparking',
  'Indonesia bans sale of syrup medicines after at least 99 child  death',
  'Indonesians wait for UK farm jobs after paying deposits of up to £2,500 ',
];

final List descriptionList = [
  'Star Wars actor John Boyega among those taking part in Hyde Park Black Lives Matter protest',
  'Those crafty Chinese climate hoaxsters have been at it again. Last week, there were wildfires in Greece that got so bad that people were jumping into the ocean for safety. There are now strong indications that these fires may have been set, but it was those clever Chinese hoaxsters and their climate scam that made the fires as bad as they were. From The Guardian:',
];
