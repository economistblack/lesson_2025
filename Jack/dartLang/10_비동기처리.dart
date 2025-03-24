main(){
  checkVersion(); //CPU 1
  print('end Process'); //CPU 2 
}

checkVersion()async{ //CPU1이 오래 걸리면 CPU2 먼저 작업할 수 있음
  var version = await lookupVersion(); //기다려..  async .. await
  print(version);
}

int lookupVersion(){
  return 12;
}