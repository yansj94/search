<!DOCTYPE html>
<html>
<head>
<title>输出参数页面</title>
<meta charset="gb2312">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="css.css" rel="stylesheet">
</head>
<body>
  <div class="div" style="width: 700px;
     
     margin-top: 50px;
     margin-left: 300px;
     padding: 50px;
     background: #4095DB;
">
<%
if (Request.Form("sex")<>"") then
	sex=Request.Form("sex")
else
sex=""
end if
%>

<%
if (Request.Form("birth1")<>"") then
	birth1=Request.Form("birth1")
	birth1_1=replace(birth1,"-","")
else
birth1_1=""
end if
%>

<%
if (Request.Form("birth2")<>"") then
	birth2=Request.Form("birth2")
	birth2_1=replace(birth2,"-","")
else
birth2_1=""
end if
%>

<%
if (Request.Form("edu")<>"") then
	edu=Request.Form("edu")
	edu_1=replace(edu,",","||")
else
edu_1=""
end if
%>

<%
if (Request.Form("user")<>"") then
	user_1=Request.Form("user")
    user_2=replace(user_1,",","||")
else
user_1=""
end if
%>

<%
if (Request.Form("id")<>"") then
	id_1=Request.Form("id")
    id_2=replace(id_1,",","||")
else
id_1=""
end if
%>

<%
if (Request.Form("is_new")<>"") then
	is_new_1=Request.Form("is_new")
else
is_new_1=""
end if
%>

<%
if (Request.Form("is_bind")<>"") then
   if (Request.Form("is_bind")="1, 2") then
     is_bind_1=0
   else
	is_bind_1=Request.Form("is_bind")
   end if
else
is_bind_1=""
end if
%>

<%
if (Request.Form("card_product")<>"") then
	card_product_1=Request.Form("card_product")
else
card_product_1=""
end if
%>

<%
if (Request.Form("card_rank")<>"") then
	card_rank_1=Request.Form("card_rank")
else
card_rank_1=""
end if
%>

<%
if (Request.Form("card_state")<>"") then
	card_state_1=Request.Form("card_state")
else
card_state_1=""
end if
%>

<%
if (Request.Form("send_card_time_start")<>"") then
	send_card_time_start=Request.Form("send_card_time_start")
	send_card_time_start_2=replace(send_card_time_start,"-","")
else
send_card_time_start_2=""
end if
%>

<%
if (Request.Form("send_card_time_end")<>"") then
	send_card_time_end=Request.Form("send_card_time_end")
	send_card_time_end_2=replace(send_card_time_end,"-","")
else
send_card_time_end_2=""
end if
%>

<%
if (Request.Form("active_card_time_start")<>"") then
	active_card_time_start=Request.Form("active_card_time_start")
	active_card_time_start_1=replace(active_card_time_start,"-","")
else
active_card_time_start_1=""
end if
%>

<%
if (Request.Form("active_card_time_end")<>"") then
	active_card_time_end=Request.Form("active_card_time_end")
	active_card_time_end_1=replace(active_card_time_end,"-","")
else
active_card_time_end_1=""
end if
%>

<%
if (Request.Form("card_reason")<>"") then
	card_reason_1=Request.Form("card_reason")
else
card_reason_1=""
end if
%>


<%
if (Request.Form("attached_card")<>"") then
   if (Request.Form("attached_card")="1, 2") then
   attached_card_1=0
   else
	 attached_card_1=Request.Form("attached_card")
   end if
else
attached_card_1=""
end if
%>


<%
if (Request.Form("active_card")<>"") then
   if (Request.Form("active_card")="1, 2") then
   active_card_1=0
   else
	active_card_1=Request.Form("active_card")
   end if
else
active_card_1=""
end if
%>

<%
if (Request.Form("month_active")<>"") then
   if (Request.Form("month_active")="1, 2") then
   month_active_1=0
   else
   month_active_1=Request.Form("month_active")
    end if
else
month_active_1=""
end if
%>

<%
if (Request.Form("season_active")<>"") then
   if (Request.Form("season_active")="1, 2") then
   season_active_1=0
   else
	season_active_1=Request.Form("season_active")
    end if
else
season_active_1=""
end if
%>

<%
if (Request.Form("sleep_card")<>"") then
   if (Request.Form("sleep_card")="1, 2") then
    sleep_card_1=0
   else
	sleep_card_1=Request.Form("sleep_card")
   end if
