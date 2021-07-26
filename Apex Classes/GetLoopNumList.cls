public class GetLoopNumList {
   
    @InvocableMethod(label='Get List for Loop' description='Get List for Loop')
    public static List<GetLoopNumListResult> GetLoopNumList(List<GetLoopNumListRequest> requests) {
        List<GetLoopNumListResult> results = new List<GetLoopNumListResult>();

        for (GetLoopNumListRequest request : requests) {
      		results.add(addList(request));
    	}
        return results;
    }
    
    public  static GetLoopNumListResult addList(GetLoopNumListRequest request) {
        GetLoopNumListResult result = new GetLoopNumListResult();
        List<Integer> tmpValues = new List<Integer>();
        Integer count = 1;
         
        while (count <= request.loopNum) {
            tmpValues.add(count);
            count++;
        }
        result.results_output_list = tmpValues;
        return result;
    }
    
    public class GetLoopNumListRequest {
        @InvocableVariable(required=true)
        public Integer loopNum;
    }
    
    public class GetLoopNumListResult {
        @InvocableVariable(required=true)
        public List<Integer> results_output_list;
    }
}