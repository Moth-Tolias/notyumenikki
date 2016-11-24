///scr_set_variable(OptionVar, MinusKey, PlusKey1, PlusKey2, Step);
var OptionVar, MinusKey, PlusKey1, PlusKey2, Step;
OptionVar = argument0;
MinusKey = argument1;
PlusKey1 = argument2;
PlusKey2 = argument3;
Step = argument4;

if (PlusKey1 or PlusKey2) {
   return (OptionVar + Step);
   } 
   else if MinusKey {
       return (OptionVar - Step);
       }

return OptionVar;
