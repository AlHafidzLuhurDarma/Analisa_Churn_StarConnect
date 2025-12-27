CREATE VIEW vw_ChurnData AS
	SELECT * FROM prod_churn WHERE Customer_Status In ('Churned', 'Stayed')


CREATE VIEW vw_JoinDataChurn AS
	SELECT * FROM prod_churn WHERE Customer_Status = 'Joined'