else
sleep_card_1=""
end if
%>

<%
if (Request.Form("effective_card")<>"") then
   if (Request.Form("effective_card")="1, 2") then
    effective_card_1=0
   else
	effective_card_1=Request.Form("effective_card")
    end if
else
effective_card_1=""
end if
%>

<%
if (Request.Form("trade_time_start")<>"") then
	trade_time_start_1=Request.Form("trade_time_start")
    trade_time_start_2=replace(trade_time_start_1,"-","")
else
trade_time_start_2=""
end if
%>

<%
if (Request.Form("trade_time_end")<>"") then
	trade_time_end_1=Request.Form("trade_time_end")
    trade_time_end_2=replace(trade_time_end_1,"-","")
else
trade_time_end_2=""
end if
%>

<%
if (Request.Form("money_bottom")<>"") then
	money_bottom_1=Request.Form("money_bottom")
else
money_bottom_1=""
end if
%>

<%
if (Request.Form("money_top")<>"") then
	money_top_1=Request.Form("money_top")
else
money_top_1=""
end if
%>

<%
if (Request.Form("trade_points")<>"") then
   if (Request.Form("trade_points")="1, 2") then
    trade_points_1=0
   else
	trade_points_1=Request.Form("trade_points")
   end if
else
trade_points_1=""
end if
%>

<%
if (Request.Form("online")<>"") then
  if (Request.Form("online")="1, 2") then
    online_1=0
   else
	online_1=Request.Form("online")
    end if
else
online_1=""
end if
%>

<%
if (Request.Form("abroad")<>"") then
   if (Request.Form("abroad")="1, 2") then
    abroad_1=0
   else
	abroad_1=Request.Form("abroad")
    end if
else
abroad_1=""
end if
%>

<%
if (Request.Form("cloud_pay")<>"") then
   if (Request.Form("cloud_pay")="1, 2") then
    cloud_pay_1=0
   else 
	cloud_pay_1=Request.Form("cloud_pay")
   end if
else
cloud_pay_1=""
end if
%>

<%
if (Request.Form("trade_type")<>"") then
	trade_type_1=Request.Form("trade_type")
else
trade_type_1=""
end if
%>

<%
if (Request.Form("textarea")<>"") then
	textarea_1=Request.Form("textarea")
else
textarea_1=""
end if
%>

<%
if (Request.Form("textarea2")<>"") then
	textarea2_1=Request.Form("textarea2")
else
textarea2_1=""
end if
%>

<%
if (Request.Form("sum_money")<>"") then
	sum_money_1=Request.Form("sum_money")
else
sum_money_1=""
end if
%>

<%
if (Request.Form("sum_times")<>"") then
	sum_times_1=Request.Form("sum_times")
else
sum_times_1=""
end if
%>

<%
if (Request.Form("bank_number")<>"") then
	bank_number_1=Request.Form("bank_number")
else
bank_number_1=""
end if
%>

<%
if (Request.Form("account_class")<>"") then
	account_class_1=Request.Form("account_class")
else
account_class_1=""
end if
%>

<%
if (Request.Form("open_account_time_start")<>"") then
	open_account_time_start_1=Request.Form("open_account_time_start")
    open_account_time_start_2=replace(open_account_time_start_1,"-","")
else
open_account_time_start_2=""
end if
%>


<%
if (Request.Form("open_account_time_end")<>"") then
	open_account_time_end_1=Request.Form("open_account_time_end")
    open_account_time_end_2=replace(open_account_time_end_1,"-","")
else
open_account_time_end_2=""
end if
%>

<%
if (Request.Form("overdue_num_bottom")<>"") then
	overdue_num_bottom_1=Request.Form("overdue_num_bottom")
else
overdue_num_bottom_1=""
end if
%>

<%
if (Request.Form("overdue_num_top")<>"") then
	overdue_num_top_1=Request.Form("overdue_num_top")
else
overdue_num_top_1=""
end if
%>

<%
if (Request.Form("effective_account")<>"") then
    if (Request.Form("effective_account")="1, 2") then
    effective_account_1=0
    else
	effective_account_1=Request.Form("effective_account")
    end if
else
effective_account_1=""
end if
%>

<%
if (Request.Form("overdraft_bottom")<>"") then
	overdraft_bottom_1=Request.Form("overdraft_bottom")
