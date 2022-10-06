<DOCTYPE html>
<html>
<head>

        <title>
            Responsive Contact Us Form | CampCodes
        </title>
        
        
    </head>
    <body>
      <?php
       if(!empty($_POST["submit"])){
         $FullName =$_POST["FullName"];
         $Email =$_POST["Email"];
         $Phone =$_POST["Phone"];
         $Subject =$_POST["Subject"];
         $Message =$_POST["Message"];


         $mailHeaders ="Name:  " . $FullName .
         "\r\n Email: " .  $Email .
         "\r\n Phone: " .  $Phone .
         "\r\n Subject: " .  $Subject .
         "\r\n Message: " .  $Message . "\r\n" ;

         if(mail($FullName, $mailHeaders)){
          $Message =" Your I nformation is Received Successfully. ";

         }
         
       }
      ?>
    <br>
    <div class="container">
        <div class="row">
            <div class="bg-img">
             <form method="post" name="emailContact">
             </form>
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-title">
                  <Form method="post" autocomplete="off">
                    <h1 class="title">Contact us</h1>       
        
        <div class="wrapper">
          
          <div class="ccfield-prepend">
            <span class="ccform-addon"> <i class="fa fa-user" ></i></span>
              <input class="ccformfield" type="text" placeholder="FullName" required>
              <i class="fa fa-user.png" aria-hidden="true"></i>
          </div>
          <div class="ccfield-prepend">
              <span class="ccform-addon"><i class="email"></i></span>
              <input class="ccformfield" type="text" placeholder="Email" required>
          </div>
          <div class="ccfield-prepend">
              <span class="ccform-addon"><i class="fa fa-mobile-phone "></i></span>
              <input class="ccformfield" type="text" placeholder="Phone">
          </div>
           <div class="ccfield-prepend">
              <span class="ccform-addon"><i class="fa fa-info "></i></span>
              <input class="ccformfield" type="text" placeholder="Subject" required>
          </div>
          <div class="ccfield-prepend">
              <span class="ccform-addon"><i class="fa fa-comment "></i></span>
              <textarea class="ccformfield" name="comments" rows="8" placeholder="Message" required></textarea>
          </div>
          <div class="ccfield-prepend">
              <input class="ccbtn" type="submit" name="submit" onclick="message()" value="Submit"> 
              
             <?php if (!empty($Message)){ ?>
            
          </div>
          <div class="message">
            <div class="success" id ="success"> Your Message Succesfully 
            Sent!</div>
            <div class="danger" id="danger"> Feilds
                can't be Empty!</div>

            </div>
          
          
          </form>
      </div>
      
      <div class="credit">
        
      </div>
      
                     
      </div>
    </div>
</body>
</html>
    
       