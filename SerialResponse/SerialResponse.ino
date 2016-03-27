/*******************************************************************************
 *  Serial Response
 *  
 *  Skeleton code for sending a single value to a serial host. Establishes a
 *  connection with the host, then responds with an integer value when the
 *  command character is sent. Can be used with SerialRequest.m to interface
 *  an Arduino with MATLAB
 *  
 *  Chase Conley
 *  Last Updated: Mar 27 2016
 *  Distributed under MIT License
 *  
 ******************************************************************************/

char commandChar = 'g'; // Character that, when received from master, will
                        // trigger a response. 
                        
char inByte = 0;        // Place holder for incoming character

void setup() {
  
  Serial.begin(9600);
  
  establishContact();  // Send byte to establish contact until master responds
}

void loop() {
  
  if(Serial.available()){ // If there is incoming serial data, we need to do
                          // something with it
    
    inByte = Serial.read(); // Store the command byte
    
    if(inByte == commandChar){ // Check to see if it matches the command char
      
      int response = getResponse(); // Get the response integer
      
      Serial.println(response); // Send it back to the master
    }
  }
}

int getResponse(){
  int response = 2000;
  
    // YOUR CODE FOR GENERATING THE INTEGER TO SEND BACK GOES HERE

  return response;
}

 void establishContact() {
     while (Serial.available() <= 0) {
       Serial.println('A');   // send a capital A
       delay(300);
     }
 }
