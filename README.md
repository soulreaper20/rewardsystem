# rewardsystem

The function is built to check if reward is already provided to the user when the sales is completed and if not provide the reward. Customers will be rewarded with Points when Sales Order is in “Complete” status.
Every USD $1 sales amount will be rewarded with 1 point, if the sales amount is not USD, it is converted to the equivalent amount in USD for reward amount calculation.
The reward amount will be credited into the customer account with the expiry date, which is 1 year later.
Points can be used for new order payment, every 1 point equivalent to USD $0.01.

The function should be called everytime a sales is made or modified.
It goes through the records and adds the rewards to the user.

The database can be connected through db.php file.

You can also find the diagram as image file. 

The sql file for the reward system is also uploaded as reward.sql.

The answer to the second question is as follows:

"Select  COUNT(orders.order_ID) AS Number_Of_Order,

sum(CASE WHEN orders.sales_type = "Normal" then orders_products.Normal_Price ELSE orders_products.Promotion_Price 

END) AS Total_Sales_Amount

FROM orders INNER JOIN orders_products on orders.order_ID = orders_products.Order_ID"

The sql for the second question is order.sql

The answer to the third question is

For the third question
6% GST for division is 1.06
So
5/1.06 = 4.71698