else
overdraft_bottom_1=""
end if
%>

<%
if (Request.Form("overdraft_top")<>"") then
	overdraft_top_1=Request.Form("overdraft_top")
else
overdraft_top_1=""
end if
%>

<%
if (Request.Form("credits_bottom")<>"") then
	credits_bottom_1=Request.Form("credits_bottom")
else
credits_bottom_1=""
end if
%>

<%
if (Request.Form("credits_top")<>"") then
	credits_top_1=Request.Form("credits_top")
else
credits_top_1=""
end if
%>

<%
if (Request.Form("previous_bill_bottom")<>"") then
	previous_bill_bottom_1=Request.Form("previous_bill_bottom")
else
previous_bill_bottom_1=""
end if
%>

<%
if (Request.Form("previous_bill_top")<>"") then
	previous_bill_top_1=Request.Form("previous_bill_top")
else
previous_bill_top_1=""
end if
%>

<%
if (Request.Form("radiobutton1")<>"") then
	radiobutton1=Request.Form("radiobutton1")
else
radiobutton1=""
end if
%>

<%
if (Request.Form("a1")<>"") then
	a1=Request.Form("a1")
else
a1=""
end if
%>

<%
if (Request.Form("a2")<>"") then
	a2=Request.Form("a2")
else
a2=""
end if
%>

<%
if (Request.Form("b1")<>"") then
	b1=Request.Form("b1")
else
b1=""
end if
%>

<%
if (Request.Form("b2")<>"") then
	b2=Request.Form("b2")
else
b2=""
end if
%>


<%
if (Request.Form("c1")<>"") then
	c1=Request.Form("c1")
else
c1=""
end if
%>

<%
if (Request.Form("c2")<>"") then
	c2=Request.Form("c2")
else
c2=""
end if
%>

<%
if (Request.Form("d1")<>"") then
	d1=Request.Form("d1")
else
d1=""
end if
%>

<%
if (Request.Form("d2")<>"") then
	d2=Request.Form("d2")
else
d2=""
end if
%>

<%
if (Request.Form("e1")<>"") then
	e1=Request.Form("e1")
else
e1=""
end if
%>

<%
if (Request.Form("e2")<>"") then
	e2=Request.Form("e2")
else
e2=""
end if
%>

<%
if (Request.Form("money")<>"") then
	money=Request.Form("money")
else
money=""
end if
%>


