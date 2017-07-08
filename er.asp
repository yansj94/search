<!DOCTYPE html>
<html>
<head>
<title>
验证页面
</title>
<meta charset="gb2312">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="css.css" rel="stylesheet">
</head>
<body>
	
<div class="div_er">
<%
if (Request.Form("radiobutton")<>"")then
	response.write("你选择的性别是：")
	sex=Request.Form("radiobutton")
	response.write(sex)
	response.write("<br />")

	response.Cookies("radiobutton") = Request.Form("radiobutton")
else
response.Cookies("radiobutton")=""
end if
%>

<%
if (Request.Form("birthdaystart")<>"")then
	response.write("你选择的出生日期是：")
	birth1=Request.Form("birthdaystart")
	response.write(birth1)
	response.write("<br />")

	response.Cookies("birthdaystart") = Request.Form("birthdaystart")
else
response.write("你选择的出生开始日期默认为：1900-01-01")
birth1="1900-01-01"
response.write("<br />")
response.Cookies("birthdaystart")=""
end if
%>
<%
if (Request.Form("birthdayend")<>"")then
	response.write("你选择的终止日期是：")
	birth2=Request.Form("birthdayend")
	response.write(birth2)
	response.write("<br />")

	response.Cookies("birthdayend") = Request.Form("birthdayend")
else
response.write("你选择的出生终止日期默认为：")
response.write(Request.Form("today_day"))
birth2=Request.Form("today_day")
response.write("<br />")
response.Cookies("birthdayend")=""
end if
%>

<%
if (Request.Form("edu")<>"") then
	response.write("你选择的教育程度是：")
	edu=Request.Form("edu")
	response.write(edu)
	response.write("<br />")

	response.Cookies("edu") = Request.Form("edu")
else
response.Cookies("edu")=""
end if
%>

<%
if (Request.Form("user")<>"") then
	response.write("你输入的推广人姓名是：")
	user=Request.Form("user")
	response.write(user)
	response.write("<br />")

	response.Cookies("user") = Request.Form("user")
else
response.Cookies("user")=""
end if
%>

<%
if (Request.Form("id")<>"") then
	response.write("你输入的推广人编号是：")
	id=Request.Form("id")
	response.write(id)
	response.write("<br />")

	response.Cookies("id") = Request.Form("id")
else
response.Cookies("id")=""
end if
%>

<%
if (Request.Form("is_new")<>"") then
	response.write("是否最新卡：")
	is_new=Request.Form("is_new")
	response.write(is_new)
	response.write("<br />")

	response.Cookies("is_new") = Request.Form("is_new")
else
response.Cookies("is_new")=""
end if
%>

<%
if (Request.Form("is_bind")<>"") then
	response.write("云闪付绑卡：")
	is_bind=Request.Form("is_bind")
	response.write(is_bind)
	response.write("<br />")

	response.Cookies("is_bind") = Request.Form("is_bind")
else
response.Cookies("is_bind")=""
end if
%>

<%
if (Request.Form("card_product")<>"") then
	response.write("你选择的卡产品是：")
	card_product=Request.Form("card_product")
	response.write(card_product)
	response.write("<br />")

	response.Cookies("card_product") = Request.Form("card_product")
else
response.Cookies("card_product")=""
end if
%>

<%
if (Request.Form("card_rank")<>"") then
	response.write("你选择的卡等级是：")
	card_rank=Request.Form("card_rank")
	response.write(card_rank)
	response.write("<br />")

	response.Cookies("card_rank") = Request.Form("card_rank")
else
response.Cookies("card_rank")=""
end if
%>

<%
if (Request.Form("card_state")<>"") then
	response.write("你选择的卡片状态是：")
	card_state=Request.Form("card_state")
	response.write(card_state)
	response.write("<br />")

	response.Cookies("card_state") = Request.Form("card_state")
else
response.Cookies("card_state")=""
end if
%>

