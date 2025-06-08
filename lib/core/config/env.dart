class Environment {
  static const String _environment = String.fromEnvironment(
    'ENV',
    defaultValue: 'development',
  );
  
  static bool get isDevelopment => _environment == 'development';
  static bool get isProduction => _environment == 'production';
  static bool get isStaging => _environment == 'staging';
  
  // Firebase Configuration
  static String get firebaseApiKey => const String.fromEnvironment(
    'FIREBASE_API_KEY',
    defaultValue: 'your-development-api-key',
  );
  
  static String get firebaseAppId => const String.fromEnvironment(
    'FIREBASE_APP_ID',
    defaultValue: 'your-development-app-id',
  );
  
  static String get firebaseProjectId => const String.fromEnvironment(
    'FIREBASE_PROJECT_ID',
    defaultValue: 'delrooms-dev',
  );
  
  // Payment Gateway Keys
  static String get stripePublishableKey => const String.fromEnvironment(
    'STRIPE_PUBLISHABLE_KEY',
    defaultValue: 'pk_test_...',
  );
}