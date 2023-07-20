SELECT * FROM androg.product_tb;

# 1. 상품의 가격이 10만원 ~ 20만원 사이의 상품을 조회하시오.
select
	product_id,
    product_name,
    product_price,
    category_id,
    product_img,
    size_s,
	size_m,
    size_l,
    size_xl,
    size_xxl,
    color_id,
    soldout_flag
from
	product_tb
where
-- 	100000 <= product_price
--  and product_price <= 200000;
    product_price between 100000 and 200000;

# 2. 상품의 카테고리가 2, 4번인 것만 조회하시오.
select
	product_id,
    product_name,
    product_price,
    category_id,
    product_img,
    size_s,
	size_m,
    size_l,
    size_xl,
    size_xxl,
    color_id,
    soldout_flag
from
	product_tb
where
-- 	category_id = 2
--  or category_id = 4;
    category_id in (2, 4);

# 3. 상품의 이름이 같은 것이 몇개 있는지 조회하시오.
select
    product_name,
    count(product_name) as product_name_count
from
	product_tb
group by
	product_name;

# 4. 동일 카테고리 상품의 가격 총액을 조회하시오.
select
    category_id,
    sum(product_price) as total_product_price
from
	product_tb
group by
	category_id;

# 5. 상품의 가격이 10만원 ~ 20만원 사이의 상품 중에 동일 카테고리 상품의 총액을 조회하고
#		총액의 내림차순으로 정렬하시오.
select
    category_id,
    sum(product_price) as total_product_price
from
	product_tb
where
	product_price between 100000 and 200000
group by
	category_id
order by
	total_product_price desc;

#서브쿼리
select
	category_id,
    sum(product_price)
from
	(select
		product_name,
		product_price,
		category_id
	from
		product_tb
	group by
		product_name,
		product_price,
		category_id) as product_name_group
group by
	category_id;