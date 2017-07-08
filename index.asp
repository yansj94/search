<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="gb2312">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个性化查询页面</title>
    <link href="css1.css" rel="stylesheet">
</head>
<script>
  function showCustomer(){
		if (window.XMLHttpRequest)
		{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
		}
		else
		{// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
		document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
		}
		}
		m="hello m";
		xmlhttp.open("GET","getcustomer2.asp?m="+m,true);
		xmlhttp.send();
}
</script>
<body>


  <div id="div">
  <div>
  <button class="btn" type="button" id="button1">1.客户选项</button>
  <button class="btn" type="button" id="button2">2.卡片选项</button>
  <button class="btn" type="button" id="button3">3.交易选项</button>
  <button class="btn" type="button" id="button4">4.账户选项</button>
  <button class="btn" type="button" id="button5">5.查看明细</button>
  <button class="btn" type="button" id="button7">显示全部</button> 
  </div>

  <div id="Layer1" > 
  <form id="form1" name="form1" method="post" action="er.asp" onsubmit="return bottom_top();">
    <label><br />
    1.客户<br />
    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</label>&nbsp;&nbsp;&nbsp;&nbsp;
    <label>
    <input type="radio" name="radiobutton" value="M" 
    <%
      if (Request.Cookies("radiobutton")="M") then
      Response.write("checked")
      end if
     %>/>
    男</label>
    <label></label>
    <label>
    <input type="radio" name="radiobutton" value="F" 
    <%
      if (Request.Cookies("radiobutton")="F") then
      Response.write("checked")
      end if
     %>/>
    女</label>
    <label>
    <input type="radio" name="radiobutton" value="0" 
    <%
      if (Request.Cookies("radiobutton")="0") then
      Response.write("checked")
      end if
     %>/>
    不限</label><br>
    <br>
  <!--/form-->
  <!--form id="form1" name="form2" method="post" action=""-->
    <label>出生日期: </label>&nbsp;&nbsp;
    <label>开始
   <input type="text" class="Wdate" id="birthdaystart"  onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'birthdayend\')}'}) " name="birthdaystart" value="<%if (Request.Cookies("birthdaystart")<>"") then Response.write(Request.Cookies("birthdaystart")) end if%>"/>
    </label>&nbsp;&nbsp;&nbsp;&nbsp;
    <label>结束
    <input  type="text" class="Wdate" id="birthdayend"  onFocus="WdatePicker({minDate:'#F{$dp.$D(\'birthdaystart\')}'})" name="birthdayend" value="<%if (Request.Cookies("birthdayend")<>"") then Response.write(Request.Cookies("birthdayend")) end if%>"
       />
    </label>
    <label><br />
    <br />
    教育程度: </label>
    <label>&nbsp;&nbsp;
    <input type="checkbox" name="edu" value="1" 
    <%
      if instr(Request.Cookies("edu"),"1")  then
      Response.write("checked")
      end if
     %>
    />
    初中及以下</label>
    <label>
    <input type="checkbox" name="edu" value="2"
    <%
      if instr(Request.Cookies("edu"),"2")  then
      Response.write("checked")
      end if
     %> />
高中及以下</label>

<label>
<input type="checkbox" name="edu" value="3" 
<%
      if instr(Request.Cookies("edu"),"3")  then
      Response.write("checked")
      end if
     %>
/>
大专</label>
<label>
<input type="checkbox" name="edu" value="4"
<%
      if instr(Request.Cookies("edu"),"4")  then
      Response.write("checked")
      end if
     %> />
本科</label>
<label>
<input type="checkbox" name="edu" value="5" 
<%
      if instr(Request.Cookies("edu"),"5")  then
      Response.write("checked")
      end if
%>/>
硕士</label>
<label>
<input type="checkbox" name="edu" value="6" 
<%
      if instr(Request.Cookies("edu"),"6")  then
      Response.write("checked")
      end if
 %>/>
博士及以上</label>
<label>
<input type="checkbox" name="edu" value="7" 
<%
      if instr(Request.Cookies("edu"),"7")  then
      Response.write("checked")
      end if
     %>/>
未知 </label>
  <!--/form-->

  
