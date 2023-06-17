
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
  <title>Practical-9</title>

  <style>
    /* Reset all Margins & Padding */
    * {
      padding: 0;
      margin: 0;
      box-sizing: border-box;
      font-family: Arial, Helvetica, sans-serif;
    }

    /*
      --Resolve Position Fixed Issue--
                      &
        ----------Smooth Scroll ------
      */

    html {
      scroll-padding-top: 70px;
      scroll-behavior: smooth;
    }

    .grid-image {
      width: 200px; /* Adjust the width as per your requirement */
      height: 200px; /* Adjust the height as per your requirement */
    }

    #container {
      width: 100%;
      max-width: 1200px;
      margin: auto;
    }

    /* ------Header Container-------- */

    #header {
      background-color: grey;
      width: 100%;
      height: 70px;
      max-width: 1200px;
      position: fixed;
      top: 0;
      height: 70px;
    }

    /* Navigation Menu  */
    .menu {
      list-style: none;
      float: right;
      padding: 0 20px;
    }

    .menu li {
      display: inline-block;
      line-height: 70px;
    }

    .menu li a {
      transition: 0.4s;
      display: block;
      text-decoration: none;
      color: white;
      padding: 0px 20px;
      font-size: 20px;
      text-transform: uppercase;
    }

    .menu li a:hover {
      color: black;
      background-color: white;
    }

    .show-btn,
    .hide-btn,
    #chk {
      font-size: 30px;
      line-height: 70px;
      color: white;
      display: none;
      float: right;
      padding-right: 20px;
    }

    /* ------------------Banner ------------- */

    #banner {
      width: 100%;
      margin-top: 90px;
      height: 680px;
      margin-bottom: 15px;
      display: flex;
      font-size: 40px;
      color: white;
    }

    #banner {
      background-image: url(https://img.freepik.com/free-vector/gradient-devops-illustration_23-2149369792.jpg);
      background-size: cover;
      background-position: center;
    }

    #banner h2 {
      margin: 20px 20px;
      color: #fff;
    }

    /* ------- Team Members ----- */

    #circle-container {
      width: 100%;
      margin: 15px auto;
    }

    #circle-container::after {
      content: '';
      display: block;
      clear: both;
    }

    .circle img {
      height: 250px;
      width: 250px;
      border-radius: 50%;
      background-color: goldenrod;
      float: left;
      margin-left: 40px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 30px;
    }

    /* -------------About Us-------------- */
    #sec2-container::after {
      content: '';
      display: block;
      clear: both;
    }

    #left-side {
      width: 50%;
      height: 550px;
      background-color: gray;
      float: left;
      color: #fff;
    }

    #left-p>h2 {
      text-align: left;
      margin: 10px 5px;
    }

    #left-p>p {
      font-size: 20px;
      padding: 10px;
      text-align: justify;
      line-height: 28px;
    }

    #right-side {
      width: 48%;
      height: 550px;
      float: right;
    }

    .artical {
      height: 31%;
      margin-bottom: 20px;
      background-color: chocolate;
      display: flex;
      justify-content: center;
      font-size: 20px;
      font-family: Arial, Helvetica, sans-serif;
      color: black;
      overflow: hidden;
    }

    #p1 {
      background-image: url(https://imgur.com/JyMz0CR.jpg);
      background-size: cover;
      background-repeat: no-repeat;
    }

    #p2 {
      background-image: url(https://imgur.com/GFLWoXM.jpeg);
      background-size: cover;
      background-repeat: no-repeat;
    }

    #p3 {
      background-image: url(https://imgur.com/uzmZqZA.jpg);
      background-size: cover;
      background-repeat: no-repeat;
    }

    /* --------- Technologies Used------------ */
    #grid-container {
      width: 100%;
      margin: 15px auto;
    }

    #grid-container::after {
      content: '';
      display: block;
      clear: both;
    }

    .grid {
      width: 20%;
      float: left;
      margin-left: 50px;
      background-color: lightgrey;
      border-radius: 8px;
      box-shadow: 0 5px 5px rgba(0, 0, 0, 0.15);
    }

    .grid>img {
      width: 100%;
      margin-bottom: 10px;
    }

    .grid>h4 {
      margin: 0px 10px;
      text-align: center;
    }

    .grid>p {
      margin: 10px;
      font-size: 15px;
      text-align: justify;
      line-height: 25px;
      color: white;
    }

    .grid>a {
      display: block;
      margin: 0 auto;
      text-align: center;
      color: #fff;
      background-color: red;
      text-decoration: none;
      padding: 10px;
      border-radius: 8px;
    }

    h1 {
      color: black;
      font-size: 40px;
      text-align: center;
      padding: 25px 0px;
    }

    .grid>a:hover {
      background-color: blue;
    }

    /* -------Footer Section ------- */
    #footer {
      background-color: plum;
      height: 100px;
    }

    #footer>p {
      font-size: 16px;
      color: black;
      text-align: center;
      padding: 20px;
    }

    /* 1. First Break-point */
    /* 801px - 1199px */

    @media (min-width: 801px) and (max-width: 1199px) {
      .menu {
        list-style: none;
        float: right;
      }

      .menu li {
        line-height: 70px;
        display: inline-block;
      }

      .grid-image {
        width: 200px; /* Adjust the width as per your requirement */
        height: 200px; /* Adjust the height as per your requirement */
      }

      .menu li a {
        display: block;
        text-decoration: none;
        color: white;
        padding: 0px 20px;
        font-size: 20px;
        text-transform: uppercase;
      }

      .menu li a:hover {
        color: black;
        background-color: white;
      }

      html {
        scroll-padding-top: 70px;
        scroll-behavior: smooth;
      }

      #container {
        width: 100%;
      }

      .show-btn,
      .hide-btn,
      #chk {
        font-size: 30px;
        line-height: 70px;
        color: white;
        display: none;
        float: right;
        padding-right: 20px;
      }

      /* ------Header Container-------- */

      #header {
        width: 100%;
        background-color: grey;
        position: fixed;
        top: 0;
        height: 70px;
      }

      /* ------------------Banner ------------- */

      #banner {
        width: 100%;
        margin-top: 90px;
        height: 680px;
        margin-bottom: 15px;
        display: flex;
        font-size: 40px;
        color: white;
      }

      #banner {
        background-image: url(https://imgur.com/qIxEnMl.jpg);
        background-size: cover;
        background-position: center;
      }

      #banner h2 {
        margin: 20px 20px;
        color: #fff;
      }

      /* ------- Team Members ----- */

      #circle-container {
        width: 100%;
      }

      #circle-container::after {
        content: '';
        display: block;
        clear: both;
      }

      .circle img {
        height: 250px;
        width: 250px;
        border-radius: 50%;
        background-color: goldenrod;
        float: left;
        margin-left: 15%;
        margin-bottom: 20px;
      }

      /* -------------About Us-------------- */

      #sec2-container::after {
        content: '';
        display: block;
        clear: both;
      }

      #left-side {
        width: 50%;
        height: 550px;
        background-color: gray;
        float: left;
        color: #fff;
      }

      #left-p>h2 {
        text-align: left;
        margin: 10px 5px;
      }

      #left-p>p {
        font-size: 20px;
        padding: 10px;
        text-align: justify;
        line-height: 28px;
      }

      #right-side {
        width: 48%;
        height: 550px;
        float: right;
      }

      .artical {
        height: 31%;
        margin-bottom: 20px;
        background-color: chocolate;
        display: flex;
        justify-content: center;
        font-size: 20px;
        font-family: Arial, Helvetica, sans-serif;
        color: black;
        overflow: hidden;
      }

      #p1 {
        background-image: url(https://imgur.com/JyMz0CR.jpg);
        background-size: cover;
        background-repeat: no-repeat;
      }

      #p2 {
        background-image: url(https://imgur.com/GFLWoXM.jpeg);
        background-size: cover;
        background-repeat: no-repeat;
      }

      #p3 {
        background-image: url(https://imgur.com/uzmZqZA.jpg);
        background-size: cover;
        background-repeat: no-repeat;
      }

      /* --------- Technologies Used------------ */
      #grid-container {
        width: 100%;
        margin: 15px auto;
      }

      #grid-container::after {
        content: '';
        display: block;
        clear: both;
      }

      .grid {
        width: 40%;
        float: left;
        margin-left: 65px;
        margin-bottom: 20px;
        background-color: lightgrey;
        border-radius: 8px;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.15);
      }

      .grid>img {
        width: 100%;
        margin-bottom: 10px;
        padding: 20px;
      }

      .grid>h4 {
        margin: 0px 10px;
        text-align: center;
      }

      .grid>p {
        margin: 10px;
        font-size: 20px;
        text-align: justify;
        line-height: 30px;
        color: white;
      }

      .grid>a {
        display: block;
        margin: 0 auto;
        text-align: center;
        color: #fff;
        background-color: red;
        text-decoration: none;
        padding: 10px;
        border-radius: 8px;
      }

      h1 {
        color: black;
        font-size: 40px;
        text-align: center;
        padding: 25px 0px;
      }

      .grid>a:hover {
        background-color: blue;
      }

      /* -------Footer Section ------- */
      #footer {
        background-color: plum;
        height: 100px;
      }

      #footer>p {
        font-size: 16px;
        color: black;
        text-align: center;
        padding: 20px;
      }
    }

    /* 2. Second Break-point */

    @media (max-width: 800px) {
      #header {
        width: 100%;
        background-color: grey;
        position: fixed;
        top: 0;
        height: 70px;
      }

      .show-btn {
        display: block;
      }

      .menu {
        position: fixed;
        top: 0;
        right: -100%;
        width: 100%;
        background-color: #333;
        text-align: center;
        padding: 80px 0px;
        line-height: normal;
        transition: 0.7s;
      }

      .menu li {
        display: block;
      }

      .manu li a {
        display: block;
      }

      #chk:checked~.menu {
        right: 0;
      }

      .hide-btn {
        display: block;
        position: absolute;
        right: 20px;
        top: 10px;
      }

      #banner {
        width: 100%;
        height: 350px;
        margin-bottom: 15px;
        display: flex;
        font-size: 30px;
        color: white;
        margin-top: 90px;
      }

      #banner h2 {
        margin: 10px 20px;
        color: #fff;
      }

      #circle-container {
        width: 100%;
      }

      #circle-container::after {
        content: '';
        display: block;
        clear: both;
      }

      .circle img {
        height: 250px;
        width: 250px;
        border-radius: 50%;
        float: left;
        margin-left: 10%;
        margin-bottom: 20px;
      }

      #left-side {
        width: 100%;
        height: 200px;
        background-color: gray;
        color: #fff;
        margin-bottom: 20px;
      }

      #left-p>h2 {
        text-align: left;
        margin: 5px 5px;
      }

      #left-p>p {
        font-size: 20px;
        padding: 10px;
        text-align: justify;
        line-height: 28px;
      }

      #right-side {
        width: 100%;
        height: 400px;
      }

      .artical {
        height: 31%;
        margin-bottom: 20px;
        background-color: chocolate;
        display: flex;
        justify-content: center;
        font-size: 16px;
        font-family: Arial, Helvetica, sans-serif;
        color: black;
        overflow: hidden;
      }

      #p1 {
        background-image: url(https://imgur.com/JyMz0CR.jpg);
        background-size: cover;
        background-repeat: no-repeat;
      }

      #p2 {
        background-image: url(https://imgur.com/GFLWoXM.jpeg);
        background-size: cover;
        background-repeat: no-repeat;
      }

      #p3 {
        background-image: url(https://imgur.com/uzmZqZA.jpg);
        background-size: cover;
        background-repeat: no-repeat;
      }

      #grid-container {
        width: 100%;
        margin: 15px auto;
      }

      #grid-container::after {
        content: '';
        display: block;
        clear: both;
      }

      .grid {
        width: 40%;
        float: left;
        margin-left: 50px;
        background-color: lightgrey;
        border-radius: 8px;
        margin-bottom: 20px;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.15);
      }

      .grid>img {
        width: 100%;
        margin-bottom: 10px;
      }

      .grid>h4 {
        margin: 0px 10px;
        text-align: center;
      }

      .grid>p {
        margin: 10px;
        font-size: 15px;
        text-align: justify;
        line-height: 25px;
        color: white;
      }

      .grid>a {
        display: block;
        margin: 0 auto;
        text-align: center;
        color: #fff;
        background-color: red;
        text-decoration: none;
        padding: 10px;
        border-radius: 8px;
      }

      h1 {
        color: black;
        font-size: 40px;
        text-align: center;
        padding: 25px 0px;
      }

      /* 3. Third Break-point */

      @media (max-width: 625px) {
        /* Set container to min-width of 320px */

        #container {
          min-width: 320px;
        }

        .show-btn {
          display: block;
        }

        .menu {
          position: fixed;
          top: 0;
          right: -100%;
          width: 100%;
          background-color: #333;
          text-align: center;
          padding: 80px 0px;
          line-height: normal;
          transition: 0.7s;
        }

        .menu li {
          display: block;
        }

        .manu li a {
          display: block;
        }

        #chk:checked~.menu {
          right: 0;
        }

        .hide-btn {
          display: block;
          position: absolute;
          right: 20px;
          top: 10px;
        }

        #banner {
          width: 100%;
          height: 250px;
          margin-bottom: 15px;
          color: white;
          margin-top: 90px;
        }

        #banner h2 {
          margin: 10px 20px;
          color: #fff;
          font-size: 20px;
        }

        #circle-container {
          width: 90%;
          margin-left: 10%;
        }

        .circle img {
          height: 70%;
          width: 70%;

          border-radius: 50%;
          margin-bottom: 20px;
        }

        #left-side {
          width: 100%;
          height: 200px;
          background-color: gray;
          color: #fff;
          margin-bottom: 20px;
        }

        #left-p>h2 {
          text-align: left;
          margin: 5px 5px;
        }

        #left-p>p {
          font-size: 20px;
          padding: 10px;
          text-align: justify;
          line-height: 28px;
        }

        #right-side {
          width: 100%;
          height: 400px;
        }

        .artical {
          box-sizing: border-box;
          height: 31%;
          margin-bottom: 20px;
          display: flex;
          justify-content: center;
          font-size: 16px;
          font-family: Arial, Helvetica, sans-serif;
          color: black;
          overflow: hidden;
        }

        #p1 {
          background-image: url(https://imgur.com/JyMz0CR.jpg);
          background-size: cover;
          background-repeat: no-repeat;
        }

        #p2 {
          background-image: url(https://imgur.com/GFLWoXM.jpeg);
          background-size: cover;
          background-repeat: no-repeat;
        }

        #p3 {
          background-image: url(https://imgur.com/uzmZqZA.jpg);
          background-size: cover;
          background-repeat: no-repeat;
        }

        #grid-container {
          width: 100%;
          box-sizing: border-box;
        }

        .grid {
          margin-left: 20px;
          width: 90%;
          background-color: lightgrey;
          border-radius: 8px;
          margin-bottom: 20px;
          box-shadow: 0 5px 5px rgba(0, 0, 0, 0.15);
          max-height: 500px;
        }

        .grid>img {
          width: 100%;
          margin-bottom: 10px;
          padding: 20px;
        }

        .grid>h4 {
          margin: 0px 10px;
          text-align: center;
        }

        .grid>p {
          margin: 10px;
          font-size: 15px;
          text-align: justify;
          line-height: 25px;
          color: white;
        }

        .grid>a {
          display: block;
          margin: 0 auto;
          text-align: center;
          color: #fff;
          background-color: red;
          text-decoration: none;
          padding: 10px;
          border-radius: 8px;
        }

        h1 {
          color: black;
          font-size: 20px;
          text-align: center;
          padding-top: 25px;
          padding-bottom: 15px;
        }

    }
  </style>
