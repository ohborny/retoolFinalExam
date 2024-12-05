SELECT 
  o.id AS order_id,
  o.order_type,
  o.ordered_by,
  o.date,
  o.deadline,
  o.status,
  o.description AS order_description,
  a.name AS asset_name
FROM asset_order AS o
INNER JOIN asset_management AS a
ON o.asset_id = a.id
Order By date