</div>
<div id="Layer2">
  <!--form action="" method="post" enctype="multipart/form-data" name="form3" id="form1"-->
    <label><br />
    2.卡片<br />
    推广人姓名:</label>&nbsp;&nbsp;
    <input type="text" name="user" placeholder="请输入" onkeyup="this.value=this.value.replace(/，/g,'')" onafterpaste="this.value=this.value.replace(/，/g,'')" value="<%
      if (Request.Cookies("user")<>"") then
      Response.write(Request.Cookies("user"))
      end if
     %>"/>&nbsp;&nbsp;   
    推广人编号:&nbsp;&nbsp;<input type="text" name="id" placeholder="请输入" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" value="<%
      if (Request.Cookies("id")<>"") then
      Response.write(Request.Cookies("id"))
      end if
     %>"/>
    <p> 
      <label>是否最新卡:&nbsp;&nbsp;
      <input type="checkbox" name="is_new" value="1" 
      <%
      if (Request.Cookies("is_new")<>"") then
      Response.write("checked")
      end if
     %> />是
      </label>
    </p>
    <p>云闪付绑卡:&nbsp;&nbsp;
      <input type="checkbox" name="is_bind" value="1" 
      <%
      if instr(Request.Cookies("is_bind"),"1")  then
      Response.write("checked")
      end if
     %>/>
      已绑定

      <label>
      <input type="checkbox" name="is_bind" value="2" 
     <%
      if instr(Request.Cookies("is_bind"),"2")  then
      Response.write("checked")
      end if
     %> />
      未绑定</label>
     
    </p>


<p>
<label>卡&nbsp;&nbsp;产&nbsp;&nbsp;品&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" name="card_product" placeholder="请输入" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" value="<%
      if (Request.Cookies("card_product")<>"") then
      Response.write(Request.Cookies("card_product"))
      end if
     %>"/> </label>
    </p>
<p>
<label>卡&nbsp;&nbsp;等&nbsp;&nbsp;级&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" name="card_rank" placeholder="请输入" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" value="<%
      if (Request.Cookies("card_rank")<>"") then
      Response.write(Request.Cookies("card_rank"))
      end if
     %>"/> </label>
</p>

<p>
<label>卡&nbsp;&nbsp;状&nbsp;&nbsp;态&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" name="card_state" placeholder="请输入" onkeyup="this.value=this.value.replace(/，/g,'')" onafterpaste="this.value=this.value.replace(/，/g,'')" value="<%
      if (Request.Cookies("card_state")<>"") then
      Response.write(Request.Cookies("card_state"))
      end if
     %>"/>   </label>
</p>
</p>
    发&nbsp;卡&nbsp;时&nbsp;间:&nbsp;&nbsp;&nbsp;开始
    <%Response.write(Request.Cookies("open_account_time_end"))%>
    <input type="text" class="Wdate" id="send_card_time_start" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'send_card_time_end\')}'})" name="send_card_time_start" value="<%if (Request.Cookies("send_card_time_start")<>"") then Response.write(Request.Cookies("send_card_time_start")) end if%>"/>
    &nbsp;&nbsp;结束
    <input type="text" class="Wdate" id="send_card_time_end" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'send_card_time_start\')}'})" name="send_card_time_end" value="<%if (Request.Cookies("send_card_time_end")<>"") then Response.write(Request.Cookies("send_card_time_end")) end if%>"
      />
    <br />
    <br />
    激&nbsp;活&nbsp;时&nbsp;间:&nbsp;&nbsp;&nbsp;开始
    <input type="text" class="Wdate" id="active_card_time_start" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'active_card_time_end\')}'})" name="active_card_time_start" value="<%if (Request.Cookies("active_card_time_start")<>"") then Response.write(Request.Cookies("active_card_time_start")) end if%>"/>
    &nbsp;&nbsp;结束
    <input type="text" class="Wdate" id="active_card_time_end" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'active_card_time_start\')}'})" name="active_card_time_end" value="<%if (Request.Cookies("active_card_time_end")<>"") then Response.write(Request.Cookies("active_card_time_end")) end if%>"
    />
    <br />
    <br />
<label>发&nbsp;卡&nbsp;原&nbsp;因:&nbsp;&nbsp;&nbsp;<input type="text" name="card_reason" placeholder="请输入" onkeyup="this.value=this.value.replace(/，/g,'')" onafterpaste="this.value=this.value.replace(/，/g,'')" value="<%
      if (Request.Cookies("card_reason")<>"") then
      Response.write(Request.Cookies("card_reason"))
      end if
     %>"/>  
