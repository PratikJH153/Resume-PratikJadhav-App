import 'package:flutter/material.dart';
import 'package:resumeapp/models/social_media.dart';

List<SocialMedia> socialMediaPlatforms = [
  SocialMedia(
    platform: "LinkedIn",
    imgURL: "https://cdn-icons-png.flaticon.com/512/174/174857.png",
    color: Color.fromARGB(255, 255, 255, 255),
    redirectURL: "https://www.linkedin.com/in/pratik-jadhav-b4bb00208/",
  ),
  SocialMedia(
    platform: "GitHub",
    imgURL: "https://cdn-icons-png.flaticon.com/512/25/25231.png",
    color: Color.fromARGB(255, 255, 255, 255),
    redirectURL: "https://github.com/PratikJH153",
  ),
  SocialMedia(
    platform: "Email",
    imgURL: "https://mailmeteor.com/logos/assets/PNG/Gmail_Logo_512px.png",
    color: Color.fromARGB(255, 255, 255, 255),
    redirectURL: "https://mail.google.com/mail/u/0/#inbox",
  ),
];
