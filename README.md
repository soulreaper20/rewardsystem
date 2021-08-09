# rewardsystem

The function is built to check if reward is already provided to the user when the sales is completed and if not provide the reward. Customers will be rewarded with Points when Sales Order is in “Complete” status.
Every USD $1 sales amount will be rewarded with 1 point, if the sales amount is not USD, it is converted to the equivalent amount in USD for reward amount calculation.
The reward amount will be credited into the customer account with the expiry date, which is 1 year later.
Points can be used for new order payment, every 1 point equivalent to USD $0.01.

The function should be called everytime a sales is made or modified.
It goes through the records and adds the rewards to the user.

The database can be connected through db.php file. 
