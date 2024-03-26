# <h1 align="center">Fraudulent Transactions Case</h1> 

In this case, The task was to explore the dataset, analyzing the patterns and
characteristics of legitimate and fraudulent transactions.

The dataset in this case study contains transaction data from a bank. The data
includes various fields such as step, type, amount, nameOrig , oldbalanceOrg ,
newbalanceOrig , nameDest , oldbalanceDest , newbalanceDest , isFraud , and
isFlaggedFraud.

The step field maps a unit of time in the real world, where 1 step is equivalent to 1
hour of time, and the dataset includes a total of 744 steps (30 days simulation).
The type field contains information on the type of transaction, including CASH
IN, CASH OUT, DEBIT, PAYMENT, and TRANSFER.

Other important fields in the dataset include the amount of the transaction in
local currency and information on the customer who initiated the transaction
nameOrig ), as well as the customer who received the transaction nameDest ).
Additionally, the dataset includes information on the initial balance of the
customers' accounts ( oldbalanceOrg and oldbalanceDest ) and the new balance
after the transaction ( newbalanceOrig and newbalanceDest.

One particularly important aspect of this dataset is the presence of fraudulent
transactions. The field isFraud indicates whether the transaction was made by
fraudulent agents. These agents aim to profit by taking control of customer
accounts and transferring funds to another account before cashing out of the
system. The isFlaggedFraud field is used to identify illegal attempts to transfer
more than 200.000 in a single transaction.