<%
if (Request.Form("send_card_time_start")<>"") then
	response.write("你选择的发卡开始时间：")
	send_card_time_start=Request.Form("send_card_time_start")
	response.write(send_card_time_start)
	response.write("<br />")

	response.Cookies("send_card_time_start") = Request.Form("send_card_time_start")
else
response.write("你选择的发卡开始日期默认为：1900-01-01")
send_card_time_start="1900-01-01"
response.write("<br />")
response.Cookies("send_card_time_start")=""
end if
%>

<%
if (Request.Form("send_card_time_end")<>"") then
	response.write("你选择的发卡结束时间：")
	send_card_time_end=Request.Form("send_card_time_end")
	response.write(send_card_time_end)
	response.write("<br />")

	response.Cookies("send_card_time_end") = Request.Form("send_card_time_end")
else
response.write("你选择的发卡终止日期默认为：")
response.write(Request.Form("today_day"))
send_card_time_end=Request.Form("today_day")
response.write("<br />")
response.Cookies("send_card_time_end")=""
end if
%>

<%
if (Request.Form("active_card_time_start")<>"") then
	response.write("你选择的激活卡开始时间：")
	active_card_time_start=Request.Form("active_card_time_start")
	response.write(active_card_time_start)
	response.write("<br />")

	response.Cookies("active_card_time_start") = Request.Form("active_card_time_start")
else
response.write("你选择的激活开始日期默认为：1900-01-01")
active_card_time_start="1900-01-01"
response.write("<br />")
response.Cookies("active_card_time_start")=""
end if
%>

<%
if (Request.Form("active_card_time_end")<>"") then
	response.write("你选择的激活卡结束时间：")
	active_card_time_end=Request.Form("active_card_time_end")
	response.write(active_card_time_end)
	response.write("<br />")

	response.Cookies("active_card_time_end") = Request.Form("active_card_time_end")
else
response.write("你选择的激活终止日期默认为：")
response.write(Request.Form("today_day"))
active_card_time_end=Request.Form("today_day")
response.write("<br />")
response.Cookies("active_card_time_end")=""
end if
%>

<%
if (Request.Form("card_reason")<>"") then
	response.write("你选择的发卡原因是：")
	card_reason=Request.Form("card_reason")
	response.write(card_reason)
	response.write("<br />")

	response.Cookies("card_reason") = Request.Form("card_reason")
else
response.Cookies("card_reason")=""
end if
%>

<%
if (Request.Form("attached_card")<>"") then
	response.write("你选择的主副卡是：")
	attached_card=Request.Form("attached_card")
	response.write(attached_card)
	response.write("<br />")

	response.Cookies("attached_card") = Request.Form("attached_card")
else
response.Cookies("attached_card")=""
end if
%>

<%
if (Request.Form("active_card")<>"") then
	response.write("你选择是否激活卡：")
	active_card=Request.Form("active_card")
	response.write(active_card)
	response.write("<br />")

	response.Cookies("active_card") = Request.Form("active_card")
else
response.Cookies("active_card")=""
end if
%>

<%
if (Request.Form("month_active")<>"") then
	response.write("你选择是否30天活跃卡：")
	month_active=Request.Form("month_active")
	response.write(month_active)
	response.write("<br />")

	response.Cookies("month_active") = Request.Form("month_active")
else
response.Cookies("month_active")=""
end if
%>

<%
if (Request.Form("season_active")<>"") then
	response.write("你选择是否90天活跃卡：")
	season_active=Request.Form("season_active")
	response.write(season_active)
	response.write("<br />")

	response.Cookies("season_active") = Request.Form("season_active")
else
response.Cookies("season_active")=""
end if
%>

<%
if (Request.Form("sleep_card")<>"") then
	response.write("你选择是否睡眠卡：")
	sleep_card=Request.Form("sleep_card")
	response.write(sleep_card)
	response.write("<br />")

	response.Cookies("sleep_card") = Request.Form("sleep_card")
