class Product {
  final String id;
  final String name;
  final double price;
  final List<String> images;
  final String category;
  final List<String> communityIds;
  final List<String> sizes;
  final List<String> colors;
  final double rating;
  final int reviewCount;
  final bool isVerifiedSeller;
  final bool hasTryOn;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.images,
    required this.category,
    required this.communityIds,
    required this.sizes,
    required this.colors,
    required this.rating,
    required this.reviewCount,
    required this.isVerifiedSeller,
    required this.hasTryOn,
  });
}

class ProductData {
  static final List<Product> products = [
    Product(
      id: 'p1',
      name: 'Premium Abaya',
      price: 1299,
      images: [
        'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400',
        'https://images.unsplash.com/photo-1509631179647-0177331693ae?w=400',
      ],
      category: 'Abayas',
      communityIds: ['muslim'],
      sizes: ['XS', 'S', 'M', 'L', 'XL'],
      colors: ['#000000', '#1a1a2e', '#4a0e0e'],
      rating: 4.8,
      reviewCount: 234,
      isVerifiedSeller: true,
      hasTryOn: true,
    ),
    Product(
      id: 'p2',
      name: 'Silk Hijab Collection',
      price: 499,
      images: [
        'https://images.unsplash.com/photo-1496217590455-aa63a8350eea?w=400',
      ],
      category: 'Hijabs',
      communityIds: ['muslim'],
      sizes: ['One Size'],
      colors: ['#ffffff', '#f5c6cb', '#d4a5a5'],
      rating: 4.6,
      reviewCount: 189,
      isVerifiedSeller: true,
      hasTryOn: true,
    ),
    Product(
      id: 'p3',
      name: 'Banarasi Silk Saree',
      price: 4999,
      images: [
        'https://images.unsplash.com/photo-1610030469983-98e550d6193c?w=400',
        'https://images.unsplash.com/photo-1583391733956-6c78276477e2?w=400',
      ],
      category: 'Sarees',
      communityIds: ['hindu'],
      sizes: ['Free Size'],
      colors: ['#8B0000', '#FF6B35', '#FFD700'],
      rating: 4.9,
      reviewCount: 312,
      isVerifiedSeller: true,
      hasTryOn: true,
    ),
    Product(
      id: 'p4',
      name: 'Designer Kurta Set',
      price: 1899,
      images: [
        'https://images.unsplash.com/photo-1594938298603-c8148c4b4e05?w=400',
      ],
      category: 'Kurtas',
      communityIds: ['hindu', 'sikh'],
      sizes: ['S', 'M', 'L', 'XL', 'XXL'],
      colors: ['#FFFFFF', '#FFF9C4', '#E8F5E9'],
      rating: 4.5,
      reviewCount: 156,
      isVerifiedSeller: true,
      hasTryOn: true,
    ),
    Product(
      id: 'p5',
      name: 'Puja Thali Set',
      price: 799,
      images: [
        'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?w=400',
      ],
      category: 'Puja Items',
      communityIds: ['hindu'],
      sizes: ['Standard'],
      colors: ['#FFD700'],
      rating: 4.7,
      reviewCount: 98,
      isVerifiedSeller: true,
      hasTryOn: false,
    ),
    Product(
      id: 'p6',
      name: 'Punjabi Phulkari Dupatta',
      price: 1299,
      images: [
        'https://images.unsplash.com/photo-1583391733956-6c78276477e2?w=400',
      ],
      category: 'Ethnic Wear',
      communityIds: ['sikh'],
      sizes: ['Free Size'],
      colors: ['#FF6B35', '#E91E63', '#9C27B0'],
      rating: 4.8,
      reviewCount: 143,
      isVerifiedSeller: true,
      hasTryOn: true,
    ),
    Product(
      id: 'p7',
      name: 'Christmas Formal Blazer',
      price: 3499,
      images: [
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
      ],
      category: 'Formal Wear',
      communityIds: ['christian'],
      sizes: ['S', 'M', 'L', 'XL'],
      colors: ['#1a1a2e', '#2c3e50', '#7f8c8d'],
      rating: 4.6,
      reviewCount: 87,
      isVerifiedSeller: true,
      hasTryOn: true,
    ),
    Product(
      id: 'p8',
      name: 'Meditation Cushion Set',
      price: 999,
      images: [
        'https://images.unsplash.com/photo-1545205597-3d9d02c29597?w=400',
      ],
      category: 'Meditation',
      communityIds: ['buddhist'],
      sizes: ['Standard'],
      colors: ['#FF6B35', '#FFD700', '#8B4513'],
      rating: 4.9,
      reviewCount: 201,
      isVerifiedSeller: true,
      hasTryOn: false,
    ),
  ];

  static List<Product> getForCommunity(List<String> communityIds) {
    return products.where((p) =>
      p.communityIds.any((id) => communityIds.contains(id))
    ).toList();
  }
}