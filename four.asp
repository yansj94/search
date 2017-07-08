<!DOCTYPE html>
<html>
<head>
<title>
输出结果页面
</title>
<meta charset="gb2312">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
<%
if (Request.Form("out_sex")<>"") then
	response.write("1.你选择的out_sex是：")
	response.write(Request.Form("out_sex"))
	out_sex=Request.Form("out_sex")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_birthday")<>"") then
	response.write("1.你选择的out_birthday是：")
	response.write(Request.Form("out_birthday"))
	out_birthday=Request.Form("out_birthday")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_edu")<>"") then
	response.write("1.你选择的out_edu是：")
	response.write(Request.Form("out_edu"))
	out_edu=Request.Form("out_edu")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_work")<>"") then
	response.write("1.你选择的out_work是：")
	response.write(Request.Form("out_work"))
	out_work=Request.Form("out_work")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_customer")<>"") then
	response.write("1.你选择的out_customer是：")
	response.write(Request.Form("out_customer"))
	out_customer=Request.Form("out_customer")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_id")<>"") then
	response.write("1.你选择的out_id是：")
	response.write(Request.Form("out_id"))
	out_id=Request.Form("out_id")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_name")<>"") then
	response.write("1.你选择的out_name是：")
	response.write(Request.Form("out_name"))
	out_name=Request.Form("out_name")
	response.write("<br />")
else
end if

response.write("<br />")
%>


<%
if (Request.Form("out_card_num")<>"") then
	response.write("2.你选择的out_card_num是：")
	response.write(Request.Form("out_card_num"))
	out_card_num=Request.Form("out_card_num")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_root_card_num")<>"") then
	response.write("2.你选择的out_root_card_num是：")
	response.write(Request.Form("out_root_card_num"))
	out_root_card_num=Request.Form("out_root_card_num")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_send_card_num")<>"") then
	response.write("2.你选择的out_send_card_num是：")
	response.write(Request.Form("out_send_card_num"))
	out_send_card_num=Request.Form("out_send_card_num")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_promotion")<>"") then
	response.write("2.你选择的out_promotion是：")
	response.write(Request.Form("out_promotion"))
	out_promotion=Request.Form("out_promotion")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("out_is_new_card")<>"") then
	response.write("2.你选择的out_is_new_card是：")
	response.write(Request.Form("out_is_new_card"))
	out_is_new_card=Request.Form("out_is_new_card")
	response.write("<br />")
else
end if

%>

<%
if (Request.Form("cloud_pay")<>"") then
	response.write("2.你选择的cloud_pay是：")
	response.write(Request.Form("cloud_pay"))
	cloud_pay=Request.Form("cloud_pay")
	response.write("<br />")
else
end if

%>

<%
if (Request.Form("card_product")<>"") then
	response.write("2.你选择的card_product是：")
	response.write(Request.Form("card_product"))
	card_product=Request.Form("card_product")
	response.write("<br />")
else
end if

%>

<%
if (Request.Form("card_rank")<>"") then
	response.write("2.你选择的card_rank是：")
	response.write(Request.Form("card_rank"))
	card_rank=Request.Form("card_rank")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("card_state")<>"") then
	response.write("2.你选择的card_state是：")
	response.write(Request.Form("card_state"))
	card_state=Request.Form("card_state")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("send_card_time")<>"") then
	response.write("2.你选择的send_card_time是：")
	response.write(Request.Form("send_card_time"))
	send_card_time=Request.Form("send_card_time")
	response.write("<br />")
else
end if
%>