else
response.Cookies("sleep_card")=""
end if
%>

<%
if (Request.Form("effective_card")<>"") then
	response.write("你选择是否有效卡：")
	effective_card=Request.Form("effective_card")
	response.write(effective_card)
	response.write("<br />")

	response.Cookies("effective_card") = Request.Form("effective_card")
else
response.Cookies("effective_card")=""
end if
%>

<%
if (Request.Form("trade_time_start")<>"") then
	response.write("你选择的交易开始时间：")
	trade_time_start=Request.Form("trade_time_start")
	response.write(trade_time_start)
	response.write("<br />")

	response.Cookies("trade_time_start") = Request.Form("trade_time_start")
else
response.write("你选择的交易开始日期默认为：1900-01-01")
trade_time_start="1900-01-01"
response.write("<br />")
response.Cookies("trade_time_start")=""
end if
%>

<%
if (Request.Form("trade_time_end")<>"") then
	response.write("你选择的交易结束时间：")
	trade_time_end=Request.Form("trade_time_end")
	response.write(trade_time_end)
	response.write("<br />")

	response.Cookies("trade_time_end") = Request.Form("trade_time_end")
else
response.write("你选择的交易结束日期默认为：")
response.write(Request.Form("today_day"))
trade_time_end=Request.Form("today_day")
response.write("<br />")
response.Cookies("trade_time_end")=""
end if
%>

<%
if (Request.Form("money_bottom")<>"") then
	response.write("你输入的单笔金额下限是：")
	money_bottom=Request.Form("money_bottom")
	response.write(money_bottom)
	response.write("<br />")

	response.Cookies("money_bottom") = Request.Form("money_bottom")
else
response.Cookies("money_bottom")=""
end if
%>

<%
if (Request.Form("money_top")<>"") then
	response.write("你输入的单笔金额上限是：")
	money_top=Request.Form("money_top")
	response.write(money_top)
	response.write("<br />")

	response.Cookies("money_top") = Request.Form("money_top")
else
response.Cookies("money_top")=""
end if
%>

<%
if (Request.Form("trade_points")<>"") then
	response.write("你输入的是否有积分：")
	trade_points=Request.Form("trade_points")
	response.write(trade_points)
	response.write("<br />")

	response.Cookies("trade_points") = Request.Form("trade_points")
else
response.Cookies("trade_points")=""
end if
%>

<%
if (Request.Form("online")<>"") then
	response.write("你输入的是否线上：")
	online=Request.Form("online")
	response.write(online)
	response.write("<br />")

	response.Cookies("online") = Request.Form("online")
else
response.Cookies("online")=""
end if
%>


<%
if (Request.Form("abroad")<>"") then
	response.write("你输入的是否境外：")
	abroad=Request.Form("abroad")
	response.write(abroad)
	response.write("<br />")

	response.Cookies("abroad") = Request.Form("abroad")
else
response.Cookies("abroad")=""
end if
%>

<%
if (Request.Form("cloud_pay")<>"") then
	response.write("你输入的是否云闪付：")
	cloud_pay=Request.Form("cloud_pay")
	response.write(cloud_pay)
	response.write("<br />")

	response.Cookies("cloud_pay") = Request.Form("cloud_pay")
else
response.Cookies("cloud_pay")=""
end if
%>

<%
if (Request.Form("trade_type")<>"") then
	response.write("你选择的交易类型是：")
	trade_type=Request.Form("trade_type")
	response.write(trade_type)
	response.write("<br />")

	response.Cookies("trade_type") = Request.Form("trade_type")
else
response.Cookies("trade_type")=""
end if
%>

<%
if (Request.Form("textarea")<>"") then
	response.write("你输入的细分交易类型是：")
	textarea=Request.Form("textarea")
	response.write(textarea)
	response.write("<br />")

	response.Cookies("textarea") = Request.Form("textarea")
else
response.Cookies("textarea")=""
end if
%>

