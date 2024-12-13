SELECT 
  o.id AS order_id,
  o.order_type,
  o.ordered_by,
  o.date,
  o.deadline,
  o.status,
  o.description AS order_description
FROM asset_order AS o
INNER JOIN asset_management AS a
ON o.asset_id = a.id
WHERE a.id = {{ assetsTable.selectedRow.id }}

