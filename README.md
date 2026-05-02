# Community Mall — Multi-Community E-Commerce App

A personalized shopping platform where users shop based on their religious and cultural community identity.

## Features
- Community-based personalization (Muslim, Hindu, Christian, Sikh, Buddhist)
- Festival countdown cards per community
- Virtual Try-On using device camera
- Swipe-to-delete cart with live total
- Verified seller badges
- Multi-community support with unified "Welcome back" experience

## Tech Stack
- **Framework:** Flutter (Dart)
- **State Management:** Provider (ChangeNotifier pattern)
- **Navigation:** go_router
- **Local Storage:** shared_preferences
- **Image Loading:** cached_network_image
- **Camera:** camera package

## Architecture Decisions
- **Provider over Riverpod** — simpler for a project of this scope, easier to explain
- **go_router over Navigator 2.0** — declarative routing with clean URL structure
- **Hardcoded data over Firebase** — keeps the app self-contained and offline-ready for demo
- **Separate models, providers, screens folders** — single responsibility per file, easy to scale

## How to Run
1. Clone the repo: `git clone https://github.com/YOURUSERNAME/community-mall-app`
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
- Real AI-powered virtual try-on using ML Kit or TensorFlow Lite
- Firebase backend for real products and seller verification
- Search functionality with filters
- Push notifications for festival deals
- Multi-language support (Arabic, Hindi, Punjabi)
- Dark mode support