<%
if (Request.Form("textarea2")<>"") then
	response.write("你输入的商户类型是：")
	textarea2=Request.Form("textarea2")
	response.write(textarea2)
	response.write("<br />")

	response.Cookies("textarea2") = Request.Form("textarea2")
else
response.Cookies("textarea2")=""
end if
%>



<%
if (Request.Form("sum_money")<>"") then
	response.write("你输入的累计金额是：")
	sum_money=Request.Form("sum_money")
	response.write(sum_money)
	response.write("<br />")

	response.Cookies("sum_money") = Request.Form("sum_money")
else
response.Cookies("sum_money")=""
end if
%>

<%
if (Request.Form("sum_times")<>"") then
	response.write("你输入的累计笔数是：")
	sum_times=Request.Form("sum_times")
	response.write(sum_times)
	response.write("<br />")

	response.Cookies("sum_times") = Request.Form("sum_times")
else
response.Cookies("sum_times")=""
end if
%>

<%
if (Request.Form("bank_number")<>"") then
	response.write("你选择的分行是：")
	bank_number=Request.Form("bank_number")
	response.write(bank_number)
	response.write("<br />")

	response.Cookies("bank_number") = Request.Form("bank_number")
else
response.Cookies("bank_number")=""
end if
%>

<%
if (Request.Form("account_state")<>"") then
	response.write("你选择的账户状态是：")
	account_state=Request.Form("account_state")
	response.write(account_state)
	response.write("<br />")

	response.Cookies("account_state") = Request.Form("account_state")
else
response.Cookies("account_state")=""
end if
%>

<%
if (Request.Form("account_class")<>"") then
	response.write("你选择的账户类别是：")
	account_class=Request.Form("account_class")
	response.write(account_class)
	response.write("<br />")

	response.Cookies("account_class") = Request.Form("account_class")
else
response.Cookies("account_class")=""
end if
%>

<%
if (Request.Form("open_account_time_start")<>"") then
	response.write("你选择的开户开始日期是：")
	open_account_time_start=Request.Form("open_account_time_start")
	response.write(open_account_time_start)
	response.write("<br />")

	response.Cookies("open_account_time_start") = Request.Form("open_account_time_start")
else
response.write("你选择的开户开始日期默认为：1900-01-01")
open_account_time_start="1900-01-01"
response.write("<br />")
response.Cookies("open_account_time_start")=""
end if
%>

<%
if (Request.Form("open_account_time_end")<>"") then
	response.write("你选择的开户结束日期是：")
	open_account_time_end=Request.Form("open_account_time_end")
	response.write(open_account_time_end)
	response.write("<br />")

	response.Cookies("open_account_time_end") = Request.Form("open_account_time_end")
else
response.write("你选择的开户终止日期默认为：")
response.write(Request.Form("today_day"))
open_account_time_end=Request.Form("today_day")
response.write("<br />")
response.Cookies("open_account_time_end")=""
end if
%>

<%
if (Request.Form("overdue_num_bottom")<>"") then
	response.write("你选择的当前逾期期数最低数：")
	overdue_num_bottom=Request.Form("overdue_num_bottom")
	response.write(overdue_num_bottom)
	response.write("<br />")

	response.Cookies("overdue_num_bottom") = Request.Form("overdue_num_bottom")
else
response.Cookies("overdue_num_bottom")=""
end if
%>

<%
if (Request.Form("overdue_num_top")<>"") then
	response.write("你输入的当前逾期期数最高数：")
	overdue_num_top=Request.Form("overdue_num_top")
	response.write(overdue_num_top)
	response.write("<br />")

	response.Cookies("overdue_num_top") = Request.Form("overdue_num_top")
else
response.Cookies("overdue_num_top")=""
end if
%>

<%
if (Request.Form("effective_account")<>"") then
	response.write("是否有效账户：")
	effective_account=Request.Form("effective_account")
	response.write(effective_account)
	response.write("<br />")

	response.Cookies("effective_account") = Request.Form("effective_account")
