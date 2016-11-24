///scr_update_dialoguepath(QueryChoice);
{
if argument0 = true { //if the answer was yes
    //set the current bit [it's a binary system]
    DialogueTree = (DialogueTree | (1 << DialogueTreeCounter));
    }
DialogueTreeCounter += 1; //add one to the no. of how many choices we have made
}
