BEGIN {

highest_packet_id = 0;
adelay=0;
count=0;
count3=0;
count6=0;
count9=0;
count12=0;
count15=0;
count18=0;
}

{

action = $1;

time = $3;

type = $45;

pktsize = $37;

flow_id = $39;

seq_no = $47;

packet_id = $41;


if ( packet_id > highest_packet_id )

highest_packet_id = packet_id;


if ( start_time[packet_id] == 0 )

start_time[packet_id] = time;


if (  action != "d" ) {

if ( action == "r" ) {

end_time[packet_id] = time;

}

} else {

end_time[packet_id] = -1;

}

}

END {
adelay=0;
count=0;
for ( packet_id = 0; packet_id <= highest_packet_id; packet_id++ ) {

start = start_time[packet_id];

end = end_time[packet_id];

packet_duration = end - start;
if ( start < end ){ 

#printf("%f %f\n", start, packet_duration*1000);

if(start >=3 && start<=4 &&count3==0){
         count3+=1;
        printf("%f, %f\n", start, packet_duration*1000);
         } 
if(start >=6 && start<=7 &&count6==0){
         count6+=1;
        printf("%f, %f\n", start, packet_duration*1000);
}

if(start >=9 && start<=10 &&count9==0){
         count9+=1;
        printf("%f, %f\n", start, packet_duration*1000);
}
if(start >=12 && start<=13 &&count12==0){
         count12+=1;
        printf("%f, %f\n", start, packet_duration*1000);
}
   if(start >=15 && start<=16 &&count15==0){
         count15+=1;
        printf("%f, %f\n", start, packet_duration*1000);
}
if(start >=18 && start<=19 &&count18==0){
         count18+=1;
        printf("%f, %f\n", start, packet_duration*1000);
} 


adelay +=   packet_duration*1000;
count++;
}

}
adelay =adelay/(count);
printf("Time: %f \nEnd to End Delay : %f\n", start, adelay);
}
