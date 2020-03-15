BEGIN {
	recv=0
	currentTime = previousTime =0
	timetic = 1
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
	node_id =$5
	packet =$19
	pkt_id =$41
	flow_id =$39
	packet_size =$37
	flow_type =$45

	if(previousTime == 0){
			previousTime = time
	}
	if(event =="r" && packet == "AGT"){
		recv= recv+packet_size
		currentTime = currentTime +(time - previousTime)
	if(currentTime >= timetic){

if($3 >=6 && $3<=7 &&count6==0){
         count6+=1;
        printf("%f, %f \n",int(time),(recv/currentTime)*(8/1000))
         } 
if($3 >=9.01 && $3<=11 &&count9==0){
         count9+=1;
        printf("%f, %f \n",int(time),(recv/currentTime)*(8/1000))
}

if($3 >=14 && $3<=15 &&count14==0){
         count14+=1;
        printf("%f, %f \n",int(time),(recv/currentTime)*(8/1000))
}
if($3 >=18 && $3<=19 &&count18==0){
         count18+=1;
        printf("%f, %f \n",int(time),(recv/currentTime)*(8/1000))
}
   if($3 >=21 && $3<=22 &&count21==0){
         count21+=1;
        printf("%f, %f \n",int(time),(recv/currentTime)*(8/1000))
}
if($3 >=25 && $3<=25 &&count24==0){
         count24+=1;
        printf("%f, %f \n",int(time),(recv/currentTime)*(8/1000))
}    

		recv=0
		currentTime=0
		
	}
	previousTime = time
	}
	
}
END {
printf("\n")
}
