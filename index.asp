<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="gb2312">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>���Ի���ѯҳ��</title>
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
  <button class="btn" type="button" id="button1">1.�ͻ�ѡ��</button>
  <button class="btn" type="button" id="button2">2.��Ƭѡ��</button>
  <button class="btn" type="button" id="button3">3.����ѡ��</button>
  <button class="btn" type="button" id="button4">4.�˻�ѡ��</button>
  <button class="btn" type="button" id="button5">5.�鿴��ϸ</button>
  <button class="btn" type="button" id="button7">��ʾȫ��</button> 
  </div>

  <div id="Layer1" > 
  <form id="form1" name="form1" method="post" action="er.asp" onsubmit="return bottom_top();">
    <label><br />
    1.�ͻ�<br />
    ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</label>&nbsp;&nbsp;&nbsp;&nbsp;
    <label>
    <input type="radio" name="radiobutton" value="M" 
    <%
      if (Request.Cookies("radiobutton")="M") then
      Response.write("checked")
      end if
     %>/>
    ��</label>
    <label></label>
    <label>
    <input type="radio" name="radiobutton" value="F" 
    <%
      if (Request.Cookies("radiobutton")="F") then
      Response.write("checked")
      end if
     %>/>
    Ů</label>
    <label>
    <input type="radio" name="radiobutton" value="0" 
    <%
      if (Request.Cookies("radiobutton")="0") then
      Response.write("checked")
      end if
     %>/>
    ����</label><br>
    <br>
  <!--/form-->
  <!--form id="form1" name="form2" method="post" action=""-->
    <label>��������: </label>&nbsp;&nbsp;
    <label>��ʼ
   <input type="text" class="Wdate" id="birthdaystart"  onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'birthdayend\')}'}) " name="birthdaystart" value="<%if (Request.Cookies("birthdaystart")<>"") then Response.write(Request.Cookies("birthdaystart")) end if%>"/>
    </label>&nbsp;&nbsp;&nbsp;&nbsp;
    <label>����
    <input  type="text" class="Wdate" id="birthdayend"  onFocus="WdatePicker({minDate:'#F{$dp.$D(\'birthdaystart\')}'})" name="birthdayend" value="<%if (Request.Cookies("birthdayend")<>"") then Response.write(Request.Cookies("birthdayend")) end if%>"
       />
    </label>
    <label><br />
    <br />
    �����̶�: </label>
    <label>&nbsp;&nbsp;
    <input type="checkbox" name="edu" value="1" 
    <%
      if instr(Request.Cookies("edu"),"1")  then
      Response.write("checked")
      end if
     %>
    />
    ���м�����</label>
    <label>
    <input type="checkbox" name="edu" value="2"
    <%
      if instr(Request.Cookies("edu"),"2")  then
      Response.write("checked")
      end if
     %> />
���м�����</label>

<label>
<input type="checkbox" name="edu" value="3" 
<%
      if instr(Request.Cookies("edu"),"3")  then
      Response.write("checked")
      end if
     %>
/>
��ר</label>
<label>
<input type="checkbox" name="edu" value="4"
<%
      if instr(Request.Cookies("edu"),"4")  then
      Response.write("checked")
      end if
     %> />
����</label>
<label>
<input type="checkbox" name="edu" value="5" 
<%
      if instr(Request.Cookies("edu"),"5")  then
      Response.write("checked")
      end if
%>/>
˶ʿ</label>
<label>
<input type="checkbox" name="edu" value="6" 
<%
      if instr(Request.Cookies("edu"),"6")  then
      Response.write("checked")
      end if
 %>/>
��ʿ������</label>
<label>
<input type="checkbox" name="edu" value="7" 
<%
      if instr(Request.Cookies("edu"),"7")  then
      Response.write("checked")
      end if
     %>/>
δ֪ </label>
  <!--/form-->

  
