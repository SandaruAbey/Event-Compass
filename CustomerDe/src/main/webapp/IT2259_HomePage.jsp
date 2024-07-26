<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="IT2259_Home.css">
  <link rel="stylesheet" href="IT2259_event.css">
    <link rel="stylesheet" href="IT2259_footer.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cabin:wght@600&family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
  <title>EventCompass.com</title>
</head>
<body>
    <header>
        <a href = "IT2259_HomePage.jsp"><img src = "logo.png" class = "logo"></a>
        <ul>
           <li><a href = "IT2259_HomePage.jsp">Home</li></a>
           <li><a href = "IT2259_About.jsp">About</a></li>
            <li><a href = "#">Contact</li></a>
            
            <li><button class = "Login"><a href = "IT2259_Login.jsp" id = "loginbtn">Login</a></button></li>
        </ul>
        
    </header>
    <div class="container">
        <div id="slide">
            <div class="item" style="background-image: url(https://schoolofmusic.ucla.edu/app/uploads/2023/03/Diar_web-1-scaled.jpg);">
                <div class="content">
                    <div class="name">Accostic Conset </div>   
                    <div class="des"><h2>Saturday, May 20th, 2023</h2>The Acoustic Concert is an enchanting evening of soul-soothing music, featuring talented artists who showcase their acoustic talents. It's an intimate gathering that celebrates the beauty of acoustic soundscapes.</div>
                    <button class = "seemore">See more</button>
                </div>
            </div>
            <div class="item" style="background-image: url(https://www.jonesaroundtheworld.com/wp-content/uploads/2019/09/Bonnaroo-Music-Festival-Best-2020-Festivals.jpg);">
                <div class="content">
                    <div class="name">BOMAROO</div>
                    <div class="des"><h2> Thursday, August 3rd, 2023, to Sunday, August 6th, 2023</h2>BOMAROO is a vibrant and diverse music and arts festival, offering an immersive experience with top-tier musical acts, mesmerizing art installations, and a sense of community like no other.</div>
                    <button class = "seemore">See more</button>
                </div>
            </div>
            <div class="item" style="background-image: url(https://photo-assets.usopen.org/images/pics/large/f_20230825_USO_Q3_DN1_0669.jpg);">
                <div class="content">
                    <div class="name">Open Mic 2023</div>
                    <div class="des"><h2>Friday, June 9th, 2023</h2>Open Mic 2023 is an inclusive platform for budding artists, poets, musicians, and comedians to shine. It's a night filled with raw talent, heartfelt performances, and supportive camaraderie.</div>
                    <button class = "seemore">See more</button>
                </div>
            </div>
            
        </div>
        <div class="buttons">
            <button id="prev"><i class="fa-solid fa-angle-left"></i></button>
            <button id="next"><i class="fa-solid fa-angle-right"></i></button>
        </div>
    </div>

    <div class = "upcoming">
        <div class = "upcomingName"><h1>UPCOMING EVENTS</h1></div>
        <div class = "eventrow">
            <div class = "event" id = "event1">
              <div class = "detailarea">
              <h2 class = "eventtitle">PUNO 353</h2>
              <h5 class = "date">21th of December 2023</h5>
              <button class = "viewbtn">View Details</button>
              </div>
            </div>
        
            <div class = "event" id = "event2">
              <div class = "detailarea">
              <h2 class = "eventtitle">HYPE</h2>
              <h5 class = "date">21th of December 2023</h5>
              <button class = "viewbtn">View Details</button>
              </div>
            </div>
        
            <div class = "event" id = "event3">
              <div class = "detailarea">
              <h2 class = "eventtitle">VIGILIA</h2>
              <h5 class = "date">4th of March 2024</h5>
              <button class = "viewbtn">View Details</button>
              </div>
            </div>
        
            <div class = "event" id = "event4">
              <div class = "detailarea">
              <h2 class = "eventtitle">PINK</h2>
              <h5 class = "date">9th of November 2023</h5>
              <button class = "viewbtn">View Details</button>
              </div>
            </div>
    </div>

    <div class = "eventrow">
        <div class = "event" id = "event5">
          <div class = "detailarea">
          <h2 class = "eventtitle">SAISON</h2>
          <h5 class = "date">17th of December 2023</h5>
          <button class = "viewbtn">View Details</button>
          </div>
        </div>
    
        <div class = "event" id = "event6">
          <div class = "detailarea">
          <h2 class = "eventtitle">CARNAVAL</h2>
          <h5 class = "date">30th of Octomber 2023</h5>
          <button class = "viewbtn">View Details</button>
          </div>
        </div>
    
        <div class = "event" id = "event7">
          <div class = "detailarea">
          <h2 class = "eventtitle">AFTER PARTY</h2>
          <h5 class = "date">4th of March 2024</h5>
          <button class = "viewbtn">View Details</button>
          </div>
        </div>
    
        <div class = "event" id = "event8">
          <div class = "detailarea">
          <h2 class = "eventtitle">AOG</h2>
          <h5 class = "date">27th of March 2024</h5>
          <button class = "viewbtn">View Details</button>
          </div>
        </div>
</div>
    </div>
<footer>
  <div class = "fooretmain">
  <div class = foologo>
    <a href = "#"><img src = "logo.png" class = "fooologo"></a>
  </div>
  <div class = "foonavi">
    <ul>
      <li id = "foo"><a href ="#">FAQ</a>
      <li id = "foo"><a href ="#">Pricing</a>
      <li id = "foo"><a href ="#"> Manager Login</a>
      <li id = "foo"><a href ="#">Admin Login</a>
      
    </ul>
  </div>

  <div class = "foosocial">
    <i class="fa-brands fa-facebook fa-xl" style="color: #ffffff;" ></i><br>
    <i class="fa-brands fa-instagram fa-xl" style="color: #ffffff;"></i><br>
    <i class="fa-brands fa-github fa-xl" style="color: #ffffff;"></i><br>
    <i class="fa-brands fa-tiktok fa-xl" style="color: #ffffff;"></i>
    
  </div>

</div>
</footer>
    <script src="IT2259_homeEvent.js"></script>
    
   

</body>
</html>
