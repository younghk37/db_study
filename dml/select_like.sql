# like

select
	*
from
	product_tb
where
	product_name in('NO.4 TEE', 'PROPERTY OF TEE');
    
select
	*
from
	product_tb
where
	product_name like 'NO%'
    or product_name like 'PROPERTY%';