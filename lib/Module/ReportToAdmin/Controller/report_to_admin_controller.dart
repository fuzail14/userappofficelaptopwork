import 'package:get/get.dart';

class ReportToAdminController extends GetxController{


var isCompleted = false.obs;  



 

   void Completed(bool value) {  
  
    if(isCompleted == false)
    {  
     
        isCompleted.value = true;  
        
      
    }  
    else  
    {  
     
        isCompleted.value = false;  
        
      
    }  
  }  
 
}