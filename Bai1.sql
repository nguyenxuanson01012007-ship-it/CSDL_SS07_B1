SELECT  city, 
		SUM(total_price) AS revenue
FROM bookings
WHERE status = 'COMPLETED'
GROUP BY city
HAVING SUM(total_price) > 0;
-- lỗi vì WHERE được thực thi trước GROUP BY, nên các giá trị tổng hợp như SUM() chưa được tính toán. 