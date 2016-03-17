public class Aggregate_Day10
{
 
public void leadRecord()
{
  List <AggregateResult> listLeadSource = [SELECT count(id),leadsource FROM lead GROUP BY leadsource HAVING COUNT(leadsource) >10];
  system.debug(listLeadSource);
}


public void opportunityAmounts()
{           
 List<AggregateResult> listRef = new List<AggregateResult>([SELECT sum(amount) sumAmount,fiscalYear fiscalYear,StageName stage 
 FROM Opportunity WHERE closeDate = THIS_FISCAL_YEAR and StageName = 'Closed Won'GROUP BY fiscalYear,StageName ]);
                                                                                 
 Map<Integer, Integer> result = new Map<Integer, Integer>();
 for(AggregateResult aggregateResult: listRef)
 {  
     result.put(Integer.ValueOf(aggregateResult.get('fiscalYear')), Integer.ValueOf(aggregateResult.get('sumAmount')));            
 }
 system.debug('Result : '+result );
}         


public void LeadStatus()
{

 List<AggregateResult> listLeadByStatusBySource = [SELECT status,leadsource,count(name) countname FROM Lead GROUP BY status,leadsource];

 Map<String,Integer> innerMap;
 Map<String,Map<String,Integer>> mapLeadByStatusBySource = new Map<String,Map<String,Integer>>{};
 
 for(AggregateResult eachAggregateResult : listLeadByStatusBySource)
 {
    if(mapLeadByStatusBySource.containsKey((String)eachAggregateResult .get('Status')))
    {
        system.debug('if part');
      innerMap = mapLeadByStatusBySource.get((String)eachAggregateResult .get('Status'));
      innerMap.put((String)eachAggregateResult .get('LeadSource'),(Integer)eachAggregateResult .get('countname')); 
     mapLeadByStatusBySource.put((String)eachAggregateResult .get('Status'),innerMap);   
        system.debug(mapLeadByStatusBySource);                                                           
     }              
     else{
     system.debug('else part');
      mapLeadByStatusBySource.put((String)eachAggregateResult .get('Status'),new Map<String,Integer>{(String)eachAggregateResult .get('LeadSource') => 
                                                   (Integer)eachAggregateResult .get('countname')});
          system.debug(mapLeadByStatusBySource);                         
         }           
   }
   System.debug('Result :'+mapLeadByStatusBySource);
   }
 }