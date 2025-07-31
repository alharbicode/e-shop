export interface Product {
  id: string;
  name: string;
  price: number;
  image: string;
  description: string;
  colors: string[];
  sizes: string[];
  material: string;
  category: string;
  rating: number;
  reviews: number;
  inStock: boolean;
  discount?: number;
}

export const sampleProduct: Product = {
  id: "dress001",
  name: "فستان نسائي أنيق",
  price: 80,
  image: "assets/images/dress1.jpg",
  description: "فستان نسائي بتصميم عصري وأنيق. مصنوع من قماش ناعم ومريح، مثالي للمناسبات الخاصة والحفلات. يتميز بقصة مميزة تبرز جمال القوام.",
  colors: ["أحمر", "أسود", "أزرق"],
  sizes: ["S", "M", "L", "XL"],
  material: "حرير",
  category: "فساتين",
  rating: 4.5,
  reviews: 120,
  inStock: true,
  discount: 10
};
