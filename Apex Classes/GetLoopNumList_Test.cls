@isTest
public class GetLoopNumList_Test {
    
    static testMethod void GetLoopTest1() {
        GetLoopNumList.GetLoopNumListRequest req = new GetLoopNumList.GetLoopNumListRequest();
        req.loopNum = 3;
        List<GetLoopNumList.GetLoopNumListRequest> reqs = new List<GetLoopNumList.GetLoopNumListRequest>();
        reqs.add(req);
        
        System.debug(GetLoopNumList.GetLoopNumList(reqs));
        
       System.assertEquals(1,GetLoopNumList.GetLoopNumList(reqs)[0].results_output_list[0]);
       System.assertEquals(2,GetLoopNumList.GetLoopNumList(reqs)[0].results_output_list[1]);
       System.assertEquals(3,GetLoopNumList.GetLoopNumList(reqs)[0].results_output_list[2]);
    }

}