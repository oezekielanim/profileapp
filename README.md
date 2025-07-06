# 🚀 Ezekiel Anim Obuobisa - Flutter Developer Profile

A modern, animated Flutter profile application showcasing professional skills, projects, and achievements with a beautiful UI and smooth animations.

![Flutter](https://img.shields.io/badge/Flutter-3.16.0-blue?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.2.0-blue?style=for-the-badge&logo=dart)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

## ✨ Features

### 🎨 **Modern UI/UX**
- **Material Design 3** with custom theming
- **Dark/Light Mode** toggle with smooth transitions
- **Responsive Design** that works on all screen sizes
- **Beautiful Animations** and micro-interactions

### 🎯 **Interactive Elements**
- **Animated Profile Picture** - Tap to expand with smooth scaling
- **Smooth Section Transitions** - Fade-in animations between sections
- **Achievement Badges** - Animated grid with staggered entrance effects
- **Projects Gallery** - Image carousel with navigation controls

### 📱 **Core Sections**
- **Profile Header** - Animated profile picture with gradient background
- **About Section** - Professional introduction and background
- **Skills Section** - Technical skills with progress indicators
- **Achievement Badges** - Professional accomplishments with custom icons
- **Testimonials** - Client feedback in horizontal scrollable cards
- **Projects Gallery** - Portfolio showcase with technology tags
- **Contact Section** - Social media links and download CV button
- **Contact Form** - Interactive form with validation

### 🔧 **Technical Features**
- **Form Validation** - Real-time validation with error messages
- **Theme Management** - Dynamic theme switching
- **Responsive Layout** - Adapts to different screen sizes
- **Performance Optimized** - Efficient animations and state management

## 🛠️ Technologies Used

- **Flutter** - Cross-platform UI framework
- **Dart** - Programming language
- **Material Design 3** - Design system
- **Font Awesome** - Icon library
- **URL Launcher** - External link handling


### Light Mode
![Light Mode](https://via.placeholder.com/300x600/FFFFFF/000000?text=Light+Mode)

### Dark Mode
![Dark Mode](https://via.placeholder.com/300x600/121212/FFFFFF?text=Dark+Mode)

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.16.0 or higher)
- Dart SDK (3.2.0 or higher)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/oezekielanim/profileapp.git
   cd profileapp
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

**Android APK:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web --release
```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── screens/
│   └── profile_screen.dart   # Main profile screen
├── widgets/
│   ├── profile_header.dart   # Animated profile header
│   ├── about_section.dart    # About section
│   ├── skills_section.dart   # Skills display
│   ├── achievement_badges.dart # Achievement badges
│   ├── testimonials_section.dart # Client testimonials
│   ├── projects_gallery.dart # Projects carousel
│   ├── contact_section.dart  # Contact links
│   └── contact_form.dart     # Contact form
└── theme/
    └── app_theme.dart        # Theme configuration
```

## 🎨 Customization

### Colors
Edit `lib/theme/app_theme.dart` to customize:
- Primary colors
- Secondary colors
- Background colors
- Text colors

### Content
Update the following files to personalize your profile:
- `lib/widgets/about_section.dart` - Personal information
- `lib/widgets/skills_section.dart` - Skills and expertise
- `lib/widgets/achievement_badges.dart` - Achievements
- `lib/widgets/testimonials_section.dart` - Client feedback
- `lib/widgets/projects_gallery.dart` - Portfolio projects
- `lib/widgets/contact_section.dart` - Contact information

### Profile Picture
Replace `assets/images/profile.jpg` with your own profile picture.

## 🔧 Configuration

### Dependencies
The app uses the following key dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  url_launcher: ^6.1.12
  font_awesome_flutter: ^10.5.0
```

### Assets
Ensure your `pubspec.yaml` includes:

```yaml
flutter:
  assets:
    - assets/images/
  fonts:
    - family: Poppins
      fonts:
        - asset: assets/fonts/Poppins-Regular.ttf
        - asset: assets/fonts/Poppins-Medium.ttf
        - asset: assets/fonts/Poppins-SemiBold.ttf
        - asset: assets/fonts/Poppins-Bold.ttf
```

## 🎯 Features in Detail

### Animated Profile Picture
- Tap to expand with smooth scaling animation
- Elastic animation curves for natural feel
- Proper state management and cleanup

### Achievement Badges
- Grid layout with staggered animations
- Custom icons and colors for each achievement
- Responsive design with proper spacing

### Projects Gallery
- Horizontal carousel with navigation arrows
- Page indicators for easy navigation
- Technology tags for each project
- Smooth page transitions

### Contact Form
- Real-time validation for all fields
- Email format validation
- Character length requirements
- Loading state during submission
- Success feedback with SnackBar

### Dark Mode
- Seamless theme switching
- Consistent color scheme across all components
- Proper contrast ratios for accessibility

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 About the Developer

**Ezekiel Anim Obuobisa** is a passionate Flutter developer with expertise in:
- Cross-platform mobile development
- UI/UX design principles
- State management
- Performance optimization
- Clean code practices

## 📞 Contact

- **Email:** oezekielanim@gmail.com
- **LinkedIn:** [Ezekiel Anim Obuobisa](https://linkedin.com/in/eaobuobisa)
- **GitHub:** [@oezekielanim](https://github.com/oezekielanim)
- **Twitter:** [@mister_obuobisa](https://twitter.com/mister_obuobisa)