show tables;
select count(*) from payment; -- 总数106368条
select * from payment;

select distinct 逾期天数 from payment order by cast(逾期天数 as UNSIGNED INTEGER);

select count(distinct 客户代码) from payment;

select avg(cnt),max(cnt),min(cnt) from(
select 客户代码,count(*) cnt from payment group by 客户代码) a; 
-- 平均每个客户有70笔交易,最多交易3608,最少1

select * from payment where 客户代码 in ( 
select 客户代码 from (
select 客户代码,count(*) cnt from payment group by 客户代码) a
where cnt =1);