<%
if (Request.Form("active_card_time")<>"") then
	response.write("2.你选择的active_card_time是：")
	response.write(Request.Form("active_card_time"))
	active_card_time=Request.Form("active_card_time")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("send_card_reason")<>"") then
	response.write("2.你选择的send_card_reason是：")
	response.write(Request.Form("send_card_reason"))
	send_card_reason=Request.Form("send_card_reason")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("card_attached")<>"") then
	response.write("2.你选择的card_attached是：")
	response.write(Request.Form("card_attached"))
	card_attached=Request.Form("card_attached")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("active_card")<>"") then
	response.write("2.你选择的active_card是：")
	response.write(Request.Form("active_card"))
	active_card=Request.Form("active_card")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("month_active")<>"") then
	response.write("2.你选择的month_active是：")
	response.write(Request.Form("month_active"))
	month_active=Request.Form("month_active")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("season_active")<>"") then
	response.write("2.你选择的season_active是：")
	response.write(Request.Form("season_active"))
	season_active=Request.Form("season_active")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("sleep_card")<>"") then
	response.write("2.你选择的sleep_card是：")
	response.write(Request.Form("sleep_card"))
	sleep_card=Request.Form("sleep_card")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("effective_card")<>"") then
	response.write("2.你选择的effective_card是：")
	response.write(Request.Form("effective_card"))
	effective_card=Request.Form("effective_card")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_money")<>"") then
	response.write("3.你选择的trade_money是：")
	response.write(Request.Form("trade_money"))
	trade_money=Request.Form("trade_money")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_points")<>"") then
	response.write("3.你选择的trade_points是：")
	response.write(Request.Form("trade_points"))
	trade_points=Request.Form("trade_points")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_online")<>"") then
	response.write("3.你选择的trade_online是：")
	response.write(Request.Form("trade_online"))
	trade_online=Request.Form("trade_online")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_abroad")<>"") then
	response.write("3.你选择的trade_abroad是：")
	response.write(Request.Form("trade_abroad"))
	trade_abroad=Request.Form("trade_abroad")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_cloud_pay")<>"") then
	response.write("3.你选择的trade_cloud_pay是：")
	response.write(Request.Form("trade_cloud_pay"))
	trade_cloud_pay=Request.Form("trade_cloud_pay")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_types")<>"") then
	response.write("3.你选择的trade_types是：")
	response.write(Request.Form("trade_types"))
	trade_types=Request.Form("trade_types")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_types_detail")<>"") then
	response.write("3.你选择的trade_types_detail是：")
	response.write(Request.Form("trade_types_detail"))
	trade_types_detail=Request.Form("trade_types_detail")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_shop")<>"") then
	response.write("3.你选择的trade_shop是：")
	response.write(Request.Form("trade_shop"))
	trade_shop=Request.Form("trade_shop")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_sum_money")<>"") then
	response.write("3.你选择的trade_sum_money是：")
	response.write(Request.Form("trade_sum_money"))
	trade_sum_money=Request.Form("trade_sum_money")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_sum_counts")<>"") then
	response.write("3.你选择的trade_sum_counts是：")
	response.write(Request.Form("trade_sum_counts"))
	trade_sum_counts=Request.Form("trade_sum_counts")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_date")<>"") then
	response.write("3.你选择的trade_date是：")
	response.write(Request.Form("trade_date"))
	trade_date=Request.Form("trade_date")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("trade_description")<>"") then
	response.write("3.你选择的trade_description是：")
	response.write(Request.Form("trade_description"))
	trade_description=Request.Form("trade_description")
	response.write("<br />")
else
end if
%>


<%
if (Request.Form("account_num")<>"") then
	response.write("4.你选择的account_num是：")
	response.write(Request.Form("account_num"))
	account_num=Request.Form("account_num")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_bank")<>"") then
	response.write("4.你选择的account_bank是：")
	response.write(Request.Form("account_bank"))
	account_bank=Request.Form("account_bank")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_state")<>"") then
	response.write("4.你选择的account_state是：")
	response.write(Request.Form("account_state"))
	account_state=Request.Form("account_state")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_type")<>"") then
	response.write("4.你选择的account_type是：")
	response.write(Request.Form("account_type"))
	account_type=Request.Form("account_type")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_open_date")<>"") then
	response.write("4.你选择的account_open_date是：")
	response.write(Request.Form("account_open_date"))
	account_open_date=Request.Form("account_open_date")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_overdue")<>"") then
	response.write("4.你选择的account_overdue是：")
	response.write(Request.Form("account_overdue"))
	account_overdue=Request.Form("account_overdue")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_effective")<>"") then
	response.write("4.你选择的account_effective是：")
	response.write(Request.Form("account_effective"))
	account_effective=Request.Form("account_effective")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_overdraft")<>"") then
	response.write("4.你选择的account_overdraft是：")
	response.write(Request.Form("account_overdraft"))
	account_overdraft=Request.Form("account_overdraft")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_credits")<>"") then
	response.write("4.你选择的account_credits是：")
	response.write(Request.Form("account_credits"))
	account_credits=Request.Form("account_credits")
	response.write("<br />")
