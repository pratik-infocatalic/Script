echo "if you want to start vm then type start"
echo "if you want to stop vm then type stop"

read data

function fun()
{

if  [ $data = "start" ]  && [ $date +" %H-%M " = $date +" %H-%M "  ];
then
	gcloud config set compute/zone asia-south1-c 
	gcloud compute instances start ubuntu-2 
	gcloud compute instances start instance-7
	gcloud config set compute/zone us-west4-b
	gcloud compute instances start instance-4
	gcloud compute instances start instance-2
elif [ $data = "stop" ] && [ $date +" %H-%M " = $date +" %H-%M " ];
then
	gcloud config set compute/zone asia-south1-c
	gcloud compute instances stop ubuntu-2
	gcloud compute instances stop instance-7
	gcloud config set compute/zone us-west4-b
	gcloud compute instances stop instance-4
	gcloud compute instances stop instance-2
	else
		echo "something wrong"

fi


}

fun