<form name="form3" method="post" action="four.asp">
<div style="border:1px solid red;display:none;">
  <input name="sex"   value="<% response.write(sex) %>" > </input>
  <br />
  <input name="birth1_1" value="<% response.write(birth1_1) %>" > </input>
  <br />
  <input name="birth2_1" value="<% response.write(birth2_1) %>" > </input>
  <br />
  <input name="edu_1" value="<%response.write(edu_1)%>"> </input>
  <br />
  <input name="user_2" value="<%response.write(user_2)%>"> </input>
  <br />
  <input name="id_2" value="<%response.write(id_2)%>"> </input>
  <br />
  <input name="is_new_1" value="<%response.write(is_new_1)%>"> </input>
  <br />
  <input name="is_bind_1" value="<%response.write(is_bind_1)%>"> </input>
  <br />
  <input name="card_product_1" value="<%response.write(card_product_1)%>"> </input>
  <br />
  <input name="card_rank_1" value="<%response.write(card_rank_1)%>"> </input>
  <br />
  <input name="card_state_1" value="<%response.write(card_state_1)%>"> </input>
  <br />
  <input name="send_card_time_start_2" value="<%response.write(send_card_time_start_2)%>"> </input>
  <br />
  <input name="send_card_time_end_2" value="<%response.write(send_card_time_end_2)%>"> </input>
  <br />
  <input name="active_card_time_start_1" value="<%response.write(active_card_time_start_1)%>"> </input>
  <br />
   <input name="active_card_time_end_1" value="<%response.write(active_card_time_end_1)%>"> </input>
  <br />
   <input name="card_reason_1" value="<%response.write(card_reason_1)%>"> </input>
  <br />
  <input name="attached_card_1" value="<%response.write(attached_card_1)%>"> </input>
  <br />
  <input name="active_card_1" value="<%response.write(active_card_1)%>"> </input>
  <br />
  <input name="month_active_1" value="<%response.write(month_active_1)%>"> </input>
  <br />
  <input name="season_active_1" value="<%response.write(season_active_1)%>"> </input>
  <br />
  <input name="sleep_card_1" value="<%response.write(sleep_card_1)%>"> </input>
  <br />
  <input name="effective_card_1" value="<%response.write(effective_card_1)%>"> </input>
  <br />
  <input name="trade_time_start_2" value="<%response.write(trade_time_start_2)%>"> </input>
  <br />
  <input name="trade_time_end_2" value="<%response.write(trade_time_end_2)%>"> </input>
  <br />
  <input name="money_bottom_1" value="<%response.write(money_bottom_1)%>"> </input>
  <br />
   <input name="money_top_1" value="<%response.write(money_top_1)%>"> </input>
  <br />
  <input name="trade_points_1" value="<%response.write(trade_points_1)%>"> </input>
  <br />
   <input name="online_1" value="<%response.write(online_1)%>"> </input>
  <br />
   <input name="abroad_1" value="<%response.write(abroad_1)%>"> </input>
  <br />
   <input name="cloud_pay_1" value="<%response.write(cloud_pay_1)%>"> </input>
  <br />
   <input name="trade_type_1" value="<%response.write(trade_type_1)%>"> </input>
  <br />
   <input name="textarea_1" value="<%response.write(textarea_1)%>"> </input>
  <br />
   <input name="textarea2_1" value="<%response.write(textarea2_1)%>"> </input>
  <br />
  <input name="sum_money_1" value="<%response.write(sum_money_1)%>"> </input>
  <br />
  <input name="sum_times_1" value="<%response.write(sum_times_1)%>"> </input>
  <br />
  <input name="bank_number_1" value="<%response.write(bank_number_1)%>"> </input>
  <br />
  <input name="account_class_1" value="<%response.write(account_class_1)%>"> </input>
  <br />
   <input name="open_account_time_start_2" value="<%response.write(open_account_time_start_2)%>"> </input>
  <br />
  <input name="open_account_time_end_2" value="<%response.write(open_account_time_end_2)%>"> </input>
  <br />
   <input name="overdue_num_bottom_1" value="<%response.write(overdue_num_bottom_1)%>"> </input>
  <br />
   <input name="overdue_num_top_1" value="<%response.write(overdue_num_top_1)%>"> </input>
  <br />
   <input name="effective_account_1" value="<%response.write(effective_account_1)%>"> </input>
  <br />
   <input name="overdraft_bottom_1" value="<%response.write(overdraft_bottom_1)%>"> </input>
  <br />
  <input name="overdraft_top_1" value="<%response.write(overdraft_top_1)%>"> </input>
  <br />
  <input name="credits_bottom_1" value="<%response.write(credits_bottom_1)%>"> </input>
  <br />
   <input name="credits_top_1" value="<%response.write(credits_top_1)%>"> </input>
  <br />
   <input name="previous_bill_bottom_1" value="<%response.write(previous_bill_bottom_1)%>"> </input>
  <br />
  <input name="previous_bill_top_1" value="<%response.write(previous_bill_top_1)%>"> </input>
  <br />
  <input name="radiobutton1" value="<%response.write(radiobutton1)%>"> </input>
  <br />
  <input name="a1" value="<%response.write(a1)%>"> </input>
  <br />
  <input name="a2" value="<%response.write(a2)%>"> </input>
  <br />
  <input name="b1" value="<%response.write(b1)%>"> </input>
  <br />
  <input name="b2" value="<%response.write(b2)%>"> </input>
  <br />
  <input name="c1" value="<%response.write(c1)%>"> </input>
  <br />
  <input name="c2" value="<%response.write(c2)%>"> </input>
  <br />
  <input name="d1" value="<%response.write(d1)%>"> </input>
  <br />
  <input name="d2" value="<%response.write(d2)%>"> </input>
  <br />
  <input name="e1" value="<%response.write(e1)%>"> </input>
  <br />
  <input name="e2" value="<%response.write(e2)%>"> </input>
  <br />
  <input name="money" value="<%response.write(money)%>"> </input>
  <br />
  
  

  
</div>
          
