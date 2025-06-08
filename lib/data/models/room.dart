enum RoomType { single, double, suite, deluxe, presidential }

enum RoomStatus { available, occupied, maintenance, cleaning }

class Room {
  final String id;
  final String name;
  final String description;
  final RoomType type;
  final RoomStatus status;
  final double pricePerNight;
  final int capacity;
  final int floor;
  final String roomNumber;
  final List<String> amenities;
  final List<String> imageUrls;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const Room({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.status,
    required this.pricePerNight,
    required this.capacity,
    required this.floor,
    required this.roomNumber,
    required this.amenities,
    required this.imageUrls,
    required this.createdAt,
    this.updatedAt,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: RoomType.values.firstWhere(
        (e) => e.name == json['type'],
        orElse: () => RoomType.single,
      ),
      status: RoomStatus.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => RoomStatus.available,
      ),
      pricePerNight: (json['pricePerNight'] as num).toDouble(),
      capacity: json['capacity'] as int,
      floor: json['floor'] as int,
      roomNumber: json['roomNumber'] as String,
      amenities: List<String>.from(json['amenities'] as List),
      imageUrls: List<String>.from(json['imageUrls'] as List),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] != null 
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'type': type.name,
      'status': status.name,
      'pricePerNight': pricePerNight,
      'capacity': capacity,
      'floor': floor,
      'roomNumber': roomNumber,
      'amenities': amenities,
      'imageUrls': imageUrls,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  Room copyWith({
    String? id,
    String? name,
    String? description,
    RoomType? type,
    RoomStatus? status,
    double? pricePerNight,
    int? capacity,
    int? floor,
    String? roomNumber,
    List<String>? amenities,
    List<String>? imageUrls,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Room(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      status: status ?? this.status,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      capacity: capacity ?? this.capacity,
      floor: floor ?? this.floor,
      roomNumber: roomNumber ?? this.roomNumber,
      amenities: amenities ?? this.amenities,
      imageUrls: imageUrls ?? this.imageUrls,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}