</head>

<body>
  <div id="container">
    <div id="header">
      <input type="checkbox" id="chk" />
      <label for="chk" class="show-btn">
        <i class="fa fa-bars"></i>
      </label>
      <ul class="menu">
        <li><a href="#top">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#circle-container">Team</a></li>
        <li><a href="#Technologies">Technologies</a></li>
        <li><a href="#contact">contact</a></li>

        <label for="chk" class="hide-btn">
          <i class="fa fa-times"></i>
        </label>
      </ul>
    </div>
    <a name="top"></a>

    <div id="banner">
      <h2></h2>
    </div>
    <div id="circle-container">
      <h1>Team Members</h1>
      <div class="circle">
        <img src="https://imgur.com/aFFF1uw.jpg" alt="" />
      </div>
      <div class="circle">
        <img src="https://imgur.com/dIAsZGb.png" alt="" />
      </div>
      <div class="circle">
        <img src="https://imgur.com/GIikFy7.png" alt="" />
      </div>
      <div class="circle">
        <img src="https://imgur.com/JvDB5AN.png" alt="" />
      </div>
    </div>
    <div id="sec2-container">
      <a name="about"></a>
      <h1>About Us</h1>
      <div id="left-side">
        <div class="left-content">
          <div id="left-p">
            <h2 style="text-align: center;">About Projects</h2>
            <p>
              DevOps, a software development approach, combines collaboration, automation, and continuous
               delivery to enhance the speed, quality, and efficiency of software delivery. It emphasizes
               close collaboration between development and operations teams, breaking down silos and
               promoting shared responsibilities. DevOps leverages automation tools and practices to
               streamline the software development lifecycle, from code creation and testing to deployment
               and monitoring. By fostering a culture of collaboration, continuous integration, and continuous
                delivery, DevOps enables organizations to deliver software faster, ultimately driving business
                 success. DevOps also promotes a strong focus on monitoring and feedback loops, allowing teams
                 to continuously gather insights and make data-driven improvements to the software delivery process.
                 By embracing DevOps principles, agility, and customer-centricity, enabling them to stay
                 competitive in today's rapidly evolving technology landscape.
            </p>
          </div>
        </div>
      </div>
      <div id="right-side">
        <div class="artical" id="p1">
          <h2>Project-1</h2>
        </div>
        <div class="artical" id="p2">
          <h2>Project-2</h2>
        </div>
        <div class="artical" id="p3">
          <h2>Project-3</h2>
        </div>
      </div>
    </div>
    <div id="grid-container">
      <a name="Technologies"></a>
      <h1>Technologies Used</h1>
      <div class="grid">
        <img src="https://i0.wp.com/foxutech.com/wp-content/uploads/2017/08/Jenkins-Tutorial.jpg?resize=696%2C464&ssl=1" alt="" class="grid-image"  />
        <h4>Introduction to Jenkins</h4>
        <p>
          Jenkins is a popular open-source automation server that enables continuous integration and delivery,
          providing robust support for building, testing, and deploying software projects.
        </p>

        <a href="https://www.jenkins.io/doc/" target="_blank" rel="noopener noreferrer">Read More</a>
      </div>
      <div class="grid">
        <img src="https://unixcop.com/wp-content/uploads/2021/10/download-1.jpg" alt="" class="grid-image" />
        <h4>Introduction to Tomcat</h4>
        <p>
          Tomcat is a widely used web server and servlet container. It provides a platform for running Java-based
           web applications, handling HTTP requests, and serving web content efficiently.
        </p>

        <a href="https://tomcat.apache.org/tomcat-9.0-doc/index.html" target="_blank" rel="noopener noreferrer">Read More</a>
      </div>
      <div class="grid">
        <img src="https://www.devopsmadness.com/images/dockerventure_1/docker_logo.png" alt=""  class="grid-image" />
        <h4>Introduction to Docker</h4>
        <p>
        Docker is a powerful containerization technology that simplifies deployment, accelerates workflows, and improves scalability and resource utilization.
        </p>

        <a href="https://docs.docker.com/" target="_blank" rel="noopener noreferrer">Read More</a>
      </div>
      <div class="grid">
        <img src="https://cdn-media-1.freecodecamp.org/images/1*E-Rmyde820J8T6tWETnpTA.png" alt=""  class="grid-image" />
        <h4>Introduction to Maven</h4>
        <p>
          Maven is a popular build automation tool for Java projects. It manages dependencies,
          and packages applications, simplifying the software development process.
        </p>

        <a href="https://maven.apache.org/guides/index.html" target="_blank" rel="noopener noreferrer">Read More</a>
      </div>
    </div>
    <a name="contact"></a>
    <h1>Contact</h1>
    <div id="footer">
      <p>
        Website Template for Devops &copy;
        <a href="https://www.atlassian.com/devops" target="_blank" rel="noopener noreferrer">Devops</a><br /><br />
        <a href="#top">Back to top</a>
      </p>
    </div>
  </div>
</body>

</html>
