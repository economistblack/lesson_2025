// List를 이용하여 5보다 작은 숫자만 List에 넣기


main(){
  List<int> nums = [1,1,2,3,5,8,13,21,34,66,89,2,3,4,5,6,7];
  List<int> result = [];

  // int compareData = nums[0];

  // for(int i=0; i < nums.length; i++){
  //       compareData = nums[i];
  //   if(compareData < 5){
  //       result.add(compareData); 
  //   }

  // }
  //   print(result);
  
  for(int num in nums){
    if(num < 5){
      result.add(num);
    }
  }
  print(result);

  // List Comprehension

  print([for(int num in nums) if(num<5) num]);


}