<h3>请选择输出属性：</h3><br><br>
<div id="div_third">
1.客户属性:<br> <div class="div_trade">
           <label>
                <input type="checkbox" name="out_sex" value="1" 
                <%
                  if (Request.Cookies("out_sex_2")<>"") then
                Response.write("checked")
                end if
                 %> />性别
            </label></div>
            <div class="div_trade">
           <label>
                <input type="checkbox" name="out_birthday" value="1" 
                <%
                  if (Request.Cookies("out_birthday_2")<>"") then
                Response.write("checked")
                end if
                 %> />出生日期
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_edu" value="1" 
                <%
                  if (Request.Cookies("out_edu_2")<>"") then
                Response.write("checked")
                end if
                 %> />教育程度
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_work" value="1"
                <%
                  if (Request.Cookies("out_work_2")<>"") then
                Response.write("checked")
                end if
                 %> />工作单位
            </label></div>
            <div class="div_trade">
               <label>
                <input type="checkbox" name="out_customer" value="1" 
                <%
                  if (Request.Cookies("out_customer_2")<>"") then
                Response.write("checked")
                end if
                 %> />客户类别
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_id" value="1"
                <%
                  if (Request.Cookies("out_id_2")<>"") then
                Response.write("checked")
                end if
                 %> />证件号
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_name" value="1"
                <%
                  if (Request.Cookies("out_name_2")<>"") then
                Response.write("checked")
                end if
                 %> />姓名
            </label></div>
            <br><br><br>
2.卡片:<br> <div class="div_trade">
           <label>
                <input type="checkbox" name="out_card_num" value="1"
                <%
                  if (Request.Cookies("out_card_num_2")<>"") then
                Response.write("checked")
                end if
                 %> />卡号
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_root_card_num" value="1"
                <%
                  if (Request.Cookies("out_root_card_num_2")<>"") then
                Response.write("checked")
                end if
                 %> />根卡卡号
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_send_card_num" value="1"
                <%
                  if (Request.Cookies("out_send_card_num_2")<>"") then
                Response.write("checked")
                end if
                 %> />发卡序号
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_promotion" value="1"
                <%
                  if (Request.Cookies("out_promotion_2")<>"") then
                Response.write("checked")
                end if
                 %> />推广人姓名
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="out_is_new_card" value="1"
                <%
                  if (Request.Cookies("out_is_new_card_2")<>"") then
                Response.write("checked")
                end if
                 %> />是否最新卡
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="cloud_pay" value="1"
                <%
                  if (Request.Cookies("cloud_pay_2")<>"") then
                Response.write("checked")
                end if
                 %> />云闪付绑卡
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="card_product" value="1"
                <%
                  if (Request.Cookies("card_product_2")<>"") then
                Response.write("checked")
                end if
                 %> />卡产品
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="card_rank" value="1"
                <%
                  if (Request.Cookies("card_rank_2")<>"") then
                Response.write("checked")
                end if
                 %> />卡等级
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="card_state" value="1"
                <%
                  if (Request.Cookies("card_state_2")<>"") then
                Response.write("checked")
                end if
                 %> />卡片状态
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="send_card_time" value="1"
                <%
                  if (Request.Cookies("send_card_time_2")<>"") then
                Response.write("checked")
                end if
                 %> />发卡时间
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="active_card_time" value="1"
                <%
                  if (Request.Cookies("active_card_time_2")<>"") then
                Response.write("checked")
                end if
                 %> />激活时间
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="send_card_reason" value="1"
                <%
                  if (Request.Cookies("send_card_reason_2")<>"") then
                Response.write("checked")
                end if
                 %> />发卡原因
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="card_attached" value="1"
                <%
                  if (Request.Cookies("card_attached_2")<>"") then
                Response.write("checked")
                end if
                 %> />主附卡
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="active_card" value="1"
                <%
                  if (Request.Cookies("active_card_2")<>"") then
                Response.write("checked")
                end if
                 %> />激活卡
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="month_active" value="1"
                <%
                  if (Request.Cookies("month_active_2")<>"") then
                Response.write("checked")
                end if
                 %> />30天活跃卡
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="season_active" value="1"
                <%
                  if (Request.Cookies("season_active_2")<>"") then
                Response.write("checked")
                end if
                 %> />90天活跃卡
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="sleep_card" value="1"
                <%
                  if (Request.Cookies("sleep_card_2")<>"") then
                Response.write("checked")
                end if
                 %> />睡眠卡
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="effective_card" value="1"
                <%
                  if (Request.Cookies("effective_card_2")<>"") then
                Response.write("checked")
                end if
                 %> />有效卡
            </label></div>
            <br><br><br> <br><br><br><br>

