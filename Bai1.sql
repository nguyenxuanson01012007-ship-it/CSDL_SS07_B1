SELECT title, price
from courses 
WHERE price IN (SELECT price FROM courses WHERE instructor_id = 5);

-- Không dùng dấu =  vì dấu = trả về 1 giá trị duy nhất 
