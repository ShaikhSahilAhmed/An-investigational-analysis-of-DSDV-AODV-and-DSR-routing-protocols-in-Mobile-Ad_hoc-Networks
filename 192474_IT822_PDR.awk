BEGIN {
	sendPkt=0
	recvPkt=0
	count3=0
	count6=0
	count9=0
	count14=0
	count18=0
	count21=0
	count24=0
}
{
	event =$1
	time =$3
	packet =$19

	if(event =="s" && packet == "AGT"){
			sendPkt++;
	}
	if(event =="r" && packet == "AGT"){
			recvPkt++;
	}


        if($3 >=3 && $3<=4 &&count3==0){
         count3+=1;
        printf("%f, %f \n",time,(recvPkt/sendPkt))
         } 

if($3 >=6 && $3<=7 &&count6==0){
         count6+=1;
        printf("%f, %f \n",time,(recvPkt/sendPkt))
         } 
if($3 >=9.01 && $3<=11 &&count9==0){
         count9+=1;
        printf("%f, %f \n",int(time),(recvPkt/sendPkt))
}

if($3 >=14 && $3<=15 &&count14==0){
         count14+=1;
        printf("%f, %f \n",time,(recvPkt/sendPkt))
}
if($3 >=18 && $3<=19 &&count18==0){
         count18+=1;
        printf("%f, %f \n",time,(recvPkt/sendPkt))
}
   if($3 >=21 && $3<=22 &&count21==0){
         count21+=1;
        printf("%f, %f \n",time,(recvPkt/sendPkt))
}
if($3 >=25 && $3<=25 &&count24==0){
         count24+=1;
        printf("%f, %f \n",time,(recvPkt/sendPkt))
}    
}
END {

	printf("The sent packets are %d \n",sendPkt);
	printf("The received packets are %d \n",recvPkt);
	printf("Packet Delivery Ratio is %f \n",(recvPkt/sendPkt));
}
