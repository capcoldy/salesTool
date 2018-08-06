 CHE/*********************************************************************************
** Module Name : AccountDealRoomViewCRM ...updated data
** Description : This is for showing the section of dealrooms in an Account Detail Page
** Throws : NA
** Calls : NA
<<<<<<< HEAD
** Test Class : TestAccountDealRoomView_ctrl new change by 6.40
=======
** Test Class : TestAccountDealRoomView_ctrl 
** nnnhgfhg for usertestforyou dated 1/8/2017 by userfortest salestool by 1.15pm CHECK
>>>>>>> f169ba205c6b89082d246681493a9e0011ba328d 
** Organization : Navatar Group
** Revision History:-
** Version Date(YYYY-MM-DD)       Author      Description of Action
** 1.0     2015-06-08             Vanita      It will fetch the Deals 
** 1.3     2017-02-06             Shaharyar   To Restrict Deal On Account Detail Page With Respect To UserPermission 
*********************************************************************************/
public with sharing class AccountDealRoomViewCRM_ctrl{
    
    public string sessionID {get;set;}    
   
    public  string drAdminNewStr{get;set;}
    public  string mnaOrgId{get;set;}
    
    public AccountDealRoomViewCRM_ctrl(){
        try{
            string paramString= ApexPages.currentPage().getParameters().get('SessionID');
             System.debug('Session Id---------'+paramString);              
            List<string>  stringUrlParameters = paramString.split('_@_');
          
            if(stringUrlParameters.size()>0)
            {
                accountID = stringUrlParameters[2];
                serverUrl = stringUrlParameters[1];
                namespace = stringUrlParameters[4];
                mnaOrgId =  stringUrlParameters[3];   
            }
            sessionID = stringUrlParameters[0];   //session id from the querystring
            LoadGrid();
        }
        catch(Exception ex){                
            apexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,ex.getMessage()); 
            ApexPages.addMessage(myMsg);   
        }
    }
    
}
