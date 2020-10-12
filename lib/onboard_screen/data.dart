import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris arcu sem, bibendum et lectus at, ultricies tincidunt diam. Fusce lobortis elit non laoreet faucibus. Proin id ipsum dolor.");
  sliderModel.setTitle("Online Shopping");
  sliderModel.setImageAssetPath("Assets/images/cover.webp");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris arcu sem, bibendum et lectus at, ultricies tincidunt diam. Fusce lobortis elit non laoreet faucibus. Proin id ipsum dolor.");
  sliderModel.setTitle("Online Booking");
  sliderModel.setImageAssetPath("Assets/images/online.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris arcu sem, bibendum et lectus at, ultricies tincidunt diam. Fusce lobortis elit non laoreet faucibus. Proin id ipsum dolor.");
  sliderModel.setTitle("Delivery                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ");
  sliderModel.setImageAssetPath("Assets/images/delivery-service.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}