else
response.Cookies("effective_account")=""
end if
%>




<%
if (Request.Form("overdraft_bottom")<>"") then
	response.write("你输入的当前透支余额下限：")
	overdraft_bottom=Request.Form("overdraft_bottom")
	response.write(overdraft_bottom)
	response.write("<br />")

	response.Cookies("overdraft_bottom") = Request.Form("overdraft_bottom")
else
response.Cookies("overdraft_bottom")=""
end if
%>

<%
if (Request.Form("overdraft_top")<>"") then
	response.write("你输入的当前透支余额上限：")
	overdraft_top=Request.Form("overdraft_top")
	response.write(overdraft_top)
	response.write("<br />")

	response.Cookies("overdraft_top") = Request.Form("overdraft_top")
else
response.Cookies("overdraft_top")=""
end if
%>

<%
if (Request.Form("credits_bottom")<>"") then
	response.write("你输入的信用额度下限：")
	credits_bottom=Request.Form("credits_bottom")
	response.write(credits_bottom)
	response.write("<br />")

	response.Cookies("credits_bottom") = Request.Form("credits_bottom")
else
response.Cookies("credits_bottom")=""
end if
%>

<%
if (Request.Form("credits_top")<>"") then
	response.write("你输入的信用额度上限：")
	credits_top=Request.Form("credits_top")
	response.write(credits_top)
	response.write("<br />")

	response.Cookies("credits_top") = Request.Form("credits_top")
else
response.Cookies("credits_top")=""
end if
%>

<%
if (Request.Form("previous_bill_bottom")<>"") then
	response.write("你输入的上期账单金额下限：")
	previous_bill_bottom=Request.Form("previous_bill_bottom")
	response.write(previous_bill_bottom)
	response.write("<br />")

	response.Cookies("previous_bill_bottom") = Request.Form("previous_bill_bottom")
else
response.Cookies("previous_bill_bottom")=""
end if
%>

<%
if (Request.Form("previous_bill_top")<>"") then
	response.write("你输入的上期账单金额上限：")
	previous_bill_top=Request.Form("previous_bill_top")
	response.write(previous_bill_top)
	response.write("<br />")

	response.Cookies("previous_bill_top") = Request.Form("previous_bill_top")
else
response.Cookies("previous_bill_top")=""
end if
%>

<%
if (Request.Form("radiobutton1")<>"") then
	response.write("你输入的分组条件是：")
	radiobutton1=Request.Form("radiobutton1")
	response.write(radiobutton1)
	response.write("<br />")

	response.Cookies("radiobutton1") = Request.Form("radiobutton1")
else
response.Cookies("radiobutton1")=""
end if
%>

<%
if (Request.Form("a1")<>"") then
	response.write("你输入的分组1下限是：")
	a1=Request.Form("a1")
	response.write(a1)
	response.write("<br />")

	response.Cookies("a1") = Request.Form("a1")
else
response.Cookies("a1")=""
end if
%>

<%
if (Request.Form("a2")<>"") then
	response.write("你输入的分组1上限是：")
	a2=Request.Form("a2")
	response.write(a2)
	response.write("<br />")

	response.Cookies("a2") = Request.Form("a2")
else
response.Cookies("a2")=""
end if
%>

<%
if (Request.Form("b1")<>"") then
	response.write("你输入的分组2下限是：")
	b1=Request.Form("b1")
	response.write(b1)
	response.write("<br />")

	response.Cookies("b1") = Request.Form("b1")
else
response.Cookies("b1")=""
end if
%>

<%
if (Request.Form("b2")<>"") then
	response.write("你输入的分组2上限是：")
	b2=Request.Form("b2")
	response.write(b2)
	response.write("<br />")

	response.Cookies("b2") = Request.Form("b2")
else
response.Cookies("b2")=""
end if
%>

