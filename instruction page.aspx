<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="instruction page.aspx.cs" Inherits="projectss.instruction_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            padding:0px;
            margin:0px;
            box-sizing:border-box;
        }

        .heading{/*Main heading */
          padding-left: 550px;
          height: 130px;
          background-color: #03012c;
           color: azure;

          background-image: url('magneq_logo-removebg-preview.png');
          background-size: 80px;
          background-repeat: no-repeat;
          background-position: 450px;
         
    
          padding-top: 25px;
          text-transform: uppercase;
         
        }
        #mag{/*Magneq heading*/
         font-size: 45px;
         color:azure;
        }
        #online{/*Online heading*/
         font-size: 25px;
         padding-left: 120px;
         }
        #name_tech{/*Name and Technology of user information*/
            text-align:left;
            margin-left:-55%;
            margin-top:-40px;
            
        }       
        #camera{/*Camera*/
            height:120px;
            margin-left:75%;
            margin-right:20px;
            margin-top:-103px;
           
          
        }
        #instruction_heading{/*Instruction Heading*/
            font-size:35px;
            color:black;  
            margin-left:20px;
            margin-top:15px;
        }
        ol{/*Ordered list*/
           justify-content:center;
           font-size:20px;
           padding:30px;
           margin-left:20px;
        }
        li{/*List items*/
            padding:8px;
            margin-left:15px;
        }
        .agree{/*Agree checkbox*/
            margin-left:3%;
             font-size:20px;
        }
        #button{/*Next button*/
          margin-left:90%;
        }
        .btn{/*Next button*/
            padding:18px 40px;
            border:2px solid ;
            border-radius:10px;
            margin-top:-60px; 
            font-size:large;
            background-color:#03012c;
            color:aliceblue;  
            display:flex;
        }
        .btn:hover{/*Next button*/
            background-color:#086788;
            cursor:pointer;
       
        }
        #button2{/*Previous button*/
            margin-left:77%;
        }
        .btn2{/*Previous button*/
            padding:18px 40px;
            border:2px solid ;
            border-radius:10px;
            margin-top:70px;
            font-size:large;
            background-color:#03012c;
            color:aliceblue;  
            display:flex;
        }
        .btn2:hover{/*Previous button*/
            background-color:#086788;
            cursor:pointer;
       
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">

        <!-- Main Heading -->
        <div class="heading">      
           <h2 id="mag">magneq software</h2>
           <h4 id="online">online exam</h4>

           <!-- User information: Name and Technology -->
            <div id="name_tech">
            <h3>Name:</h3>
            <h3 >Technology:</h3>
            </div>

            <!-- Code for Camera -->
             <div id="camera">
                <video id="video" width="200px" height="120px";"  ></>

                <canvas id="canvas" width="840" height="480"></>

                <audio id="audio" >

                <!-- Replace 'path/to/audio.mp3' with your actual audio file path -->
                <source src="instruction audio.mp3" type="audio/mp3">
                 Your browser does not support the audio element.
                </audio>

                <!-- <button id="capture" style="margin-left: 1300px;">Capture Photo</button> -->

      <!-- Java Script code for camera -->
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
                const audioTracks = audioStream.getAudioTracks();
                const mediaRecorder = new MediaRecorder(audioStream);
                mediaRecorder.start();
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
        </div>
        
        <!-- Instruction List -->
           <h2 id="instruction_heading">Instructions</h2>
            <ol>
                
                <li>The clock will be set at the server. The countdown timer in the top right corner of screen will display the remaining time available for you to complete the examination. When the timer reaches zero, the examination will end by itself and answers will be automatically saved.</li>
                <li>You have only 30 minutes of time for the examination.</li>
                <li>A camera will be monitering you throughout the exam.</li>
                <li>The result will be published immediatly after submission of the exam.</li>
                <li>The qestions will be asked based on the technology you have selected.</li>
                <li>Click on  Next button to navigate to the next question .</li>
                 <li>Click on Previous  button to navigate to the previous question .</li>

            </ol>

        <!-- Checkbox for agree -->
        <asp:CheckBox ID="agree"  runat="server"  class="agree"/>  I Agree and Proceed<br />

        <!-- Previous Button -->
        <asp:Button ID="button2" runat="server" text="Previous" CssClass="btn2" OnClick="button_Click" />
        <!-- Next Button -->
        <asp:Button ID="button" runat="server"  text="Next" Class="btn" OnClick="button_Click"  />
       
    </form>
</body>

</html>
