#include <iostream>
#include <string>
#include <fstream>
using namespace std;

const string r1 = "{\"texture_size\":[64,64],\"textures\":{\"0\":\"asy:block/billboard/display/background\",\"1\":\"asy:block/billboard/display/";
const string r2 = "\"},\"elements\":[{\"from\":[8,-16,-16],\"to\":[8,32,32],\"rotation\":{\"angle\":0,\"axis\":\"y\",\"origin\":[8,0,8]},\"faces\":{\"west\":{\"uv\":[0,0,16,16],\"texture\":\"#0\"}}},{\"from\":[8,-16,-16],\"to\":[8,32,32],\"rotation\":{\"angle\":0,\"axis\":\"y\",\"origin\":[8,0,8]},\"faces\":{\"west\":{\"uv\":[0,0,16,16],\"texture\":\"#1\"}}}],\"display\":{\"thirdperson_righthand\":{\"rotation\":[75,45,0],\"translation\":[0,2.5,0],\"scale\":[0.375,0.375,0.375]},\"thirdperson_lefthand\":{\"rotation\":[75,45,0],\"translation\":[0,2.5,0],\"scale\":[0.375,0.375,0.375]},\"firstperson_righthand\":{\"rotation\":[0,45,0],\"scale\":[0.4,0.4,0.4]},\"firstperson_lefthand\":{\"rotation\":[0,225,0],\"scale\":[0.4,0.4,0.4]},\"ground\":{\"translation\":[0,3,0],\"scale\":[0.25,0.25,0.25]},\"gui\":{\"rotation\":[30,225,0],\"scale\":[0.625,0.625,0.625]},\"head\":{\"rotation\":[0,180,0],\"translation\":[5,-30.09,0],\"scale\":[1.602,1.602,1.602]},\"fixed\":{\"scale\":[0.5,0.5,0.5]}}}";
const string g1 = "{\"texture_size\":[32,32],\"textures\":{\"0\":\"asy:block/billboard/buttons/";
const string g2 = "\"},\"elements\":[{\"from\":[0,0,8],\"to\":[16,16,8],\"faces\":{\"north\":{\"uv\":[16,0,0,16],\"texture\":\"#0\"},\"east\":{\"uv\":[0,0,0,8],\"texture\":\"#0\"},\"south\":{\"uv\":[0,0,16,16],\"texture\":\"#0\"},\"west\":{\"uv\":[0,0,0,8],\"texture\":\"#0\"},\"up\":{\"uv\":[8,0,0,0],\"texture\":\"#0\"},\"down\":{\"uv\":[8,0,0,0],\"texture\":\"#0\"}}}],\"display\":{\"head\":{\"rotation\":[0,90.5,0],\"translation\":[7.75,-33,0],\"scale\":[0.8,0.8,0.8]}}}";

int models(string type) {
	int cmd;
	if (type == "$en") cmd = 1;
	else if (type == "$es") cmd = 2;
	else if (type == "$ew") cmd = 3;
	else if (type == "$ns") cmd = 4;
	else if (type == "$nw") cmd = 5;
	else if (type == "$sw") cmd = 6;
	else if (type == "$wns") cmd = 7;
	else if (type == "$ens") cmd = 8;

	else (cmd*2+1)/2;
	return cmd;
}
int main() {
	ofstream file,redstone,gunpowder,writer;
	file.open("C:/Users/aln20/Documents/GitHub/electromancy/datapack/data/asy/functions/block/billboard/handling/tree.mcfunction");
	redstone.open("C:Users/aln20/Documents/GitHub/electromancy/resourcepack/assets/minecraft/models/item/redstone.json");
	gunpowder.open("C:/Users/aln20/Documents/GitHub/electromancy/resourcepack/assets/minecraft/models/item/gunpowder.json");

	int x, y, cmd,counter =0,iter=0;
	ifstream infile;
	string str,type;
	infile.open("in.txt");

	gunpowder<<"{\"parent\": \"minecraft:item/generated\",\"textures\": {\"layer0\": \"minecraft:item/gunpowder\"},\"overrides\": [";
	redstone<<"{\"parent\": \"minecraft:item/generated\",\"textures\": {\"layer0\": \"minecraft:item/redstone\"},\"overrides\": [";

	if (infile.fail()) cout << "fail";
	while (infile >> str) {
		//cout << str << endl;
		if (counter == 0) {
			if(type[0]=='$') cmd = models(str);
			type = str;
		}
		else if (counter == 1)  x = stoi(str);
		else if (counter == 2)  {
			y = stoi(str);
			file << "summon armor_stand ~ ~" << y / 2.0 << " ~"<< x / 2.0;
			file << " {NoGravity:1b, Invulnerable : 1b, Marker : 1b, Invisible:1b, Tags : [\"asy.billboard\", \"asy.display\", \"asy.setup\"], ArmorItems : [{}, {}, {}, { id:\"minecraft:";
			if(type[0]=='$') {
				file<< "quartz";
				type= "connector";
				file <<"\",Count : 1b,tag : {CustomModelData:" << 6901000 + cmd << "}}]}\n";

			}
			else{
				file<<"gunpowder";
				redstone << "{\"predicate\": {\"custom_model_data\": "<<6901000 + iter<<"},\"model\": \"asy:block/billboard/display/"<<type.erase(0,1)<<"\"},\n";
				gunpowder << "{\"predicate\": {\"custom_model_data\": "<<6901000 + iter<<"},\"model\": \"asy:block/billboard/button/"<<type<<"\"},\n";
				file <<"\",Count : 1b,tag : {CustomModelData:" << 6901000 + iter << ",asy:{cmd:" << 6901000 + iter << ",click:\"" << type << "\"}}}]}\n";

				writer.open("gunpowder/"+type+".json");
				writer<<g1<<type<<g2;
				writer.close();

				writer.open("redstone/"+type+".json");
				writer<<r1<<type<<r2;
				writer.close();

				iter+=1;
			}
			cmd = 0;
			counter = -1;
		}
		counter += 1;
	}
	file << "\nexecute as @e[type=#asy:billboard,tag=asy.billboard,tag=asy.setup] run function asy:block/billboard/handling/setup";
	redstone<<"]}";
	gunpowder<<"]}";

	infile.close();
	return 0;
}

//quartz: connectors, redstone: display,gunpowder:button