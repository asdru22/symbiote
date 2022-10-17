#include <iostream>
#include <string>
#include <fstream>
using namespace std;
int models(string type) {
	int cmd;
	if (type == "connector.en") cmd = 1;
	else if (type == "connector.es") cmd = 2;
	else if (type == "connector.ew") cmd = 3;
	else if (type == "connector.ns") cmd = 4;
	else if (type == "connector.nw") cmd = 5;
	else if (type == "connector.sw") cmd = 6;

	else if (type == "display.root") cmd = 6;

	else (cmd+1)/2.5;
	return cmd;
}
int main() {
	ofstream file;
	file.open("C:/Users/aln20/Documents/GitHub/electromancy/datapack/data/asy/functions/block/billboard/handling/tree.mcfunction");
	int x, y, cmd,counter =0;
	ifstream infile;
	string str,type;
	infile.open("in.txt");
	if (infile.fail()) cout << "fail";
	while (infile >> str) {
		cout << str << endl;
		if (counter == 0) {
			cmd = models(str);
			type = str;
			if(type[0]=='c') type="connector";
		}
		else if (counter == 1)  x = stoi(str);
		else if (counter == 2)  {
			y = stoi(str);
			file << "summon armor_stand ~ ~" << y / 2.0 << " ~"<< x / 2.0;
			file << " {NoGravity:1b, Invulnerable : 1b, Marker : 1b, Invisible:1b, Tags : [\"asy.billboard\", \"asy.display\", \"asy.setup\"], ArmorItems : [{}, {}, {}, { id:\"minecraft:";
			if(type=="connector") file<< "quartz";
			else file<<"gunpowder";
			file <<"\",Count : 1b,tag : {CustomModelData:" << 6901000 + cmd << ",asy:{cmd:" << 6901000 + cmd << ",click:\"" << type << "\"}}}]}\n";
			cmd = 0;
			counter = -1;
		}
		counter += 1;
	}
	file << "\nexecute as @e[type=#asy:billboard,tag=asy.billboard,tag=asy.setup] run function asy:block/billboard/handling/setup";
	infile.close();
	return 0;
}