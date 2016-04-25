#define DXL_BUS_SERIAL1 1  //Dynamixel on Serial1(USART1)  <-OpenCM9.04
#define DXL_BUS_SERIAL2 2  //Dynamixel on Serial2(USART2)  <-LN101,BT210
#define DXL_BUS_SERIAL3 3  //Dynamixel on Serial3(USART3)  <-OpenCM 485EXP
#define STEP_DEGREE 0.29296875
#define J_ID  100
#define J_ID2 40
#define GRIPPER_MOTOR 30 
#define J_ID4 10
Dynamixel Dxl(DXL_BUS_SERIAL1); 
 
void setup() {
  Dxl.begin(3);  
  Dxl.setPacketType(DXL_PACKET_TYPE2);
  //Speed has been calculated based on the required RPM.
  //For 3.75RPM which is moving from 45degrees to 90degrees in 2 seconds
  //the speed control setting should be 34 (3.75/0.111328125)
  //For 30RPM which is moving from 0 degree to 180 degrees in 1 second
  //the speed control setting should be 270 (30/0.111328125)
//  Dxl.maxTorque(J_ID,5);
  //Dxl.goalSpeed(J_ID, 34);  //Dynamixel ID 1 Speed Control 34 setting
  //Dxl.jointMode(J_ID); //jointMode() is to use position mode  

  //the speed control setting should be 9 for 1 RPM(1/0.111328125)
//  Dxl.goalSpeed(J_ID, 300);  //Dynamixel ID 1 Speed Control 34 setting
//  Dxl.jointMode(J_ID); //jointMode() is to use position mode
    Dxl.wheelMode(J_ID2);
    delay(100);
  Dxl.goalSpeed(J_ID2, 50);  //Dynamixel ID 2 Speed Control 270 setting
  delay(100);
    Dxl.maxTorque(J_ID2,1020); // it has maxtorque for weak movement
    delay(100);
  Dxl.jointMode(J_ID2);

    Dxl.wheelMode(J_ID);
    delay(100);
  Dxl.goalSpeed(J_ID, 50);  //Dynamixel ID 2 Speed Control 270 setting
  delay(100);
    Dxl.maxTorque(J_ID,1020); // it has maxtorque for weak movement
    delay(100);
  Dxl.jointMode(J_ID);
  
  
      Dxl.wheelMode(GRIPPER_MOTOR);
    delay(100);
  Dxl.goalSpeed(GRIPPER_MOTOR, 50);  //Dynamixel ID 2 Speed Control 270 setting
  delay(100);
    Dxl.maxTorque(GRIPPER_MOTOR,1020); // it has maxtorque for weak movement
    delay(100);
  Dxl.jointMode(GRIPPER_MOTOR);

      Dxl.wheelMode(J_ID4);
    delay(100);
  Dxl.goalSpeed(J_ID4, 50);  //Dynamixel ID 2 Speed Control 270 setting
  delay(100);
    Dxl.maxTorque(J_ID4,1020); // it has maxtorque for weak movement
    delay(100);
  Dxl.jointMode(J_ID4);
}
 
void loop() {
 
  Dxl.goalSpeed(J_ID2, 50);  //Dynamixel ID 2 Speed Control 270 setting
  Dxl.goalSpeed(J_ID, 50);  //Dynamixel ID 2 Speed Control 270 setting
  Dxl.goalSpeed(GRIPPER_MOTOR, 50);  //Dynamixel ID 2 Speed Control 270 setting
  Dxl.goalSpeed(J_ID4, 50);  //Dynamixel ID 2 Speed Control 270 setting
 
  Dxl.goalPosition(J_ID2, (30/STEP_DEGREE));
  Dxl.goalPosition(J_ID, 0); 
  Dxl.goalPosition(GRIPPER_MOTOR, 30/STEP_DEGREE); 
  Dxl.goalPosition(J_ID4, 50/STEP_DEGREE); 
  delay(6000);
 
 
 
  /*Turn second motor to position 0*/
// Dxl.goalPosition(J_ID2, (70/STEP_DEGREE)); 
 //Dxl.goalPosition(J_ID, (50/STEP_DEGREE));
//  Dxl.goalPosition(GRIPPER_MOTOR, 30/STEP_DEGREE); 
 // delay(6000);              
}