3.交易:<br> 
<div class="div_trade">
           <label>
                <input type="checkbox" name="trade_money" value="1"
                <%
                  if (Request.Cookies("trade_money_2")<>"") then
                Response.write("checked")
                end if
                 %> />单笔交易金额
            </label>
</div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_points" value="1"
                <%
                  if (Request.Cookies("trade_points_2")<>"") then
                Response.write("checked")
                end if
                 %> />交易是否获得积分
            </label>
            </div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_online" value="1"
                <%
                  if (Request.Cookies("trade_online_2")<>"") then
                Response.write("checked")
                end if
                 %> />是否线上交易
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_abroad" value="1"
                <%
                  if (Request.Cookies("trade_abroad_2")<>"") then
                Response.write("checked")
                end if
                 %> />是否境外交易
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_cloud_pay" value="1"
                <%
                  if (Request.Cookies("trade_cloud_pay_2")<>"") then
                Response.write("checked")
                end if
                 %> />是否云闪付交易
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_types" value="1"
                <%
                  if (Request.Cookies("trade_types_2")<>"") then
                Response.write("checked")
                end if
                 %> />交易类型
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_types_detail" value="1"
                 <%
                  if (Request.Cookies("trade_types_detail_2")<>"") then
                Response.write("checked")
                end if
                 %> />细分交易类型
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_shop" value="1"
                <%
                  if (Request.Cookies("trade_shop_2")<>"") then
                Response.write("checked")
                end if
                 %> />商户类型
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_sum_money" value="1"
                <%
                  if (Request.Cookies("trade_sum_money_2")<>"") then
                Response.write("checked")
                end if
                 %> />交易金额累计条件
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_sum_counts" value="1"
                <%
                  if (Request.Cookies("trade_sum_counts_2")<>"") then
                Response.write("checked")
                end if
                 %> />交易笔数累计条件
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_date" value="1"
                <%
                  if (Request.Cookies("trade_date_2")<>"") then
                Response.write("checked")
                end if
                 %> />交易日期
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="trade_description" value="1"
                 <%
                  if (Request.Cookies("trade_description_2")<>"") then
                Response.write("checked")
                end if
                 %> />交易描述
            </label></div>
            <br><br><br><br>

4.账户:<br> 
<div class="div_trade">
           <label>
                <input type="checkbox" name="account_num" value="1"
                <%
                  if (Request.Cookies("account_num_2")<>"") then
                Response.write("checked")
                end if
                 %> />账号
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_bank" value="1"
                <%
                  if (Request.Cookies("account_bank_2")<>"") then
                Response.write("checked")
                end if
                 %> />分行号
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_state" value="1"
                <%
                  if (Request.Cookies("account_state_2")<>"") then
                Response.write("checked")
                end if
                 %> />账户状态
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_type" value="1"
                <%
                  if (Request.Cookies("account_type_2")<>"") then
                Response.write("checked")
                end if
                 %> />账户类别
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_open_date" value="1"
                <%
                  if (Request.Cookies("account_open_date_2")<>"") then
                Response.write("checked")
                end if
                 %> />开户日期
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_overdue" value="1"
                <%
                  if (Request.Cookies("account_overdue_2")<>"") then
                Response.write("checked")
                end if
                 %> />当前逾期期数
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_effective" value="1"
                <%
                  if (Request.Cookies("account_effective_2")<>"") then
                Response.write("checked")
                end if
                 %> />有效账户
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_overdraft" value="1"
                <%
                  if (Request.Cookies("account_overdraft_2")<>"") then
                Response.write("checked")
                end if
                 %> />当前透支金额
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_credits" value="1"
                <%
                  if (Request.Cookies("account_credits_2")<>"") then
                Response.write("checked")
                end if
                 %> />信用额度
            </label></div>
            <div class="div_trade">
            <label>
                <input type="checkbox" name="account_previous_bill" value="1"
                <%
                  if (Request.Cookies("account_previous_bill_2")<>"") then
                Response.write("checked")
                end if
                 %> />上期账单金额
            </label></div></div>
            <br><br><br>
  <br />
  <br />
  <br />
  <input type="submit" class="btn" value="提交" style="margin-left:600px;"></input>
</form>
</body>
  </div>
</html>
<!-- response.write(" " & Request.Form("lname")) -->