<%
if (Request.Form("c1")<>"") then
	response.write("你输入的分组3下限是：")
	c1=Request.Form("c1")
	response.write(c1)
	response.write("<br />")

	response.Cookies("c1") = Request.Form("c1")
else
response.Cookies("c1")=""
end if
%>


<%
if (Request.Form("c2")<>"") then
	response.write("你输入的分组3上限是：")
	c2=Request.Form("c2")
	response.write(c2)
	response.write("<br />")

	response.Cookies("c2") = Request.Form("c2")
else
response.Cookies("c2")=""
end if
%>

<%
if (Request.Form("d1")<>"") then
	response.write("你输入的分组4下限是：")
	d1=Request.Form("d1")
	response.write(d1)
	response.write("<br />")

	response.Cookies("d1") = Request.Form("d1")
else
response.Cookies("d1")=""
end if
%>

<%
if (Request.Form("d2")<>"") then
	response.write("你输入的分组4上限是：")
	d2=Request.Form("d2")
	response.write(d2)
	response.write("<br />")

	response.Cookies("d2") = Request.Form("d2")
else
response.Cookies("d2")=""
end if
%>

<%
if (Request.Form("e1")<>"") then
	response.write("你输入的分组5下限是：")
	e1=Request.Form("e1")
	response.write(e1)
	response.write("<br />")

	response.Cookies("e1") = Request.Form("e1")
else
response.Cookies("e1")=""
end if
%>

<%
if (Request.Form("e2")<>"") then
	response.write("你输入的分组5下限是：")
	e2=Request.Form("e2")
	response.write(e2)
	response.write("<br />")

	response.Cookies("e2") = Request.Form("e2")
else
response.Cookies("e2")=""
end if
%>

<%
if (Request.Form("money")<>"") then
	response.write("你选择的汇总属性是：")
	money=Request.Form("money")
	response.write(money)
	response.write("<br />")

	response.Cookies("money") = Request.Form("money")
else
response.Cookies("money")=""
end if
%>


