#define DXL_BUS_SERIAL1 1  //Dynamixel on Serial1(USART1)  <-OpenCM9.04
#define DXL_BUS_SERIAL2 2  //Dynamixel on Serial2(USART2)  <-LN101,BT210
#define DXL_BUS_SERIAL3 3  //Dynamixel on Serial3(USART3)  <-OpenCM 485EXP
#define ID1 1
#define ID2 2
#define ID3 3
#define ID4 4
Dynamixel Dxl(DXL_BUS_SERIAL1);
void setup() 
{
  Dxl.begin(3);
  SerialUSB.begin();
  Dxl.wheelMode(ID1);
  Dxl.wheelMode(ID2);
  Dxl.wheelMode(ID3);
  Dxl.wheelMode(ID4);
  SerialUSB.attachInterrupt(MOTOR_POS);  
}

void loop() 
{


}
void MOTOR_POS( byte* buffer, byte n)
{
  int i = 0;
  int j = 0;
  int  k = 0;
  int items;
  int firstIteration = 1;
  char arr[5][4];

  for(int l=0; l<17; l++) // To Do: change to 'for' 15 iteration
  {
    if(firstIteration == 1)
      {
        items = buffer[i];
        i = i + 2;
        firstIteration++;
      }
    
    if(buffer[i] == '\0')
      break;
    else 
    {
      if(buffer[i] == '/')
      {
        k = 0;
        j++;
  	i++;
      }
      arr[j][k] = buffer[i];
      k++;
      i++;
    }	
  } 

  int M1 = 0;
  int M2 = 0;
  int M3 = 0;
  int M4 = 0;

  for(int ij = arr[4][0]; ij >= 1; ij--)
    M1 += ((arr[0][ij] - 48) * (pow(10, (ij-1))));
  
  for(int ij = arr[4][1]; ij >= 1; ij--)
    M2 += ((arr[1][ij] - 48) * (pow(10, (ij-1))));
  
  for(int ij = arr[4][2]; ij >= 1; ij--)
    M3 += ((arr[2][ij] - 48) * (pow(10, (ij-1))));
  
  for(int ij = arr[4][3]; ij >= 1; ij--)
    M4 += ((arr[3][ij] - 48) * (pow(10, (ij-1))));
  
   
  Dxl.goalPosition(ID1, M1); //ID 1 dynamixel moves to position 
  //Dxl.goalPosition(ID2, M2);//ID 2 dynamixel moves to position 
  //Dxl.goalPosition(ID3, M3); //ID 3 dynamixel moves to position 
  //Dxl.goalPosition(ID4, M4); //ID 3 dynamixel moves to position 
}
