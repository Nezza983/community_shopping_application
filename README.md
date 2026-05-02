# Community Mall — Internship Technical Assessment

> **"Every Community. One Mall."**
> An e-commerce mobile application built with Flutter.

# What This App Does

Community Mall is a personalized shopping platform where users shop based on their religious and cultural preferences. When a user selects their community (Muslim, Hindu, Christian, Sikh, or Buddhist), the entire app — products, categories, greetings, and festival countdowns — personalizes itself automatically.

A Muslim user sees abayas, hijabs, and Ramadan collections. A Hindu user sees sarees, kurtas, and Diwali essentials. A Sikh user sees ethnic wear, turbans, and Gurpurab collections. Everyone shops under the same roof.

# Tech Stack

| Layer                   | Choice                          | Why 

| Framework               | Flutter 3.32.5                  | Cross-platform, single codebase for Android + iOS + Web 
| State Management        | Provider (ChangeNotifier)       | Lightweight, well-supported, industry standard for mid-size apps 
| Navigation              | go_router                       | Declarative routing, deep link support, clean URL-based navigation 
| Local Storage           | shared_preferences              | Simple key-value persistence for community selection 
| Image Loading           | cached_network_image            | Automatic caching, placeholder and error handling built in 
| Camera                  | camera package                  | Native camera access with CameraController lifecycle management 
| Fonts                   | google_fonts                    | Playfair Display (headings) + Inter (body) as per brand guidelines 
| Shimmer                 | shimmer                         | Loading skeleton placeholders for better perceived performance 



# Screens Built

### Screen 1 — Splash
Logo and tagline fade in over a deep navy background. On init, the app checks SharedPreferences — if a community is already saved, it routes directly to Home, skipping onboarding. First-time users go to Community Selection.

### Screen 2 — Community Selection
A 2-column grid of 5 community tiles. Tap to toggle selection with a gold animated border. Multi-select is supported — selecting multiple communities shows products from all of them on the home screen. The selection is persisted to local storage so returning users don't repeat onboarding. The profile icon on the home screen lets users return here to change their community at any time.

### Screen 3 — Home
- Personalized greeting per community (Assalamu Alaikum, Namaste, Sat Sri Akaal, etc.)
- Festival countdown card — computes days remaining to the next major festival for the selected community using `DateTime.difference()`

### Screen 4 — Product Detail
- Swipeable image gallery with animated dot indicators using `PageView`
- Verified seller badge
- Size chip selector and color dot selector with animated selection states
- Quantity selector
- "Add to Cart" (navy) and "Try Virtually" (gold) full-width buttons
- "Try Virtually" is disabled for products that don't support try-on

### Screen 5 — Camera / Try-On
- Accesses device camera via `CameraController` with `ResolutionPreset.medium`
- Instruction overlay and product name badge on the live preview
- Capture button triggers `controller.takePicture()`
- Result screen stacks the captured photo with a semi-transparent garment overlay using Flutter's `Stack` widget
- Graceful fallback for web (simulated try-on with product name overlay)
- Camera permission handled with try/catch and user-friendly error messaging

### Screen 6 — Cart
- Live list of cart items from `CartProvider`
- Swipe left to remove using Flutter's `Dismissible` widget
- Quantity controls update total in real time
- "Clear All" button
- Order total and gold "Checkout" button fixed at the bottom

### Screen 7 — Order Confirmation
- Animated checkmark using `ScaleTransition` with `Curves.elasticOut`
- Cart is cleared via `addPostFrameCallback` after the frame renders
- "Continue Shopping" uses `context.go('/home')` — not `push` — so the back button doesn't return to a cleared cart

---


# What I Would Improve Given More Time

1. *Real backend integration* — Replace static `ProductData` with a REST API or Firebase Firestore. Community-based filtering would happen server-side.

2. *Actual AI try-on* — Integrate a pose estimation model (MediaPipe or TensorFlow Lite) to fit the garment overlay to the user's body shape rather than a static overlay.

3. *Authentication* — Add Firebase Auth with phone number OTP, which is the most common auth pattern in Indian e-commerce apps.

4. *Search* — Build a full search screen with real-time filtering by name, category, and price range.

5. *Wishlist* — Persist wishlisted products to SharedPreferences with a heart toggle on each product card.

6. *Multi-language* — The community model already has a `greeting` field per language. Full i18n with the `flutter_localizations` package would extend this to all UI strings.

7. *Payment integration* — Razorpay or Stripe Flutter SDK for a real checkout flow.

8. *Performance* — Add shimmer loading skeletons while images load, and implement pagination on the product grid for large catalogs.

9. *Testing* — Unit tests for CartProvider and CommunityProvider, and widget tests for the community selection grid.
