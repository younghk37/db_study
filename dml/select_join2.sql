select
	ut.name,
	sum(pt.product_price * odt.count_number) as total_order_price
from
	order_detail_tb odt
	left outer join product_tb pt on(pt.product_id = odt.product_id)
	left outer join order_tb ot on(ot.order_id = odt.order_id)
	left outer join user_tb ut on(ut.user_id = ot.user_id)
	left outer join address_tb at on(at.address_id = ot.address_id)
where
	ut.name = '상구'
group by
	ut.name;

# 2023-06-01 ~ 2023-06-07 까지의 카테고리별 총 판매수량

select
	ct.category_name,
    sum(odt.count_number) as total_order_stock
from
	order_detail_tb odt
	left outer join product_tb pt on(pt.product_id = odt.product_id)
	left outer join order_tb ot on(ot.order_id = odt.order_id)
    left outer join category_tb ct on(ct.category_id = pt.category_id)
where
	ot.order_date between '2023-06-01' and '2023-06-07'
group by
	pt.category_id;
    


select
	*
from
	order_detail_tb odt
	left outer join product_tb pt on(pt.product_id = odt.product_id)
	left outer join order_tb ot on(ot.order_id = odt.order_id)
	left outer join user_tb ut on(ut.user_id = ot.user_id)
	left outer join address_tb at on(at.address_id = ot.address_id)
    left outer join category_tb ct on(ct.category_id = pt.category_id)