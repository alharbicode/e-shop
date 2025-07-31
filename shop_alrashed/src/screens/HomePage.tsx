import React from 'react';
import ProductCard from '../components/ProductCard';
import { sampleProduct } from '../models/Product';

const HomePage: React.FC = () => {
  return (
    <div className="home-page">
      <h1>منتجاتنا المميزة</h1>
      <div className="products-grid">
        <ProductCard product={sampleProduct} />
        {/* يمكنك إضافة المزيد من بطاقات المنتجات هنا */}
      </div>
    </div>
  );
};

export default HomePage;
