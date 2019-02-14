SELECT i.product_item_id, i.`size`, i.price , p.name FROM `inventory` i
LEFT JOIN `product_item` pi ON pi.id = i.product_item_id
LEFT JOIN `product` p ON p.id = pi.product_id
WHERE i.price = (
SELECT MIN(lpi.price) FROM `inventory` lpi
WHERE lpi.product_item_id = i.product_item_id
)