</div>
<div id="Layer2">
  <!--form action="" method="post" enctype="multipart/form-data" name="form3" id="form1"-->
    <label><br />
    2.��Ƭ<br />
    �ƹ�������:</label>&nbsp;&nbsp;
    <input type="text" name="user" placeholder="������" onkeyup="this.value=this.value.replace(/��/g,'')" onafterpaste="this.value=this.value.replace(/��/g,'')" value="<%
      if (Request.Cookies("user")<>"") then
      Response.write(Request.Cookies("user"))
      end if
     %>"/>&nbsp;&nbsp;   
    �ƹ��˱��:&nbsp;&nbsp;<input type="text" name="id" placeholder="������" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" value="<%
      if (Request.Cookies("id")<>"") then
      Response.write(Request.Cookies("id"))
      end if
     %>"/>
    <p> 
      <label>�Ƿ����¿�:&nbsp;&nbsp;
      <input type="checkbox" name="is_new" value="1" 
      <%
      if (Request.Cookies("is_new")<>"") then
      Response.write("checked")
      end if
     %> />��
      </label>
    </p>
    <p>��������:&nbsp;&nbsp;
      <input type="checkbox" name="is_bind" value="1" 
      <%
      if instr(Request.Cookies("is_bind"),"1")  then
      Response.write("checked")
      end if
     %>/>
      �Ѱ�

      <label>
      <input type="checkbox" name="is_bind" value="2" 
     <%
      if instr(Request.Cookies("is_bind"),"2")  then
      Response.write("checked")
      end if
     %> />
      δ��</label>
     
    </p>


<p>
<label>��&nbsp;&nbsp;��&nbsp;&nbsp;Ʒ&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" name="card_product" placeholder="������" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" value="<%
      if (Request.Cookies("card_product")<>"") then
      Response.write(Request.Cookies("card_product"))
      end if
     %>"/> </label>
    </p>
<p>
<label>��&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" name="card_rank" placeholder="������" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" value="<%
      if (Request.Cookies("card_rank")<>"") then
      Response.write(Request.Cookies("card_rank"))
      end if
     %>"/> </label>
</p>

<p>
<label>��&nbsp;&nbsp;״&nbsp;&nbsp;̬&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="text" name="card_state" placeholder="������" onkeyup="this.value=this.value.replace(/��/g,'')" onafterpaste="this.value=this.value.replace(/��/g,'')" value="<%
      if (Request.Cookies("card_state")<>"") then
      Response.write(Request.Cookies("card_state"))
      end if
     %>"/>   </label>
</p>
</p>
    ��&nbsp;��&nbsp;ʱ&nbsp;��:&nbsp;&nbsp;&nbsp;��ʼ
    <%Response.write(Request.Cookies("open_account_time_end"))%>
    <input type="text" class="Wdate" id="send_card_time_start" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'send_card_time_end\')}'})" name="send_card_time_start" value="<%if (Request.Cookies("send_card_time_start")<>"") then Response.write(Request.Cookies("send_card_time_start")) end if%>"/>
    &nbsp;&nbsp;����
    <input type="text" class="Wdate" id="send_card_time_end" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'send_card_time_start\')}'})" name="send_card_time_end" value="<%if (Request.Cookies("send_card_time_end")<>"") then Response.write(Request.Cookies("send_card_time_end")) end if%>"
      />
    <br />
    <br />
    ��&nbsp;��&nbsp;ʱ&nbsp;��:&nbsp;&nbsp;&nbsp;��ʼ
    <input type="text" class="Wdate" id="active_card_time_start" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'active_card_time_end\')}'})" name="active_card_time_start" value="<%if (Request.Cookies("active_card_time_start")<>"") then Response.write(Request.Cookies("active_card_time_start")) end if%>"/>
    &nbsp;&nbsp;����
    <input type="text" class="Wdate" id="active_card_time_end" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'active_card_time_start\')}'})" name="active_card_time_end" value="<%if (Request.Cookies("active_card_time_end")<>"") then Response.write(Request.Cookies("active_card_time_end")) end if%>"
    />
    <br />
    <br />
<label>��&nbsp;��&nbsp;ԭ&nbsp;��:&nbsp;&nbsp;&nbsp;<input type="text" name="card_reason" placeholder="������" onkeyup="this.value=this.value.replace(/��/g,'')" onafterpaste="this.value=this.value.replace(/��/g,'')" value="<%
      if (Request.Cookies("card_reason")<>"") then
      Response.write(Request.Cookies("card_reason"))
      end if
     %>"/>  
