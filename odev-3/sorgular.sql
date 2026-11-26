-- Q1: Fiyatı 30 TL ve üstü olan ürünleri büyükten küçüğe sırala.
SELECT name, price
FROM product
WHERE price >= 30
ORDER BY price DESC;

-- Q2: Her müşterinin kaç sipariş verdiğini müşteri bilgileriyle birlikte listele.
SELECT c.customer_id, c.full_name, c.department, c.phone, c.age,
       COUNT(o.order_id) AS siparis_sayisi
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.full_name, c.department, c.phone, c.age
ORDER BY c.customer_id;

-- Q3: Ürünleri kategorilerine ve sipariş sayılarına göre listele.
SELECT p.name, p.category,
       COUNT(DISTINCT oi.order_id) AS siparis_sayisi
FROM product p
LEFT JOIN order_item oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name, p.category
ORDER BY p.category, p.name;

-- Q4: Siparişlerin numarasını, müşteri kodunu ve sipariş tarihini listele.
SELECT order_id, customer_id, order_date
FROM orders
ORDER BY order_id;

-- Q5: Sipariş kalemlerini ürün adı ve adedine göre listele.
SELECT p.name, oi.quantity
FROM order_item oi
INNER JOIN product p ON oi.product_id = p.product_id
ORDER BY oi.order_id, p.name;

-- Q6: Telefon numarası kayıtlı olmayan müşterileri listele.
SELECT customer_id, full_name, department, phone
FROM customer
WHERE phone IS NULL;
