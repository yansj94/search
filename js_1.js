//������������
var layer1=document.getElementById("Layer1")
var layer2=document.getElementById("Layer2")
var layer3=document.getElementById("Layer3")
var layer4=document.getElementById("Layer4")
var layer5=document.getElementById("Layer5")

    layer1.style.display="block";
    layer2.style.display="none";
    layer3.style.display="none";
    layer4.style.display="none";
    layer5.style.display="none";

document.getElementById("button7").onclick=function(){
    layer1.style.display="block";
    layer2.style.display="block";
    layer3.style.display="block";
    layer4.style.display="block";
    layer5.style.display="block";
}
document.getElementById("button1").onclick=function(){
    layer1.style.display="block";
    layer2.style.display="none";
    layer3.style.display="none";
    layer4.style.display="none";
    layer5.style.display="none";
}

document.getElementById("button2").onclick=function(){
    layer2.style.display="block";
    layer1.style.display="none";
    layer3.style.display="none";
    layer4.style.display="none";
    layer5.style.display="none";

    
}

document.getElementById("button3").onclick=function(){
    layer3.style.display="block";
    layer1.style.display="none";
    layer2.style.display="none";
    layer4.style.display="none";
    layer5.style.display="none";
    // layer6.style.display="none";
    
}

document.getElementById("button4").onclick=function(){
    layer4.style.display="block";
    layer1.style.display="none";
    layer2.style.display="none";
    layer3.style.display="none";
    layer5.style.display="none";
    // layer6.style.display="none";
    
}

document.getElementById("button5").onclick=function(){
    layer5.style.display="block";
    layer1.style.display="none";
    layer2.style.display="none";
    layer4.style.display="none";
    layer3.style.display="none";
    // layer6.style.display="none";
    
}

document.getElementById("button6").onclick=function(){
    layer6.style.display="block";
    layer1.style.display="none";
    layer2.style.display="none";
    layer3.style.display="none";
    layer5.style.display="none";
    layer4.style.display="none";
    
}