<form name="form2" method="post" action="third.asp">
  <div type="" style="border:1px solid red;display:none;">
   <input name="sex"  value="<% response.write(sex) %>"> </input>
   <br />
   <input name="birth1"  value="<% response.write(birth1) %>"> </input>
   <br />
   <input name="birth2"  value="<% response.write(birth2) %>"> </input>
   <br />
   <input name="edu"  value="<% response.write(edu) %>"> </input>
   <br />
   <input name="user" value="<% response.write(user) %>"> </input>
   <br />
   <input name="id" value="<% response.write(id) %>"> </input>
   <br />
   <input name="is_new"  value="<% response.write(is_new) %>"> </input>
   <br />
   <input name="is_bind"  value="<% response.write(is_bind) %>"> </input>
   <br />
   <input name="card_product"  value="<% response.write(card_product) %>"> </input>
   <br />
   <input name="card_rank" value="<% response.write(card_rank) %>"> </input>
   <br />
   <input name="card_state" value="<% response.write(card_state) %>"> </input>
   <br />
   <input name="send_card_time_start" value="<% response.write(send_card_time_start) %>"> </input>
   <br />
   <input name="send_card_time_end" value="<% response.write(send_card_time_end) %>"> </input>
   <br />
   <input name="active_card_time_start" value="<% response.write(active_card_time_start) %>"> </input>
   <br />
   <input name="active_card_time_end" value="<% response.write(active_card_time_end) %>"> </input>
   <br />
   <input name="card_reason" value="<% response.write(card_reason) %>"> </input>
   <br />
   <input name="attached_card" value="<% response.write(attached_card) %>"> </input>
   <br />
   <input name="active_card" value="<% response.write(active_card) %>"> </input>
   <br />
   <input name="month_active" value="<% response.write(month_active) %>"> </input>
   <br />
   <input name="season_active" value="<% response.write(season_active) %>"> </input>
   <br />
   <input name="sleep_card" value="<% response.write(sleep_card) %>"> </input>
   <br />
    <input name="effective_card" value="<% response.write(effective_card) %>"> </input>
   <br />
   <input name="trade_time_start" value="<% response.write(trade_time_start) %>"> </input>
   <br />
   <input name="trade_time_end" value="<% response.write(trade_time_end) %>"> </input>
   <br />
   <input name="money_bottom" value="<% response.write(money_bottom) %>"> </input>
   <br />
    <input name="money_top" value="<% response.write(money_top) %>"> </input>
   <br />
    <input name="trade_points" value="<% response.write(trade_points) %>"> </input>
   <br />
    <input name="online" value="<% response.write(online) %>"> </input>
   <br />
    <input name="abroad" value="<% response.write(abroad) %>"> </input>
   <br />
   <input name="cloud_pay" value="<% response.write(cloud_pay) %>"> </input>
   <br />
   <input name="trade_type" value="<% response.write(trade_type) %>"> </input>
   <br />
    <input name="textarea" value="<% response.write(textarea) %>"> </input>
   <br />
   <input name="textarea2" value="<% response.write(textarea2) %>"> </input>
   <br />
   <input name="sum_money" value="<% response.write(sum_money) %>"> </input>
   <br />
   <input name="sum_times" value="<% response.write(sum_times) %>"> </input>
   <br />
    <input name="bank_number" value="<% response.write(bank_number) %>"> </input>
   <br />
   <input name="account_class" value="<% response.write(account_class) %>"> </input>
   <br />
   <input name="open_account_time_start" value="<% response.write(open_account_time_start) %>"> </input>
   <br />
    <input name="open_account_time_end" value="<% response.write(open_account_time_end) %>"> </input>
   <br />
    <input name="overdue_num_bottom" value="<% response.write(overdue_num_bottom) %>"> </input>
   <br />
   <input name="overdue_num_top" value="<% response.write(overdue_num_top) %>"> </input>
   <br />
   <input name="effective_account" value="<% response.write(effective_account) %>"> </input>
   <br />
   <input name="overdraft_bottom" value="<% response.write(overdraft_bottom) %>"> </input>
   <br />
    <input name="overdraft_top" value="<% response.write(overdraft_top) %>"> </input>
   <br />
    <input name="credits_bottom" value="<% response.write(credits_bottom) %>"> </input>
   <br />
   <input name="credits_top" value="<% response.write(credits_top) %>"> </input>
   <br />
   <input name="previous_bill_bottom" value="<% response.write(previous_bill_bottom) %>"> </input>
   <br />
    <input name="previous_bill_top" value="<% response.write(previous_bill_top) %>"> </input>
   <br />
   <input name="radiobutton1" value="<% response.write(radiobutton1) %>"> </input>
   <br />
    <input name="a1" value="<% response.write(a1) %>"> </input>
   <br />
   <input name="a2" value="<% response.write(a2) %>"> </input>
   <br />
   <input name="b1" value="<% response.write(b1) %>"> </input>
   <br />
    <input name="b2" value="<% response.write(b2) %>"> </input>
   <br />
   <input name="c1" value="<% response.write(c1) %>"> </input>
   <br />
   <input name="c2" value="<% response.write(c2) %>"> </input>
   <br />
   <input name="d1" value="<% response.write(d1) %>"> </input>
   <br />
   <input name="d2" value="<% response.write(d2) %>"> </input>
   <br />
   <input name="e1" value="<% response.write(e1) %>"> </input>
   <br />
   <input name="e2" value="<% response.write(e2) %>"> </input>
   <br />
   <input name="money" value="<% response.write(money) %>"> </input>
   <br />
</div>

 <br />

<input type="button" class="btn"  onclick="self.location=document.referrer;"  value=返回上一步>
<input type="submit" class="btn" value="下一步"></input>
</form>
</div>
</body>

</html>
<!-- response.write(" " & Request.Form("lname")) -->