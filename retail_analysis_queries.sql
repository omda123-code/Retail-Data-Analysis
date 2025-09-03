use Olist
select * from customers
select * from order_items
select * from orders
select * from sellers
select * from products

----- عدد الطلبات -----
select count(order_id) as Total_orders
from orders

------ اجمالي الايرادات ------ 
select year(shipping_limit_date) as Year,month(shipping_limit_date) as Month,round(sum(price),2) as Total_revenue
from order_items
group by year(shipping_limit_date),month(shipping_limit_date)
order by Year,Month;

------ العملاء الفريدين ------
select count(distinct customer_id) as unique_customers
from customers

------- متوسط قيمة الطلب ------- 
select round(sum(price)/count(distinct order_id),2) as avg_order_value
from order_items

------- المبيعات الشهرية ------ 
SELECT 
    DATEFROMPARTS(YEAR(o.order_purchase_timestamp), MONTH(o.order_purchase_timestamp), 1) AS bucket_month,
    COUNT(o.order_id) AS total_orders,
    SUM(op.payment_value) AS total_sales
FROM orders o
JOIN order_payments op 
    ON o.order_id = op.order_id
GROUP BY DATEFROMPARTS(YEAR(o.order_purchase_timestamp), MONTH(o.order_purchase_timestamp), 1)
ORDER BY bucket_month;

------ افضل 10 منتجات -----
select top 10 product_id , round(sum(price),2) as totalSales
from order_items
group by product_id
order by totalSales desc;

----- افضل 5 فئات ------- 
select top 5 product_category_name,round(sum(price),2) as categorySales
from order_items oi 
join products p on oi.product_id=p.product_id
group by product_category_name
order by categorySales desc;

------- اداء البائعين -------- 
select top 10 seller_id,round(sum(price),2) as sellerSales
from order_items
group by seller_id
order by sellerSales desc;

-------- العملاء الاكثر شراء ------- 
select top 10 customer_id,round(sum(price),2) as customerSpent
from orders o
join order_items oi on o.order_id=oi.order_id
group by customer_id
order by customerSpent desc;

------- افضل المدن مبيعا ----------
select top 10 customer_city,round(sum(price),2) as citySales
from orders o 
join order_items oi on o.order_id=oi.order_id
join customers c on o.customer_id=c.customer_id
group by customer_city
order by citySales desc;

------- نسبة الطلبات الملغاة --------- 
select order_status,count(*) as count_orders
from orders
group by order_status;

-------- وقت الشحن ---------- 
select round(avg(datediff(day,order_purchase_timestamp,order_delivered_customer_date)),2) as avg_delivery_days
from orders
where order_delivered_customer_date is not null;

------- نسبة الطلبات المتاخرة ------- 
select order_status, round(sum(case when order_delivered_customer_date > order_estimated_delivery_date then 1 else 0 end) *100.0 /count(*),2) as late_delivery_percentage
from orders
where order_delivered_customer_date is not null
and order_estimated_delivery_date is not null
group by order_status

------- مدة الشحن حسب الدولة ------- 
select c.customer_city,round(avg(datediff(day,o.order_purchase_timestamp,o.order_delivered_customer_date)),2) as avg_delivery_days
from orders o 
join customers c on o.customer_id=c.customer_id
where o.order_delivered_customer_date is not null 
group by c.customer_city
order by avg_delivery_days asc;

--------- عدد المنتجات الفريدة المباعة -------- 
select count(distinct product_id) as unique_products_sold
from order_items

------- عدد الطلبات في كل مدينة -------- 
select customer_city,count(distinct o.order_id) as totalOrders
from orders o 
join customers c on o.customer_id=c.customer_id 
group by customer_city
order by totalOrders desc;

-------- متوسط عدد المنتجات في الطلب الواحد -------
select round(avg(product_count),2) as avg_products_per_order
from( 
select order_id,count(product_id) as product_count
from order_items 
group by order_id
) t;
----------  افضل وسائل الدفع ------- 
select payment_type, count(*) as payment_count, round(sum(payment_value),2) as totalPayment
from order_payments 
group by payment_type 
order by totalPayment desc;