</label>

    <p>主&nbsp;&nbsp;附&nbsp;&nbsp;卡&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="attached_card" value="1" 
      <%
      if instr(Request.Cookies("attached_card"),"1")  then
      Response.write("checked")
      end if
     %>/>
      主卡
      <label>&nbsp;&nbsp;
      <input type="checkbox" name="attached_card" value="2" 
      <%
      if instr(Request.Cookies("attached_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      附卡</label>
      <label></label>
    </p>
    <p>激&nbsp;&nbsp;活&nbsp;&nbsp;卡&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="active_card" value="1" 
      <%
      if instr(Request.Cookies("active_card"),"1")  then
      Response.write("checked")
      end if
      %>/>
      激活
      <label>&nbsp;&nbsp;
      <input type="checkbox" name="active_card" value="2" 
      <%
      if instr(Request.Cookies("active_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      未激活</label>
    </p>
    <p>30天活跃卡:
      <label>&nbsp;
      <input type="checkbox" name="month_active" value="1" 
      <%
      if instr(Request.Cookies("month_active"),"1")  then
      Response.write("checked")
      end if
     %>/>
      30天活跃卡</label>
      <label>
      <input type="checkbox" name="month_active" value="2" 
      <%
      if instr(Request.Cookies("month_active"),"2")  then
      Response.write("checked")
      end if
     %>/>
      非30天活跃卡</label>
    </p>
    <p>90天活跃卡:
      <label>&nbsp;
      <input type="checkbox" name="season_active" value="1"
      <%
      if instr(Request.Cookies("season_active"),"1")  then
      Response.write("checked")
      end if
     %>/>
90天活跃卡</label>
      <label>
      <input type="checkbox" name="season_active" value="2" 
      <%
      if instr(Request.Cookies("season_active"),"2")  then
      Response.write("checked")
      end if
     %>/>
非90天活跃卡</label>
</p>
    <p>睡&nbsp;&nbsp;眠&nbsp;&nbsp;卡&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="sleep_card" value="1" 
      <%
      if instr(Request.Cookies("sleep_card"),"1")  then
      Response.write("checked")
      end if
     %>/>
      睡眠卡</label>&nbsp;&nbsp;
      <input type="checkbox" name="sleep_card" value="2" 
      <%
      if instr(Request.Cookies("sleep_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      非睡眠卡</label>
    </p>
    <p>有&nbsp;&nbsp;效&nbsp;&nbsp;卡&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="effective_card" value="1" 
      <%
      if instr(Request.Cookies("effective_card"),"1")  then
      Response.write("checked")
      end if
     %>/>
      有效卡</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="effective_card" value="2" 
      <%
      if instr(Request.Cookies("effective_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      非有效卡</label>
    </p></div>
	<div id="Layer3">
    <label><br />
    3.交易<br />
   交&nbsp;易&nbsp;时&nbsp;间&nbsp;段&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;开始</label>
      <input type="text" id="trade_time_start" class="Wdate" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'trade_time_end\')}'})" name="trade_time_start" value="<%if (Request.Cookies("trade_time_start")<>"") then Response.write(Request.Cookies("trade_time_start")) end if%>"/>
      </label>&nbsp;&nbsp;
      <label>结束
      <input type="text" id="trade_time_end" class="Wdate" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'trade_time_start\')}'})" name="trade_time_end" value="<%if (Request.Cookies("trade_time_end")<>"") then Response.write(Request.Cookies("trade_time_end")) end if%>"
      id="<%if (Request.Cookies("trade_time_end")="") then Response.write("trade_time_end") end if%>"
    />
    </label>
    </p>
    <p>单笔交易金额&nbsp;&nbsp;: &nbsp;&nbsp;
      <label>下限
      <input type="text" name="money_bottom" id="money_bottom" placeholder="0" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
      value="<%
        if (Request.Cookies("money_bottom")<>"") then
        Response.write(Request.Cookies("money_bottom"))
        end if
       %>" />   
      </label>&nbsp;&nbsp;
      <label>上限
      <input type="text" name="money_top" id="money_top" placeholder="99999" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
      value="<%
        if (Request.Cookies("money_top")<>"") then
        Response.write(Request.Cookies("money_top"))
        end if
       %>" />  
      </label><span id="money_errMsg" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
    </p>
    <p>交易是否有积分:
      <label>&nbsp;
      <input type="checkbox" name="trade_points" value="1"
      <%
      if instr(Request.Cookies("trade_points"),"1")  then
      Response.write("checked")
      end if
     %>/>
      有积分</label>
      <label>
      <input type="checkbox" name="trade_points" value="2" 
      <%
      if instr(Request.Cookies("trade_points"),"2")  then
      Response.write("checked")
      end if
     %>/>
      无积分</label>
    </p>
    <!--<p>是否消费
      <label>
      <input type="checkbox" name="checkbox222" value="checkbox" />
      消费
      </label>
      <label>
      <input type="checkbox" name="checkbox232" value="checkbox" />
      取现转账
      </label>
</p>-->
    <p>是&nbsp;否&nbsp;线&nbsp;上&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
      <label>&nbsp;&nbsp;
      <input type="checkbox" name="online" value="1" 
      <%
      if instr(Request.Cookies("online"),"1")  then
      Response.write("checked")
      end if
     %>/>
      线上</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="online" value="2" 
      <%
      if instr(Request.Cookies("online"),"2")  then
      Response.write("checked")
      end if
     %>/>
      非线上</label>
    </p>
    <p>是&nbsp;否&nbsp;境&nbsp;外&nbsp;&nbsp;:&nbsp;&nbsp;
      <label>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="abroad" value="1" 
      <%
      if instr(Request.Cookies("abroad"),"1")  then
      Response.write("checked")
      end if
     %>/>
      境内</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="abroad" value="2" 
      <%
      if instr(Request.Cookies("abroad"),"2")  then
      Response.write("checked")
      end if
     %>/>
      境外</label>
    </p>
    <p>是否云闪付&nbsp;:
      <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="cloud_pay" value="1" 
      <%
      if instr(Request.Cookies("cloud_pay"),"1")  then
      Response.write("checked")
      end if
     %>/>
      云闪付</label>
      <label>
      <input type="checkbox" name="cloud_pay" value="2" 
      <%
      if instr(Request.Cookies("cloud_pay"),"2")  then
      Response.write("checked")
      end if
     %>/>
      非云闪付</label>
    </p>
<label>交&nbsp;易&nbsp;类&nbsp;型&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="trade_type" placeholder="请输入" onkeyup="this.value=this.value.replace(/，/g,'')" onafterpaste="this.value=this.value.replace(/，/g,'')" value="<%
      if (Request.Cookies("trade_type")<>"") then
      Response.write(Request.Cookies("trade_type"))
      end if
     %>"/>  
</label>
    <p>细分交易类型:
      <label>&nbsp;&nbsp;&nbsp;
      <input name="textarea" style="width:260px;" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')"  placeholder="应该为3位或者4位数字并以逗号分隔" 
      value="<%
        if (Request.Cookies("textarea")<>"") then
        Response.write(Request.Cookies("textarea"))
        end if
       %>" />  
      </input>
      </label>
    </p>
    <p>商&nbsp;户&nbsp;类&nbsp;型&nbsp;:
      <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input name="textarea2" style="width:260px;" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" placeholder="应该为3位或者4位数字并以逗号分隔" 
      value="<%
        if (Request.Cookies("textarea2")<>"") then
        Response.write(Request.Cookies("textarea2"))
        end if
       %>" /> 
      </input>
      </label>
    </p>
    <p>
      <label>累&nbsp;计&nbsp;金&nbsp;额&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="sum_money" placeholder="必须填入大于0的数值" 
      value="<%
        if (Request.Cookies("sum_money")<>"") then
        Response.write(Request.Cookies("sum_money"))
        end if
       %>" />   
      </label>
    </p>
    <p>
      <label>累&nbsp;计&nbsp;笔&nbsp;数&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="sum_times" placeholder="必须填入大于0的数值" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
      value="<%
        if (Request.Cookies("sum_times")<>"") then
        Response.write(Request.Cookies("sum_times"))
        end if
       %>"/>
      </label>
    </p></div>
	<div id="Layer4">
    <label><br />
   4. 账户<br />
   分&nbsp;行&nbsp;号&nbsp;&nbsp;&nbsp;:</label>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="bank_number" placeholder="请输入" onkeyup="this.value=this.value.replace(/，/g,'')" onafterpaste="this.value=this.value.replace(/，/g,'')" value="<%
      if (Request.Cookies("bank_number")<>"") then
      Response.write(Request.Cookies("bank_number"))
      end if
     %>"/>  
</label>
    </p>
    <p>
<label>账户状态&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="account_state" placeholder="请输入" onkeyup="this.value=this.value.replace(/，/g,'')" onafterpaste="this.value=this.value.replace(/，/g,'')" value="<%
      if (Request.Cookies("account_state")<>"") then
      Response.write(Request.Cookies("account_state"))
      end if
     %>"/>  
</label>
    </p>
    <p>
<label>账户类别&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="account_class" placeholder="请输入" onkeyup="this.value=this.value.replace(/，/g,'')" onafterpaste="this.value=this.value.replace(/，/g,'')" value="<%
      if (Request.Cookies("account_class")<>"") then
      Response.write(Request.Cookies("account_class"))
      end if
     %>"/>  
</label>
    </p>
    <p>
      <label>开&nbsp;户&nbsp;日&nbsp;期&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;开始
      <input type="text" id="open_account_time_start" class="Wdate" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'open_account_time_end\')}'})" name="open_account_time_start" value="<%if (Request.Cookies("open_account_time_start")<>"") then Response.write(Request.Cookies("open_account_time_start")) end if%>"/>
      </label>&nbsp;&nbsp;
       <label>结束
      <input type="text" id="open_account_time_end" class="Wdate" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'open_account_time_start\')}'})" name="open_account_time_end" value="<%if (Request.Cookies("open_account_time_end")<>"") then Response.write(Request.Cookies("open_account_time_end")) end if%>"
       />
      </label>
    </p>
    <p>
      <label>当前逾期期数&nbsp;:  最低
      <input type="text" name="overdue_num_bottom" id="overdue_num_bottom" placeholder="请输入"
      value="<%
        if (Request.Cookies("overdue_num_bottom")<>"") then
        Response.write(Request.Cookies("overdue_num_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>最高
      <input type="text" name="overdue_num_top" id="overdue_num_top" placeholder="请输入"
      value="<%
        if (Request.Cookies("overdue_num_top")<>"") then
        Response.write(Request.Cookies("overdue_num_top"))
        end if
       %>"/>
      </label><span id="overdue_num_errMsg" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
    </p>
  
    <p>有效账户&nbsp;&nbsp;:&nbsp;&nbsp; 
      <label>
      <input type="checkbox" name="effective_account" value="1" 
      <%
      if instr(Request.Cookies("effective_account"),"1")  then
      Response.write("checked")
      end if
     %>/>
      有效</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="effective_account" value="2" 
      <%
      if instr(Request.Cookies("effective_account"),"2")  then
      Response.write("checked")
      end if
     %>/>
      无效</label>
    </p>
    <p>
      <label>当前透支余额: &nbsp;下限
      <input type="text" name="overdraft_bottom" id="overdraft_bottom" placeholder="请输入"
      value="<%
        if (Request.Cookies("overdraft_bottom")<>"") then
        Response.write(Request.Cookies("overdraft_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>上限
        <input type="text" name="overdraft_top" id="overdraft_top" placeholder="请输入"
      value="<%
        if (Request.Cookies("overdraft_top")<>"") then
        Response.write(Request.Cookies("overdraft_top"))
        end if
       %>"/>
      </label><span id="overdraft_errMsg" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
    </p>
    <p>信&nbsp;用&nbsp;额&nbsp;度&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
      <label>下限
      <input type="text" name="credits_bottom" id="credits_bottom" placeholder="请输入"
      value="<%
        if (Request.Cookies("credits_bottom")<>"") then
        Response.write(Request.Cookies("credits_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>上限
      <input type="text" name="credits_top" id="credits_top" placeholder="请输入"
      value="<%
        if (Request.Cookies("credits_top")<>"") then
        Response.write(Request.Cookies("credits_top"))
        end if
       %>"/>
      </label><span id="credits_errMsg" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
    </p>
    <p>上期账单金额:&nbsp;
      <label>下限
      <input type="text" name="previous_bill_bottom" id="previous_bill_bottom" placeholder="请输入"
      value="<%
        if (Request.Cookies("previous_bill_bottom")<>"") then
        Response.write(Request.Cookies("previous_bill_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>上限
      <input type="text" name="previous_bill_top" id="previous_bill_top" placeholder="请输入"
      value="<%
        if (Request.Cookies("previous_bill_top")<>"") then
        Response.write(Request.Cookies("previous_bill_top"))
        end if
       %>"/>
      </label><span id="previous_bill_errMsg" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
    </p>
    <p> 
    </p>
</div>
<div id="Layer5">
  <label><br />
  5. 分组条件<br />
   </label>
    <input type="radio" name="radiobutton1" value="1" 
    <%
      if (Request.Cookies("radiobutton1")="1") then
      Response.write("checked")
      end if
     %>/>交易总数
</label>

<label>
    <input type="radio" name="radiobutton1" value="2" 
    <%
      if (Request.Cookies("radiobutton1")="2") then
      Response.write("checked")
      end if
     %>/>交易金额
</label>
</p>

<p>
分组1:&nbsp;&nbsp;<input type="text" name="a1" id="a1" placeholder="请输入" value="<%
      if (Request.Cookies("a1")<>"") then
      Response.write(Request.Cookies("a1"))
      end if
     %>"/>&nbsp;&nbsp;-&nbsp;
     <input type="text" name="a2"  id="a2" placeholder="请输入" value="<%
      if (Request.Cookies("a2")<>"") then
      Response.write(Request.Cookies("a2"))
      end if
     %>"/>
     <span id="a1_1" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
       <br /><br />
分组2:&nbsp;&nbsp;<input type="text" name="b1"  id="b1" placeholder="请输入" value="<%
      if (Request.Cookies("b1")<>"") then
      Response.write(Request.Cookies("b1"))
      end if
     %>"/>&nbsp;&nbsp;-&nbsp;
     <input type="text" name="b2" id="b2" placeholder="请输入" value="<%
      if (Request.Cookies("b2")<>"") then
      Response.write(Request.Cookies("b2"))
      end if
     %>"/>
      <span id="b1_1" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
     <br /><br />
分组3:&nbsp;&nbsp;<input type="text" name="c1" id="c1" placeholder="请输入" value="<%
      if (Request.Cookies("c1")<>"") then
      Response.write(Request.Cookies("c1"))
      end if
     %>"
     />&nbsp;&nbsp;-&nbsp;
     <input type="text" name="c2" id="c2" placeholder="请输入" value="<%
      if (Request.Cookies("c2")<>"") then
      Response.write(Request.Cookies("c2"))
      end if
     %>"/>
     <span id="c1_1" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
     <br /><br />
分组4:&nbsp;&nbsp;<input type="text" name="d1" id="d1" placeholder="请输入" value="<%
      if (Request.Cookies("d1")<>"") then
      Response.write(Request.Cookies("d1"))
      end if
     %>"
     />&nbsp;&nbsp;-&nbsp;
     <input type="text" name="d2"  id="d2" placeholder="请输入" value="<%
      if (Request.Cookies("d2")<>"") then
      Response.write(Request.Cookies("d2"))
      end if
     %>"
     />
<span id="d1_1" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
<br /><br />
分组5:&nbsp;&nbsp;<input type="text" name="e1" id="e1" placeholder="请输入" value="<%
      if (Request.Cookies("e1")<>"") then
      Response.write(Request.Cookies("e2"))
      end if
     %>"
    />&nbsp;&nbsp;-&nbsp;
    <input type="text" name="e2" id="e2" placeholder="请输入" value="<%
      if (Request.Cookies("e2")<>"") then
      Response.write(Request.Cookies("e2"))
      end if
     %>"/>
     <span id="e1_1" style="font-size:12px; color:red; display:none">输入上限应大于下限</span>
     <br />
</p>

<!--<div id="Layer6">-->

<p>6. 汇总</p>
<p>
  <label>
    <input type="checkbox" name="money" value="1" 
    <%
      if instr(Request.Cookies("money"),"1")  then
      Response.write("checked")
      end if
     %>
    />
    交易金额</label>

    <label>
    <input type="checkbox" name="money" value="2" 
    <%
      if instr(Request.Cookies("money"),"2")  then
      Response.write("checked")
      end if
     %>
    />
    总透支金额</label>
</p>
<!--</div>-->
</div>
<br>
<div style="margin-left:493px;">
<input id="birthday_end" type="hidden" name="today_day" value=""/>
<input type="reset" class="btn" value="重置"></input>
<input type="submit" class="btn" name="Submit" value="下一步" onclick="if(!confirm('确定勾选完所需属性，进行下一步操作？')){return false;}" />
</div>
</form>
</div>
	<script src="js_1.js"></script>
    <script src="js_n_2.js"></script>
    <script src="My97DatePicker/WdatePicker.js"></script>
</body>
</html>