DialogueTree = 000000;
DialogueTreeCounter = 0;
CurrentLine = 0; //initialisation

//read[DialogueTree, CurrentLine]=a
read[000000,0] = "hi";
read[000000,1] ="is the setting correct [y/n]";
read[000000,2] = "wanna change it [y/n]";
read[000000,3] = "oh, [END]";

read[000001,2] = "nice [END]";

read[000010,3] = "[input]";
read[000010,4] = "groovy [END]";


scr_update_dialoguepath(QueryResult)
