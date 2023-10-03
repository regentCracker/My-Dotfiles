#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <cstring>
#include <iostream>
using namespace std;


int main(int argc, char* argv[])
{
	FILE* pipe = popen("xinput list", "r");
	char buffer[128];
	string result = "";
	string temp;
	int ret;
	while (fgets(buffer, sizeof(buffer), pipe) != NULL) {
		temp = buffer;
		if(temp.find("Touchpad")!=string::npos){
			string num = "";
			num += temp[temp.find("id=")+3];
			num += temp[temp.find("id=")+4]; 
			ret = stoi(num); 
		}
		result += buffer;
	}
	cout << ret;
	pclose(pipe);



	return ret;
}
