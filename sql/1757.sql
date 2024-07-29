SELECT prod.product_id
FROM Products AS prod
WHERE prod.low_fats = 'Y'
AND prod.recyclable = 'Y';