</label>

    <p>��&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="attached_card" value="1" 
      <%
      if instr(Request.Cookies("attached_card"),"1")  then
      Response.write("checked")
      end if
     %>/>
      ����
      <label>&nbsp;&nbsp;
      <input type="checkbox" name="attached_card" value="2" 
      <%
      if instr(Request.Cookies("attached_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ����</label>
      <label></label>
    </p>
    <p>��&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="active_card" value="1" 
      <%
      if instr(Request.Cookies("active_card"),"1")  then
      Response.write("checked")
      end if
      %>/>
      ����
      <label>&nbsp;&nbsp;
      <input type="checkbox" name="active_card" value="2" 
      <%
      if instr(Request.Cookies("active_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      δ����</label>
    </p>
    <p>30���Ծ��:
      <label>&nbsp;
      <input type="checkbox" name="month_active" value="1" 
      <%
      if instr(Request.Cookies("month_active"),"1")  then
      Response.write("checked")
      end if
     %>/>
      30���Ծ��</label>
      <label>
      <input type="checkbox" name="month_active" value="2" 
      <%
      if instr(Request.Cookies("month_active"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ��30���Ծ��</label>
    </p>
    <p>90���Ծ��:
      <label>&nbsp;
      <input type="checkbox" name="season_active" value="1"
      <%
      if instr(Request.Cookies("season_active"),"1")  then
      Response.write("checked")
      end if
     %>/>
90���Ծ��</label>
      <label>
      <input type="checkbox" name="season_active" value="2" 
      <%
      if instr(Request.Cookies("season_active"),"2")  then
      Response.write("checked")
      end if
     %>/>
��90���Ծ��</label>
</p>
    <p>˯&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="sleep_card" value="1" 
      <%
      if instr(Request.Cookies("sleep_card"),"1")  then
      Response.write("checked")
      end if
     %>/>
      ˯�߿�</label>&nbsp;&nbsp;
      <input type="checkbox" name="sleep_card" value="2" 
      <%
      if instr(Request.Cookies("sleep_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ��˯�߿�</label>
    </p>
    <p>��&nbsp;&nbsp;Ч&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="effective_card" value="1" 
      <%
      if instr(Request.Cookies("effective_card"),"1")  then
      Response.write("checked")
      end if
     %>/>
      ��Ч��</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="effective_card" value="2" 
      <%
      if instr(Request.Cookies("effective_card"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ����Ч��</label>
    </p></div>
	<div id="Layer3">
    <label><br />
    3.����<br />
   ��&nbsp;��&nbsp;ʱ&nbsp;��&nbsp;��&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;��ʼ</label>
      <input type="text" id="trade_time_start" class="Wdate" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'trade_time_end\')}'})" name="trade_time_start" value="<%if (Request.Cookies("trade_time_start")<>"") then Response.write(Request.Cookies("trade_time_start")) end if%>"/>
      </label>&nbsp;&nbsp;
      <label>����
      <input type="text" id="trade_time_end" class="Wdate" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'trade_time_start\')}'})" name="trade_time_end" value="<%if (Request.Cookies("trade_time_end")<>"") then Response.write(Request.Cookies("trade_time_end")) end if%>"
      id="<%if (Request.Cookies("trade_time_end")="") then Response.write("trade_time_end") end if%>"
    />
    </label>
    </p>
    <p>���ʽ��׽��&nbsp;&nbsp;: &nbsp;&nbsp;
      <label>����
      <input type="text" name="money_bottom" id="money_bottom" placeholder="0" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
      value="<%
        if (Request.Cookies("money_bottom")<>"") then
        Response.write(Request.Cookies("money_bottom"))
        end if
       %>" />   
      </label>&nbsp;&nbsp;
      <label>����
      <input type="text" name="money_top" id="money_top" placeholder="99999" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
      value="<%
        if (Request.Cookies("money_top")<>"") then
        Response.write(Request.Cookies("money_top"))
        end if
       %>" />  
      </label><span id="money_errMsg" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
    </p>
    <p>�����Ƿ��л���:
      <label>&nbsp;
      <input type="checkbox" name="trade_points" value="1"
      <%
      if instr(Request.Cookies("trade_points"),"1")  then
      Response.write("checked")
      end if
     %>/>
      �л���</label>
      <label>
      <input type="checkbox" name="trade_points" value="2" 
      <%
      if instr(Request.Cookies("trade_points"),"2")  then
      Response.write("checked")
      end if
     %>/>
      �޻���</label>
    </p>
    <!--<p>�Ƿ�����
      <label>
      <input type="checkbox" name="checkbox222" value="checkbox" />
      ����
      </label>
      <label>
      <input type="checkbox" name="checkbox232" value="checkbox" />
      ȡ��ת��
      </label>
</p>-->
    <p>��&nbsp;��&nbsp;��&nbsp;��&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
      <label>&nbsp;&nbsp;
      <input type="checkbox" name="online" value="1" 
      <%
      if instr(Request.Cookies("online"),"1")  then
      Response.write("checked")
      end if
     %>/>
      ����</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="online" value="2" 
      <%
      if instr(Request.Cookies("online"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ������</label>
    </p>
    <p>��&nbsp;��&nbsp;��&nbsp;��&nbsp;&nbsp;:&nbsp;&nbsp;
      <label>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="abroad" value="1" 
      <%
      if instr(Request.Cookies("abroad"),"1")  then
      Response.write("checked")
      end if
     %>/>
      ����</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="abroad" value="2" 
      <%
      if instr(Request.Cookies("abroad"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ����</label>
    </p>
    <p>�Ƿ�������&nbsp;:
      <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="cloud_pay" value="1" 
      <%
      if instr(Request.Cookies("cloud_pay"),"1")  then
      Response.write("checked")
      end if
     %>/>
      ������</label>
      <label>
      <input type="checkbox" name="cloud_pay" value="2" 
      <%
      if instr(Request.Cookies("cloud_pay"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ��������</label>
    </p>
<label>��&nbsp;��&nbsp;��&nbsp;��&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="trade_type" placeholder="������" onkeyup="this.value=this.value.replace(/��/g,'')" onafterpaste="this.value=this.value.replace(/��/g,'')" value="<%
      if (Request.Cookies("trade_type")<>"") then
      Response.write(Request.Cookies("trade_type"))
      end if
     %>"/>  
</label>
    <p>ϸ�ֽ�������:
      <label>&nbsp;&nbsp;&nbsp;
      <input name="textarea" style="width:260px;" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')"  placeholder="Ӧ��Ϊ3λ����4λ���ֲ��Զ��ŷָ�" 
      value="<%
        if (Request.Cookies("textarea")<>"") then
        Response.write(Request.Cookies("textarea"))
        end if
       %>" />  
      </input>
      </label>
    </p>
    <p>��&nbsp;��&nbsp;��&nbsp;��&nbsp;:
      <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input name="textarea2" style="width:260px;" onkeyup="this.value=this.value.replace(/[^0-9,]/g,'')" onafterpaste="this.value=this.value.replace(/[^0-9,]/g,'')" placeholder="Ӧ��Ϊ3λ����4λ���ֲ��Զ��ŷָ�" 
      value="<%
        if (Request.Cookies("textarea2")<>"") then
        Response.write(Request.Cookies("textarea2"))
        end if
       %>" /> 
      </input>
      </label>
    </p>
    <p>
      <label>��&nbsp;��&nbsp;��&nbsp;��&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="sum_money" placeholder="�����������0����ֵ" 
      value="<%
        if (Request.Cookies("sum_money")<>"") then
        Response.write(Request.Cookies("sum_money"))
        end if
       %>" />   
      </label>
    </p>
    <p>
      <label>��&nbsp;��&nbsp;��&nbsp;��&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="sum_times" placeholder="�����������0����ֵ" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
      value="<%
        if (Request.Cookies("sum_times")<>"") then
        Response.write(Request.Cookies("sum_times"))
        end if
       %>"/>
      </label>
    </p></div>
	<div id="Layer4">
    <label><br />
   4. �˻�<br />
   ��&nbsp;��&nbsp;��&nbsp;&nbsp;&nbsp;:</label>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="bank_number" placeholder="������" onkeyup="this.value=this.value.replace(/��/g,'')" onafterpaste="this.value=this.value.replace(/��/g,'')" value="<%
      if (Request.Cookies("bank_number")<>"") then
      Response.write(Request.Cookies("bank_number"))
      end if
     %>"/>  
</label>
    </p>
    <p>
<label>�˻�״̬&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="account_state" placeholder="������" onkeyup="this.value=this.value.replace(/��/g,'')" onafterpaste="this.value=this.value.replace(/��/g,'')" value="<%
      if (Request.Cookies("account_state")<>"") then
      Response.write(Request.Cookies("account_state"))
      end if
     %>"/>  
</label>
    </p>
    <p>
<label>�˻����&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="account_class" placeholder="������" onkeyup="this.value=this.value.replace(/��/g,'')" onafterpaste="this.value=this.value.replace(/��/g,'')" value="<%
      if (Request.Cookies("account_class")<>"") then
      Response.write(Request.Cookies("account_class"))
      end if
     %>"/>  
</label>
    </p>
    <p>
      <label>��&nbsp;��&nbsp;��&nbsp;��&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;��ʼ
      <input type="text" id="open_account_time_start" class="Wdate" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'open_account_time_end\')}'})" name="open_account_time_start" value="<%if (Request.Cookies("open_account_time_start")<>"") then Response.write(Request.Cookies("open_account_time_start")) end if%>"/>
      </label>&nbsp;&nbsp;
       <label>����
      <input type="text" id="open_account_time_end" class="Wdate" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'open_account_time_start\')}'})" name="open_account_time_end" value="<%if (Request.Cookies("open_account_time_end")<>"") then Response.write(Request.Cookies("open_account_time_end")) end if%>"
       />
      </label>
    </p>
    <p>
      <label>��ǰ��������&nbsp;:  ���
      <input type="text" name="overdue_num_bottom" id="overdue_num_bottom" placeholder="������"
      value="<%
        if (Request.Cookies("overdue_num_bottom")<>"") then
        Response.write(Request.Cookies("overdue_num_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>���
      <input type="text" name="overdue_num_top" id="overdue_num_top" placeholder="������"
      value="<%
        if (Request.Cookies("overdue_num_top")<>"") then
        Response.write(Request.Cookies("overdue_num_top"))
        end if
       %>"/>
      </label><span id="overdue_num_errMsg" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
    </p>
  
    <p>��Ч�˻�&nbsp;&nbsp;:&nbsp;&nbsp; 
      <label>
      <input type="checkbox" name="effective_account" value="1" 
      <%
      if instr(Request.Cookies("effective_account"),"1")  then
      Response.write("checked")
      end if
     %>/>
      ��Ч</label>&nbsp;&nbsp;
      <label>
      <input type="checkbox" name="effective_account" value="2" 
      <%
      if instr(Request.Cookies("effective_account"),"2")  then
      Response.write("checked")
      end if
     %>/>
      ��Ч</label>
    </p>
    <p>
      <label>��ǰ͸֧���: &nbsp;����
      <input type="text" name="overdraft_bottom" id="overdraft_bottom" placeholder="������"
      value="<%
        if (Request.Cookies("overdraft_bottom")<>"") then
        Response.write(Request.Cookies("overdraft_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>����
        <input type="text" name="overdraft_top" id="overdraft_top" placeholder="������"
      value="<%
        if (Request.Cookies("overdraft_top")<>"") then
        Response.write(Request.Cookies("overdraft_top"))
        end if
       %>"/>
      </label><span id="overdraft_errMsg" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
    </p>
    <p>��&nbsp;��&nbsp;��&nbsp;��&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
      <label>����
      <input type="text" name="credits_bottom" id="credits_bottom" placeholder="������"
      value="<%
        if (Request.Cookies("credits_bottom")<>"") then
        Response.write(Request.Cookies("credits_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>����
      <input type="text" name="credits_top" id="credits_top" placeholder="������"
      value="<%
        if (Request.Cookies("credits_top")<>"") then
        Response.write(Request.Cookies("credits_top"))
        end if
       %>"/>
      </label><span id="credits_errMsg" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
    </p>
    <p>�����˵����:&nbsp;
      <label>����
      <input type="text" name="previous_bill_bottom" id="previous_bill_bottom" placeholder="������"
      value="<%
        if (Request.Cookies("previous_bill_bottom")<>"") then
        Response.write(Request.Cookies("previous_bill_bottom"))
        end if
       %>"/>
      </label>&nbsp;&nbsp;
      <label>����
      <input type="text" name="previous_bill_top" id="previous_bill_top" placeholder="������"
      value="<%
        if (Request.Cookies("previous_bill_top")<>"") then
        Response.write(Request.Cookies("previous_bill_top"))
        end if
       %>"/>
      </label><span id="previous_bill_errMsg" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
    </p>
    <p> 
    </p>
</div>
<div id="Layer5">
  <label><br />
  5. ��������<br />
   </label>
    <input type="radio" name="radiobutton1" value="1" 
    <%
      if (Request.Cookies("radiobutton1")="1") then
      Response.write("checked")
      end if
     %>/>��������
</label>

<label>
    <input type="radio" name="radiobutton1" value="2" 
    <%
      if (Request.Cookies("radiobutton1")="2") then
      Response.write("checked")
      end if
     %>/>���׽��
</label>
</p>

<p>
����1:&nbsp;&nbsp;<input type="text" name="a1" id="a1" placeholder="������" value="<%
      if (Request.Cookies("a1")<>"") then
      Response.write(Request.Cookies("a1"))
      end if
     %>"/>&nbsp;&nbsp;-&nbsp;
     <input type="text" name="a2"  id="a2" placeholder="������" value="<%
      if (Request.Cookies("a2")<>"") then
      Response.write(Request.Cookies("a2"))
      end if
     %>"/>
     <span id="a1_1" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
       <br /><br />
����2:&nbsp;&nbsp;<input type="text" name="b1"  id="b1" placeholder="������" value="<%
      if (Request.Cookies("b1")<>"") then
      Response.write(Request.Cookies("b1"))
      end if
     %>"/>&nbsp;&nbsp;-&nbsp;
     <input type="text" name="b2" id="b2" placeholder="������" value="<%
      if (Request.Cookies("b2")<>"") then
      Response.write(Request.Cookies("b2"))
      end if
     %>"/>
      <span id="b1_1" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
     <br /><br />
����3:&nbsp;&nbsp;<input type="text" name="c1" id="c1" placeholder="������" value="<%
      if (Request.Cookies("c1")<>"") then
      Response.write(Request.Cookies("c1"))
      end if
     %>"
     />&nbsp;&nbsp;-&nbsp;
     <input type="text" name="c2" id="c2" placeholder="������" value="<%
      if (Request.Cookies("c2")<>"") then
      Response.write(Request.Cookies("c2"))
      end if
     %>"/>
     <span id="c1_1" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
     <br /><br />
����4:&nbsp;&nbsp;<input type="text" name="d1" id="d1" placeholder="������" value="<%
      if (Request.Cookies("d1")<>"") then
      Response.write(Request.Cookies("d1"))
      end if
     %>"
     />&nbsp;&nbsp;-&nbsp;
     <input type="text" name="d2"  id="d2" placeholder="������" value="<%
      if (Request.Cookies("d2")<>"") then
      Response.write(Request.Cookies("d2"))
      end if
     %>"
     />
<span id="d1_1" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
<br /><br />
����5:&nbsp;&nbsp;<input type="text" name="e1" id="e1" placeholder="������" value="<%
      if (Request.Cookies("e1")<>"") then
      Response.write(Request.Cookies("e2"))
      end if
     %>"
    />&nbsp;&nbsp;-&nbsp;
    <input type="text" name="e2" id="e2" placeholder="������" value="<%
      if (Request.Cookies("e2")<>"") then
      Response.write(Request.Cookies("e2"))
      end if
     %>"/>
     <span id="e1_1" style="font-size:12px; color:red; display:none">��������Ӧ��������</span>
     <br />
</p>

<!--<div id="Layer6">-->

<p>6. ����</p>
<p>
  <label>
    <input type="checkbox" name="money" value="1" 
    <%
      if instr(Request.Cookies("money"),"1")  then
      Response.write("checked")
      end if
     %>
    />
    ���׽��</label>

    <label>
    <input type="checkbox" name="money" value="2" 
    <%
      if instr(Request.Cookies("money"),"2")  then
      Response.write("checked")
      end if
     %>
    />
    ��͸֧���</label>
</p>
<!--</div>-->
</div>
<br>
<div style="margin-left:493px;">
<input id="birthday_end" type="hidden" name="today_day" value=""/>
<input type="reset" class="btn" value="����"></input>
<input type="submit" class="btn" name="Submit" value="��һ��" onclick="if(!confirm('ȷ����ѡ���������ԣ�������һ��������')){return false;}" />
</div>
</form>
</div>
	<script src="js_1.js"></script>
    <script src="js_n_2.js"></script>
    <script src="My97DatePicker/WdatePicker.js"></script>
</body>
</html>