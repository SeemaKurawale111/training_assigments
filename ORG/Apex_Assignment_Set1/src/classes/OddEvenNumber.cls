public with sharing class OddEvenNumber 
{
 public void OddEven(integer x)
   {
      integer result = math.mod(x,2);
      
      if(result==0)
        System.debug('Even Number');
      else
        System.debug('Odd Number ');
   }
}