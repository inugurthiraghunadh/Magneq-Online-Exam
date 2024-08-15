<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="projectss.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
   
</head>
<body>
       
      <div>
 <video id="video" width="200px" height="120px";"  ></>

 <canvas id="canvas" width="840" height="480"></>

  <audio id="audio" >
        <!-- Replace 'path/to/audio.mp3' with your actual audio file path -->
        <source src="instruction audio.mp3" type="audio/mp3">
        Your browser does not support the audio element.
    </audio>

 <!-- <button id="capture" style="margin-left: 1300px;">Capture Photo</button> -->

 <script>
     // Access the video and canvas elements
     const video = document.getElementById('video');
     const canvas = document.getElementById('canvas');
     const context = canvas.getContext('2d');
     const captureButton = document.getElementById('capture');
     const audio = document.getElementById('audio');

     // Request access to the camera and microphone
     Promise.all([
         navigator.mediaDevices.getUserMedia({ video: true }),
         navigator.mediaDevices.getUserMedia({ audio: true })
     ])
         .then(streams => {
             // Access video stream
             video.srcObject = streams[0];
             video.play();

             // Access audio stream (can be used for further processing if needed)
             const audioStream = streams[1];
             console.log('Microphone access granted');

     // Optional: You can use the audio stream here
     // const audioTracks = audioStream.getAudioTracks();
     // const mediaRecorder = new MediaRecorder(audioStream);
     // mediaRecorder.start();
         })
         .then(() => {
             // Play predefined audio file after access is granted
             audio.play();
         })
         .catch(error => {
             console.error('Error accessing media devices:', error);
         });

     // Capture a frame from the video
     captureButton.addEventListener('click', () => {
         context.drawImage(video, 0, 0, canvas.width, canvas.height);
     });
 </script>
    

      </div>


   
</body>
</html>
