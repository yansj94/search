//��ȡϵͳʱ��
 window.onload=function(){
         var date = new Date();
         var seperator1 = "-";
         var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
         if (month >= 1 && month <= 9) {
             month = "0" + month;
         }
         if (strDate >= 0 && strDate <= 9) {
             strDate = "0" + strDate;
         }
        var currentdate = year + seperator1 + month + seperator1 + strDate;       
       document.getElementById("birthday_end").value=currentdate;
       
     }


//��֤���������ޱ������ڵ�������
   
function bottom_top(){
    var flag=1;
    var credits_bottom=document.getElementsByName("credits_bottom")[0].value;
    var credits_top=document.getElementsByName("credits_top")[0].value;
    if(credits_bottom>credits_top){
        alert("����������Ӧ��������")
        flag=0
    }

    var overdue_num_bottom=document.getElementsByName("overdue_num_bottom")[0].value;
    var overdue_num_top=document.getElementsByName("overdue_num_top")[0].value;
   if(overdue_num_bottom>overdue_num_top){
        alert("����������Ӧ��������")
        flag=0;
    //   var span_overdue_num=  document.getElementById("span_overdue_num");
    //   span_overdue_num.innerHTML="��Ϣ��д������������У��";
    //   span_overdue_num.style.background="#FF0000";

    }

    var overdraft_bottom=document.getElementsByName("overdraft_bottom")[0].value;
    var overdraft_top=document.getElementsByName("overdraft_top")[0].value;
    if(overdraft_bottom>overdraft_top){
        alert("����������Ӧ��������")
        flag=0
    }

    var previous_bill_bottom=document.getElementsByName("previous_bill_bottom")[0].value;
    var previous_bill_top=document.getElementsByName("previous_bill_top")[0].value;
    if(previous_bill_bottom>previous_bill_top){
        alert("����������Ӧ��������")
        flag=0
    }

    var money_bottom=document.getElementsByName("money_bottom")[0].value;
    var money_top=document.getElementsByName("money_top")[0].value;
    if(money_bottom>money_top){
        alert("����������Ӧ��������")
        flag=0
    }

  

    var birthday_start=document.getElementsByName("birthdaystart")[0].value;
    var birthday_end=document.getElementsByName("birthdayend")[0].value;
    if(Date.parse(birthday_start)>Date.parse(birthday_end)){
        alert("����������Ӧ��������")
        flag=0
    }

    var send_card_time_start=document.getElementsByName("send_card_time_start")[0].value;
    var send_card_time_end=document.getElementsByName("send_card_time_end")[0].value;
    if(send_card_time_start>send_card_time_end){
        alert("����������Ӧ��������")
        flag=0
    }

    var active_card_time_start=document.getElementsByName("active_card_time_start")[0].value;
    var active_card_time_end=document.getElementsByName("active_card_time_end")[0].value;
    if(active_card_time_start>active_card_time_end){
        alert("����������Ӧ��������")
        flag=0
    }

    var trade_time_start=document.getElementsByName("trade_time_start")[0].value;
    var trade_time_end=document.getElementsByName("trade_time_end")[0].value;
    if(trade_time_start>trade_time_end){
        alert("����������Ӧ��������")
        flag=0
    }

    var open_account_time_start=document.getElementsByName("open_account_time_start")[0].value;
    var open_account_time_end=document.getElementsByName("open_account_time_end")[0].value;
    if(open_account_time_start>open_account_time_end){
        alert("����������Ӧ��������")
        flag=0
    }

    if(flag==1){
        return true
    }
    
    else return false
}

document.getElementById("money_top").onkeyup=function(){
		if(Number(document.getElementById("money_top").value)<Number(document.getElementById("money_bottom").value)){
		document.getElementById("money_errMsg").style.display="block";}
			else{
			document.getElementById("money_errMsg").style.display="none";}
		}

document.getElementById("overdue_num_top").onkeyup=function(){
		if(Number(document.getElementById("overdue_num_top").value)<Number(document.getElementById("overdue_num_bottom").value)){
		document.getElementById("overdue_num_errMsg").style.display="block";}
			else{
			document.getElementById("overdue_num_errMsg").style.display="none";}
		}

document.getElementById("overdraft_top").onkeyup=function(){
		if(Number(document.getElementById("overdraft_top").value)<Number(document.getElementById("overdraft_bottom").value)){
		document.getElementById("overdraft_errMsg").style.display="block";}
			else{
			document.getElementById("overdraft_errMsg").style.display="none";}
		}

document.getElementById("credits_top").onkeyup=function(){
		if(Number(document.getElementById("credits_top").value)<Number(document.getElementById("credits_bottom").value)){
		document.getElementById("credits_errMsg").style.display="block";}
			else{
			document.getElementById("credits_errMsg").style.display="none";}
		}

document.getElementById("previous_bill_top").onkeyup=function(){
		if(Number(document.getElementById("previous_bill_top").value)<Number(document.getElementById("previous_bill_bottom").value)){
		document.getElementById("previous_bill_errMsg").style.display="block";}
			else{
			document.getElementById("previous_bill_errMsg").style.display="none";}
		}

document.getElementById("a2").onkeyup=function(){
		if(Number(document.getElementById("a2").value)<Number(document.getElementById("a1").value)){
		document.getElementById("a1_1").style.display="block";}
			else{
			document.getElementById("a1_1").style.display="none";}
		}

document.getElementById("b2").onkeyup=function(){
		if(Number(document.getElementById("b2").value)<Number(document.getElementById("b1").value)){
		document.getElementById("b1_1").style.display="block";}
			else{
			document.getElementById("b1_1").style.display="none";}
		}

document.getElementById("c2").onkeyup=function(){
		if(Number(document.getElementById("c2").value)<Number(document.getElementById("c1").value)){
		document.getElementById("c1_1").style.display="block";}
			else{
			document.getElementById("c1_1").style.display="none";}
		}

document.getElementById("d2").onkeyup=function(){
		if(Number(document.getElementById("d2").value)<Number(document.getElementById("d1").value)){
		document.getElementById("d1_1").style.display="block";}
			else{
			document.getElementById("d1_1").style.display="none";}
		}

document.getElementById("e2").onkeyup=function(){
		if(Number(document.getElementById("e2").value)<Number(document.getElementById("e1").value)){
		document.getElementById("e1_1").style.display="block";}
			else{
			document.getElementById("e1_1").style.display="none";}
		}