else
end if
%>

<%
if (Request.Form("account_previous_bill")<>"") then
	response.write("4.你选择的account_creditsaccount_previous_bill是：")
	response.write(Request.Form("account_previous_bill"))
	account_previous_bill=Request.Form("account_previous_bill")
	response.write("<br />")
else
end if
%>



<%
response.write("<br />")
if (Request.Form("sex")<>"") then
	response.write("你选择的sex是：")
	response.write(Request.Form("sex"))
	sex=Request.Form("sex")
	response.write("<br />")
else
response.write("你选择的sex是：")
response.write(Request.Form("sex"))
response.write("<br />")
end if
%>


<%

if (Request.Form("birth1_1")<>"") then
	response.write("你选择的birth1_1是：")
	response.write(Request.Form("birth1_1"))
	birth1_1=Request.Form("birth1_1")
	response.write("<br />")
else
response.write("你选择的birth1_1是：")
response.write(Request.Form("birth1_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("birth2_1")<>"") then
	response.write("你选择的birth2_1是：")
	response.write(Request.Form("birth2_1"))
	birth2_1=Request.Form("birth2_1")
	response.write("<br />")
else
response.write("你选择的birth2_1是：")
response.write(Request.Form("birth2_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("edu_1")<>"") then
	response.write("你选择的edu_1是：")
	response.write(Request.Form("edu_1"))
	edu_1=Request.Form("edu_1")
	response.write("<br />")
else
response.write("你选择的edu_1是：")
response.write(Request.Form("edu_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("user_2")<>"") then
	response.write("你选择的user_2是：")
	response.write(Request.Form("user_2"))
	user_2=Request.Form("user_2")
	response.write("<br />")
else
response.write("你选择的user_2是：")
response.write(Request.Form("user_2"))
response.write("<br />")
end if
%>


<%
if (Request.Form("id_2")<>"") then
	response.write("你选择的id_2是：")
	response.write(Request.Form("id_2"))
	id_2=Request.Form("id_2")
	response.write("<br />")
else
response.write("你选择的id_2是：")
response.write(Request.Form("id_2"))
response.write("<br />")
end if
%>


<%
if (Request.Form("is_new_1")<>"") then
	response.write("你选择的is_new_1是：")
	response.write(Request.Form("is_new_1"))
	is_new_1=Request.Form("is_new_1")
	response.write("<br />")
else
response.write("你选择的is_new_1是：")
response.write(Request.Form("is_new_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("is_bind_1")<>"") then
	response.write("你选择的is_bind_1是：")
	response.write(Request.Form("is_bind_1"))
	is_bind_1=Request.Form("is_bind_1")
	response.write("<br />")
else
response.write("你选择的is_bind_1是：")
response.write(Request.Form("is_bind_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("card_product_1")<>"") then
	response.write("你选择的card_product_1是：")
	response.write(Request.Form("card_product_1"))
	card_product_1=Request.Form("card_product_1")
	response.write("<br />")
else
response.write("你选择的card_product_1是：")
response.write(Request.Form("card_product_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("card_rank_1")<>"") then
	response.write("你选择的card_rank_1是：")
	response.write(Request.Form("card_rank_1"))
	card_rank_1=Request.Form("card_rank_1")
	response.write("<br />")
else
response.write("你选择的card_rank_1是：")
response.write(Request.Form("card_rank_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("card_state_1")<>"") then
	response.write("你选择的card_state_1是：")
	response.write(Request.Form("card_state_1"))
	card_state_1=Request.Form("card_state_1")
	response.write("<br />")
else
response.write("你选择的card_state_1是：")
response.write(Request.Form("card_state_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("send_card_time_start_2")<>"") then
	response.write("你选择的send_card_time_start_2是：")
	response.write(Request.Form("send_card_time_start_2"))
	send_card_time_start_2=Request.Form("send_card_time_start_2")
	response.write("<br />")
else
response.write("你选择的send_card_time_start_2是：")
response.write(Request.Form("send_card_time_start_2"))
response.write("<br />")
end if

%>


<%
if (Request.Form("send_card_time_end_2")<>"") then
	response.write("你选择的send_card_time_end_2是：")
	response.write(Request.Form("send_card_time_end_2"))
	send_card_time_end_2=Request.Form("send_card_time_end_2")
	response.write("<br />")
else
response.write("你选择的send_card_time_end_2是：")
response.write(Request.Form("send_card_time_end_2"))
response.write("<br />")
end if

%>

<%
if (Request.Form("active_card_time_start_1")<>"") then
	response.write("你选择的active_card_time_start_1是：")
	response.write(Request.Form("active_card_time_start_1"))
	active_card_time_start_1=Request.Form("active_card_time_start_1")
	response.write("<br />")
else
response.write("你选择的active_card_time_start_1是：")
response.write(Request.Form("active_card_time_start_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("active_card_time_end_1")<>"") then
	response.write("你选择的active_card_time_end_1是：")
	response.write(Request.Form("active_card_time_end_1"))
	active_card_time_end_1=Request.Form("active_card_time_end_1")
	response.write("<br />")
else
response.write("你选择的active_card_time_end_1是：")
response.write(Request.Form("active_card_time_end_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("card_reason_1")<>"") then
	response.write("你选择的card_reason_1是：")
	response.write(Request.Form("card_reason_1"))
	card_reason_1=Request.Form("card_reason_1")
	response.write("<br />")
else
response.write("你选择的card_reason_1是：")
response.write(Request.Form("card_reason_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("attached_card_1")<>"") then
	response.write("你选择的attached_card_1是：")
	response.write(Request.Form("attached_card_1"))
	attached_card_1=Request.Form("attached_card_1")
	response.write("<br />")
else
response.write("你选择的attached_card_1是：")
response.write(Request.Form("attached_card_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("active_card_1")<>"") then
	response.write("你选择的active_card_1是：")
	response.write(Request.Form("active_card_1"))
	active_card_1=Request.Form("active_card_1")
	response.write("<br />")
else
response.write("你选择的active_card_1是：")
response.write(Request.Form("active_card_1"))
response.write("<br />")
end if

%>



<%
if (Request.Form("month_active_1")<>"") then
	response.write("你选择的month_active_1是：")
	response.write(Request.Form("month_active_1"))
	month_active_1=Request.Form("month_active_1")
	response.write("<br />")
else
response.write("你选择的month_active_1是：")
response.write(Request.Form("month_active_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("season_active_1")<>"") then
	response.write("你选择的season_active_1是：")
	response.write(Request.Form("season_active_1"))
	season_active_1=Request.Form("season_active_1")
	response.write("<br />")
else
response.write("你选择的season_active_1是：")
response.write(Request.Form("season_active_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("sleep_card_1")<>"") then
	response.write("你选择的sleep_card_1是：")
	response.write(Request.Form("sleep_card_1"))
	sleep_card_1=Request.Form("sleep_card_1")
	response.write("<br />")
else
response.write("你选择的sleep_card_1是：")
response.write(Request.Form("sleep_card_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("effective_card_1")<>"") then
	response.write("你选择的effective_card_1是：")
	response.write(Request.Form("effective_card_1"))
	effective_card_1=Request.Form("effective_card_1")
	response.write("<br />")
else
response.write("你选择的effective_card_1是：")
response.write(Request.Form("effective_card_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("trade_time_start_2")<>"") then
	response.write("你选择的trade_time_start_2是：")
	response.write(Request.Form("trade_time_start_2"))
	trade_time_start_2=Request.Form("trade_time_start_2")
	response.write("<br />")
else
response.write("你选择的trade_time_start_2是：")
response.write(Request.Form("trade_time_start_2"))
response.write("<br />")
end if

%>


<%
if (Request.Form("trade_time_end_2")<>"") then
	response.write("你选择的trade_time_end_2是：")
	response.write(Request.Form("trade_time_end_2"))
	trade_time_end_2=Request.Form("trade_time_end_2")
	response.write("<br />")
else
response.write("你选择的trade_time_end_2是：")
response.write(Request.Form("trade_time_end_2"))
response.write("<br />")
end if

%>

<%
if (Request.Form("money_bottom_1")<>"") then
	response.write("你选择的money_bottom_1是：")
	response.write(Request.Form("money_bottom_1"))
	money_bottom_1=Request.Form("money_bottom_1")
	response.write("<br />")
else
response.write("你选择的money_bottom_1是：")
response.write(Request.Form("money_bottom_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("money_top_1")<>"") then
	response.write("你选择的money_top_1是：")
	response.write(Request.Form("money_top_1"))
	money_top_1=Request.Form("money_top_1")
	response.write("<br />")
else
response.write("你选择的money_top_1是：")
response.write(Request.Form("money_top_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("trade_points_1")<>"") then
	response.write("你选择的trade_points_1是：")
	response.write(Request.Form("trade_points_1"))
	trade_points_1=Request.Form("trade_points_1")
	response.write("<br />")
else
response.write("你选择的trade_points_1是：")
response.write(Request.Form("trade_points_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("online_1")<>"") then
	response.write("你选择的online_1是：")
	response.write(Request.Form("online_1"))
	online_1=Request.Form("online_1")
	response.write("<br />")
else
response.write("你选择的online_1是：")
response.write(Request.Form("online_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("abroad_1")<>"") then
	response.write("你选择的abroad_1是：")
	response.write(Request.Form("abroad_1"))
	abroad_1=Request.Form("abroad_1")
	response.write("<br />")
else
response.write("你选择的abroad_1是：")
response.write(Request.Form("abroad_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("cloud_pay_1")<>"") then
	response.write("你选择的cloud_pay_1是：")
	response.write(Request.Form("cloud_pay_1"))
	cloud_pay_1=Request.Form("cloud_pay_1")
	response.write("<br />")
else
response.write("你选择的cloud_pay_1是：")
response.write(Request.Form("cloud_pay_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("trade_type_1")<>"") then
	response.write("你选择的trade_type_1是：")
	response.write(Request.Form("trade_type_1"))
	trade_type_1=Request.Form("trade_type_1")
	response.write("<br />")
else
response.write("你选择的trade_type_1是：")
response.write(Request.Form("trade_type_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("textarea_1")<>"") then
	response.write("你选择的textarea_1是：")
	response.write(Request.Form("textarea_1"))
	textarea_1=Request.Form("textarea_1")
	response.write("<br />")
else
response.write("你选择的textarea_1是：")
response.write(Request.Form("textarea_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("textarea2_1")<>"") then
	response.write("你选择的textarea2_1是：")
	response.write(Request.Form("textarea2_1"))
	textarea2_1=Request.Form("textarea2_1")
	response.write("<br />")
else
response.write("你选择的textarea2_1是：")
response.write(Request.Form("textarea2_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("sum_money_1")<>"") then
	response.write("你选择的sum_money_1是：")
	response.write(Request.Form("sum_money_1"))
	sum_money_1=Request.Form("sum_money_1")
	response.write("<br />")
else
response.write("你选择的sum_money_1是：")
response.write(Request.Form("sum_money_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("sum_times_1")<>"") then
	response.write("你选择的sum_times_1是：")
	response.write(Request.Form("sum_times_1"))
	sum_times_1=Request.Form("sum_times_1")
	response.write("<br />")
else
response.write("你选择的sum_times_1是：")
response.write(Request.Form("sum_times_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("bank_number_1")<>"") then
	response.write("你选择的bank_number_1是：")
	response.write(Request.Form("bank_number_1"))
	bank_number_1=Request.Form("bank_number_1")
	response.write("<br />")
else
response.write("你选择的bank_number_1是：")
response.write(Request.Form("bank_number_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("account_class_1")<>"") then
	response.write("你选择的account_class_1是：")
	response.write(Request.Form("account_class_1"))
	account_class_1=Request.Form("account_class_1")
	response.write("<br />")
else
response.write("你选择的account_class_1是：")
response.write(Request.Form("account_class_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("open_account_time_start_2")<>"") then
	response.write("你选择的open_account_time_start_2是：")
	response.write(Request.Form("open_account_time_start_2"))
	open_account_time_start_2=Request.Form("open_account_time_start_2")
	response.write("<br />")
else
response.write("你选择的open_account_time_start_2是：")
response.write(Request.Form("open_account_time_start_2"))
response.write("<br />")
end if

%>


<%
if (Request.Form("open_account_time_end_2")<>"") then
	response.write("你选择的open_account_time_end_2是：")
	response.write(Request.Form("open_account_time_end_2"))
	open_account_time_end_2=Request.Form("open_account_time_end_2")
	response.write("<br />")
else
response.write("你选择的open_account_time_end_2是：")
response.write(Request.Form("open_account_time_end_2"))
response.write("<br />")
end if

%>


<%
if (Request.Form("overdue_num_bottom_1")<>"") then
	response.write("你选择的overdue_num_bottom_1是：")
	response.write(Request.Form("overdue_num_bottom_1"))
	overdue_num_bottom_1=Request.Form("overdue_num_bottom_1")
	response.write("<br />")
else
response.write("你选择的overdue_num_bottom_1是：")
response.write(Request.Form("overdue_num_bottom_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("overdue_num_top_1")<>"") then
	response.write("你选择的overdue_num_top_1是：")
	response.write(Request.Form("overdue_num_top_1"))
	overdue_num_top_1=Request.Form("overdue_num_top_1")
	response.write("<br />")
else
response.write("你选择的overdue_num_top_1是：")
response.write(Request.Form("overdue_num_top_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("effective_account_1")<>"") then
	response.write("你选择的effective_account_1是：")
	response.write(Request.Form("effective_account_1"))
	effective_account_1=Request.Form("effective_account_1")
	response.write("<br />")
else
response.write("你选择的effective_account_1是：")
response.write(Request.Form("effective_account_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("overdraft_bottom_1")<>"") then
	response.write("你选择的overdraft_bottom_1是：")
	response.write(Request.Form("overdraft_bottom_1"))
	overdraft_bottom_1=Request.Form("overdraft_bottom_1")
	response.write("<br />")
else
response.write("你选择的overdraft_bottom_1是：")
response.write(Request.Form("overdraft_bottom_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("overdraft_top_1")<>"") then
	response.write("你选择的overdraft_top_1是：")
	response.write(Request.Form("overdraft_top_1"))
	overdraft_top_1=Request.Form("overdraft_top_1")
	response.write("<br />")
else
response.write("你选择的overdraft_top_1是：")
response.write(Request.Form("overdraft_top_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("credits_bottom_1")<>"") then
	response.write("你选择的credits_bottom_1是：")
	response.write(Request.Form("credits_bottom_1"))
	credits_bottom_1=Request.Form("credits_bottom_1")
	response.write("<br />")
else
response.write("你选择的credits_bottom_1是：")
response.write(Request.Form("credits_bottom_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("credits_top_1")<>"") then
	response.write("你选择的credits_top_1是：")
	response.write(Request.Form("credits_top_1"))
	credits_top_1=Request.Form("credits_top_1")
	response.write("<br />")
else
response.write("你选择的credits_top_1是：")
response.write(Request.Form("credits_top_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("previous_bill_bottom_1")<>"") then
	response.write("你选择的previous_bill_bottom_1是：")
	response.write(Request.Form("previous_bill_bottom_1"))
	previous_bill_bottom_1=Request.Form("previous_bill_bottom_1")
	response.write("<br />")
else
response.write("你选择的previous_bill_bottom_1是：")
response.write(Request.Form("previous_bill_bottom_1"))
response.write("<br />")
end if

%>


<%
if (Request.Form("previous_bill_top_1")<>"") then
	response.write("你选择的previous_bill_top_1是：")
	response.write(Request.Form("previous_bill_top_1"))
	previous_bill_top_1=Request.Form("previous_bill_top_1")
	response.write("<br />")
else
response.write("你选择的previous_bill_top_1是：")
response.write(Request.Form("previous_bill_top_1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("radiobutton1")<>"") then
	response.write("你选择的radiobutton1是：")
	response.write(Request.Form("radiobutton1"))
	radiobutton1=Request.Form("radiobutton1")
	response.write("<br />")
else
response.write("你选择的radiobutton1是：")
response.write(Request.Form("radiobutton1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("a1")<>"") then
	response.write("你选择的a1是：")
	response.write(Request.Form("a1"))
	a1=Request.Form("a1")
	response.write("<br />")
else
response.write("你选择的a1是：")
response.write(Request.Form("a1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("a2")<>"") then
	response.write("你选择的a2是：")
	response.write(Request.Form("a2"))
	a2=Request.Form("a2")
	response.write("<br />")
else
response.write("你选择的a2是：")
response.write(Request.Form("a2"))
response.write("<br />")
end if

%>


<%
if (Request.Form("b1")<>"") then
	response.write("你选择的b1是：")
	response.write(Request.Form("b1"))
	b1=Request.Form("b1")
	response.write("<br />")
else
response.write("你选择的b1是：")
response.write(Request.Form("b1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("b2")<>"") then
	response.write("你选择的b2是：")
	response.write(Request.Form("b2"))
	b1=Request.Form("b2")
	response.write("<br />")
else
response.write("你选择的b2是：")
response.write(Request.Form("b2"))
response.write("<br />")
end if

%>


<%
if (Request.Form("c1")<>"") then
	response.write("你选择的c1是：")
	response.write(Request.Form("c1"))
	c1=Request.Form("c1")
	response.write("<br />")
else
response.write("你选择的c1是：")
response.write(Request.Form("c1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("c2")<>"") then
	response.write("你选择的c2是：")
	response.write(Request.Form("c2"))
	c2=Request.Form("c2")
	response.write("<br />")
else
response.write("你选择的c2是：")
response.write(Request.Form("c2"))
response.write("<br />")
end if

%>

<%
if (Request.Form("d1")<>"") then
	response.write("你选择的d1是：")
	response.write(Request.Form("d1"))
	d1=Request.Form("d1")
	response.write("<br />")
else
response.write("你选择的d1是：")
response.write(Request.Form("d1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("d2")<>"") then
	response.write("你选择的d2是：")
	response.write(Request.Form("d2"))
	d2=Request.Form("d2")
	response.write("<br />")
else
response.write("你选择的d2是：")
response.write(Request.Form("d2"))
response.write("<br />")
end if

%>

<%
if (Request.Form("e1")<>"") then
	response.write("你选择的e1是：")
	response.write(Request.Form("e1"))
	e1=Request.Form("e1")
	response.write("<br />")
else
response.write("你选择的e1是：")
response.write(Request.Form("e1"))
response.write("<br />")
end if

%>

<%
if (Request.Form("e2")<>"") then
	response.write("你选择的e2是：")
	response.write(Request.Form("e2"))
	e2=Request.Form("e2")
	response.write("<br />")
else
response.write("你选择的e2是：")
response.write(Request.Form("e2"))
response.write("<br />")
end if

%>


<%
if (Request.Form("money")<>"") then
	response.write("你选择的money是：")
	response.write(Request.Form("money"))
	money=Request.Form("money")
	response.write("<br />")
else
response.write("你选择的money是：")
response.write(Request.Form("money"))
response.write("<br />")
end if

%>










<form name="form3" method="get" action="four.asp">
   <input type="submit" value="确定"></input>
</form>
</body>

</html>
<!-- response.write(" " & Request.Form("lname")) -->