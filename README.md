# Community Mall — Multi-Community E-Commerce App

A personalized shopping platform where users shop based on their religious and cultural community identity.

## Features
- Community-based personalization (Muslim, Hindu, Christian, Sikh, Buddhist)
- Festival countdown cards per community
- Virtual Try-On using device camera
- Swipe-to-delete cart with live total
- Verified seller badges

## Tech Stack
- **Framework:** Flutter (Dart)
- **Navigation:** go_router
- **Local Storage:** shared_preferences
- **Image Loading:** cached_network_image
- **Camera:** camera package

## How to Run
1. Clone the repo: `git clone https://github.com/Nezza983/community_shopping_application.git`
2. Install dependencies: `flutter pub get`
3. Run the app: `flutter run`

## Screens
1. Splash Screen — auto-navigates after 2 seconds
2. Community Selection — multi-select, persists to local storage
3. Home — personalized greeting, festival countdown, product grid
4. Product Detail — image gallery, size/color picker, virtual try-on
5. Camera/Try-On — device camera with garment overlay
6. Cart — swipe to delete, live total, quantity controls
7. Order Confirmation — animated checkmark, clears cart

## What I Would Improve With More Time
- Real AI-powered virtual try-on 
- Firebase backend for real products and seller verification
- Search functionality with filters
- Push notifications for festival deals
- Multi-language support (Arabic, Hindi, Punjabi)
- Help Service AI chatbot

