# GenFlight

The basic idea of the project is to use a neural network to control an "air plane"(by air plane I am refereing to a 2D trigangle, the air plane simulation is not the main focus of this project). I am using it's position, speed and slight as inputs...
  INPUT LAYER
  -x position coordinate
  -y position coordinate
  -x speed velocity
  -y speed velocity
  -First slight line
    .
    .
    .
  -N slight line
Originally I had two hidden layers but led to overfitting and the planes where memorizing the path and not learning intellegent behavious. It currently has no hidden layers.
  OUTPUT LAYER
  -forward
  -left
  -right
  -back
  -coast
  
  
Note about the history: This project origianl started on my processingPractice repo but has it quickly grow I ported it over to it's own repo(check out processingPractice if you want to see the history of this project).
