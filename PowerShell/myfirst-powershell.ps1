################################################################################
#
#################################################################################
#It sets running the script as administrator
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Creates a log file called d1.log.
Start-Transcript -Path "C:\DevOps\Logs\d1.log" -Append

#Runs the command hostname in the powershell prompt and assigns it to a variable called $Hostname
$Hostname = hostname

#Checks if you are logged in to DYNCWIN81?
#For you --- open a command prompt or powershell prompt and type hostname --- thats how you get the
#hostname to put in below if condition, if you give a different name the script will error out.
if ($Hostname -eq 'DYNCWIN81')
{
	echo ""
	echo "***************************************************************************"
	
	echo "" 
	echo "You are logged in to $hostname."
	echo ""
	echo "***************************************************************************"
}
Stop-Transcript
