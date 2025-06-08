extension StringExtensions on String {
  /// Capitalizes the first letter of the string
  String get capitalize {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Capitalizes the first letter of each word
  String get capitalizeWords {
    if (isEmpty) return this;
    return split(' ')
        .map((word) => word.capitalize)
        .join(' ');
  }

  /// Checks if string is a valid email
  bool get isValidEmail {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
  }

  /// Checks if string is a valid phone number
  bool get isValidPhone {
    return RegExp(r'^\+?[\d\s\-\(\)]{10,}$').hasMatch(this);
  }

  /// Truncates string to specified length with ellipsis
  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }

  /// Removes all whitespace from string
  String get removeWhitespace {
    return replaceAll(RegExp(r'\s+'), '');
  }
}

extension DateTimeExtensions on DateTime {
  /// Returns true if the date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Returns true if the date is tomorrow
  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return year == tomorrow.year && month == tomorrow.month && day == tomorrow.day;
  }

  /// Returns true if the date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year && month == yesterday.month && day == yesterday.day;
  }

  /// Returns the date as a string in a friendly format
  String get friendlyFormat {
    if (isToday) return 'Today';
    if (isTomorrow) return 'Tomorrow';
    if (isYesterday) return 'Yesterday';
    
    final now = DateTime.now();
    final difference = now.difference(this).inDays;
    
    if (difference < 7 && difference > 0) {
      const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
      return days[weekday - 1];
    }
    
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/${year}';
  }

  /// Returns only the date part (00:00:00 time)
  DateTime get dateOnly {
    return DateTime(year, month, day);
  }
}

extension DoubleExtensions on double {
  /// Formats the double as currency
  String get toCurrency {
    return '\$${toStringAsFixed(2)}';
  }

  /// Rounds to specified decimal places
  double roundTo(int decimalPlaces) {
    double mod = 1.0;
    for (int i = 0; i < decimalPlaces; i++) {
      mod *= 10.0;
    }
    return (this * mod).round() / mod;
  }
}

extension ListExtensions on List {
  /// Returns true if the list is null or empty
  bool get isNullOrEmpty => isEmpty;

  /// Returns true if the list is not null and not empty
  bool get isNotNullOrEmpty => isNotEmpty;

  /// Safely gets an element at index, returns null if out of bounds
  T? safeGet<T>(int index) {
    if (index < 0 || index >= length) return null;
    return this[index] as T?;
  }
}