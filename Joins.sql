/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT products.name, categories.name
FROM products
INNER JOIN categories
ON products.CategoryID = categories.CategoryID
WHERE categories.CategoryID = 1;
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.name, p.price, reviews.Rating
FROM products p
INNER JOIN reviews
ON p.ProductID = reviews.ProductID
WHERE reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(s.Quantity)
FROM employees e
INNER JOIN sales s
ON e.EmployeeID = s.EmployeeID
GROUP BY s.EmployeeID
ORDER BY SUM(s.Quantity) DESC;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name, c.Name
FROM categories c
INNER JOIN departments d 
ON c.DepartmentID = d.DepartmentID
WHERE c.Name = "Appliances" OR c.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.name, SUM(s.Quantity) AS TotalSold, SUM(s.Quantity * s.PricePerUnit)
FROM products p 
INNER JOIN sales s 
ON p.ProductID = s.ProductID 
WHERE s.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.name, r.Reviewer, r.rating, r.comment 
FROM products p 
INNER JOIN reviews r 
ON p.ProductID = r.ProductID
WHERE r.Rating = 1 AND p.name = "Visio TV";

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
