let cart = JSON.parse(localStorage.getItem('cart')) || [];

        function addToCart(productId, productName, productPrice) {
            const product = { id: productId, name: productName, price: productPrice };
            cart.push(product);
            localStorage.setItem('cart', JSON.stringify(cart));
            updateCartCount();
            alert(`\u0110\u00e3 th\u00eam ${productName} v\u00e0o gi\u1ecf h\u00e0ng.`);
        }

        function updateCartCount() {
            const cartCount = cart.length;
            document.getElementById('cart-count').innerText = cartCount;
        }

        function filterCategory(category) {
            alert(`Filter by category: ${category}`);
            // Add logic to dynamically filter products
        }

        // Example of dynamically loading products
        const products = [
            { id: '1', name: 'Sinh tố Mocha', price: 52000, image: 'image/img2.jpg', originalPrice: 65000 },
            { id: '2', name: 'Cappuchino kem sữa', price: 52000, image: 'image/img4.jpg', originalPrice: 65000 },
            // Add more products here
        ];

        function loadProducts() {
            const productList = document.getElementById('product-list');
            productList.innerHTML = '';
            products.forEach(product => {
                productList.innerHTML += `
                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="${product.image}" alt="${product.name}">
                            <h5>${product.name}</h5>
                            <p>
                                <span class="original-price">${product.originalPrice.toLocaleString()}\u0111</span>
                                <span class="price">${product.price.toLocaleString()}\u0111</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('${product.id}', '${product.name}', ${product.price})" class="btn btn-outline-success">Th\u00eam v\u00e0o gi\u1ecf</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>`;
            });
        }

        loadProducts();