SELECT * 
FROM asset_management
ORDER BY id
LIMIT {{ assetsTable.pagination.pageSize }}
OFFSET {{ assetsTable.pagination.offset }};
