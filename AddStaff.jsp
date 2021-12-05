<!-- Used some part of the code from Chris Wright (https://codepen.io/chriswrightdesign/)'s Pen  -->
 <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Staff</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="assets/css/Staff.css">
    <style>body{padding-top: 60px;}</style>

    <link href="assets/css/bootstrap.css" rel="stylesheet" />
	<link href="assets/css/bootstrap-datepicker.css" rel="stylesheet" />

	<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<body>
 <a class="btn btn-info" href="dashboard.jsp">Back</a> 
    <form action="AddStaff1.jsp" class="form-inline">
        <div class="container">
            <h1 class="heading-primary">Staff Details </h1>
            <div class="accordion">
              <dl>
                <!-- description list -->
          
                <dt>
                    <!-- accordion tab 1 - Personal Details -->
                    <a href="#accordion1" aria-expanded="false" aria-controls="accordion1" class="accordion-title accordionTitle js-accordionTrigger">Pesonal Details</a>
                  </dt>
                <dd class="accordion-content accordionItem is-collapsed" id="accordion1" aria-hidden="true">
                    <p class="headings">Personal Details</p>
                    <div class="form-group">
                        <label for="First Name">First Name :</label>
                        <input type="text" class="form-control"  name="fname" id="fname" placeholder="Enter First name" required pattern="[a-zA-Z]+">
                      </div>&nbsp;&nbsp;&nbsp;&nbsp;
                      <div class="form-group">
                          <label for="Middle Name">Middle Name :</label>
                          <input type="text" class="form-control" name="mname" id="mname" placeholder="Enter Middle name" required pattern="[A-Za-z]+">
                        </div>&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="form-group">
                            <label for="Last Name">Last Name :</label>
                            <input type="text" class="form-control" name="lname" id="lname" placeholder="Enter Last name" required pattern="[A-Za-z]+">
                          </div>
                          <br><br>
                          
                            <div class="form-group">
                                <div class="col-md-">
                                <div class="controls">
                                  <label>DOB :</label>
                                <input class="form-control" type="date" name="dob"/>
                                </div>
                                </div>
                                </div>&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class ="form-group">
                              <label>Marital Status :</label>
                              <select name="maritalstatus" class="form-control">
                                <option value="single">Single</option>
                                <option value="Married">Married</option>
                                <option value="Divorced">Divorced</option>
                                <option value="Widowed">Widowed</option>                               
                              </select>
                            </div>&nbsp;&nbsp;&nbsp;&nbsp;
                            
                            <div class ="form-group">
                                <label>Gender :</label>
                                <select name="gender" class="form-control">
                                  <option value="Male">Male</option>
                                  <option value="Female">Female</option>
                                  <option value="Other">Other</option> 
                                  </option>
                                </select>
                              </div>&nbsp;&nbsp;&nbsp;&nbsp;
							  <div class="form-group">
                            <label for="email">Email :</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email" required>
                          </div>
						  <br><br>
						  <div class="form-group">
                            <label for="mobile">Mobile Number :</label>
                            <input type="text" class="form-control" name="mobileNo" id="mobile" placeholder="Enter Mobile Number" required pattern="[789][0-9]{9}">
                          </div>&nbsp;&nbsp;
						  <div class="form-group">
                            <label for="mobile">Alternate Mobile Number :</label>
                            <input type="text" class="form-control" name="altmobileNo" id="mobile" placeholder="Enter Alternate Mobile Number" required pattern="[789][0-9]{9}">
                          </div>
						  <br><br>
							  <div class="form-group">
                              <label for="Current Address">Current Address :</label>
                              <input type="textarea" class="form-control" name="currentaddress"  id="add1" placeholder="Enter  Curent Address" required> 
                            </div>
                            <div class="form-group">
                                <label for="Permanent Address">Permanent Address :</label>
                                <input type="textarea" class="form-control" name="permanentaddress"  id="add2" placeholder="Enter  Permanent Address" required>
                              </div>
                              <div class="form-group">
                                  <label for="City">City :</label>
                                  <input type="text" class="form-control" name="city"  id="city" placeholder="Enter City" required pattern="[A-Za-z]+">
                                </div>
								<br><br>
                                <div class="form-group">
                                    <label for="State">State :</label>
                                    <input type="text" class="form-control" name="state"  id="state" placeholder="Enter  State" required pattern="[A-Za-z]+">
                                  </div>&nbsp;&nbsp;
								  <div class="form-group">
                                        <label for="Pin">Pin Code :</label>
                                        <input type="text" class="form-control" name="pin"  id="pin" placeholder="Enter Pin Code" required pattern="[0-9]{6}">
                                      </div>&nbsp;&nbsp;
                                  <div class="form-group">
                                      <label for="Permanent Address">Country :</label>
                                      <input type="text" class="form-control" name="country"  id="country" placeholder="Enter Country" required pattern="[A-Za-z]+">
                                    </div>
									<br><br>
                                    <div class="form-group">
                                        <label for="Permanent Address">Adhar No :</label>
                                        <input type="text" class="form-control" name="aadhar"  id="Adhar" placeholder="Enter Adhar Card Number" required pattern="[0-9]{12}">
                                      </div>&nbsp;&nbsp;
                                      <div class="form-group">
                                          <label for="Permanent Address">Pan No :</label>
                                          <input type="textarea" class="form-control" name="pan"  id="pan" placeholder="Enter  Pan Card Number" required pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}">
                                        </div>
										<br><br>
                  
                </dd>
                <!--end accordion tab 1 -->
          
                <dt>
                    <!-- accordion tab 2 - Education Details -->
                    <a href="#accordion2" aria-expanded="false" aria-controls="accordion2" class="accordion-title accordionTitle js-accordionTrigger">Education Details</a>
                  </dt>
                <dd class="accordion-content accordionItem is-collapsed" id="accordion2" aria-hidden="true">
                  <div class="container-fluid" style="padding-top: 20px;">
                    <p class="headings">Education Details</p>
					
					<div class="row">
                        <div class="col-xs-4">
                          <label for="companyname" class="label-style">SSC Marks (%)</label>
                        </div>
                        <div class="form-group col-lg-4">
                          <input type="text" id="companyname" class="form-control" name="sscmarks" placeholder="Enter your SSC Marks" required pattern="[0-9]{2}">
                        </div>
                        <div class="hint">
                          <i class="hint-icon">i</i>
                          <p class="hint-description">Enter your Xth Marks</p>
                        </div>
                      </div>
					  <br>
                    
                      
                        <div class="row">
                                <div class="col-xs-4">
                                  <label for="" class="label-style"> SSC Passout year</label>
                                </div>
                                <div class="form-group col-lg-4">
                                  <input type="text" id="year" class="form-control"  name="sscyearpassout" placeholder="Enter your SSC Passout year" required pattern="[0-9]{4}">
                                </div>
                                <div class="hint">
                                  <i class="hint-icon">i</i>
                                  <p class="hint-description">SSC Passout year</p>
                                </div>
                              
							  </div>
					  <br>
                      <div class="row">
                          <div class="col-xs-4">
                            <label for="HSC/Diploma Marks" class="label-style">HSC/Diploma Marks (%)</label>
                          </div>
                          <div class="form-group col-lg-4">
                            <input type="text" id="HSC" class="form-control"  name="hscDipmarks" placeholder="Enter your HSC/diploma Marks" required pattern="[0-9]{2}">
                          </div>
                          <div class="hint">
                            <i class="hint-icon">i</i>
                            <p class="hint-description">Enter your XIIth or Diploma Marks </p>
                          </div>
                        </div>
					  <br>
                        <div class="row">
                            <div class="col-xs-4">
                              <label for="" class="label-style"> Hsc/Diploma Passout year</label>
                            </div>
                            <div class="form-group col-lg-4">
                              <input type="text" id="year" class="form-control"  name="hscDipyearpassout" placeholder="Enter your College Passout year" required pattern="[0-9]{4}">
                            </div>
                            <div class="hint">
                              <i class="hint-icon">i</i>
                              <p class="hint-description">Hsc/Diploma Passout year</p>
                            </div>
                          </div>
						  </div>
						  <br>
							<div class="row">
                        <div class="col-xs-4">
                          <label for="SSC Marks" class="label-style">Degree Marks (%)</label>
                        </div>
                        <div class="form-group col-lg-4">
                          <input type="text" id="SSC" class="form-control"  name="degreemarks" placeholder="Enter your SSC Marks" required pattern="[0-9]{2}">
                        </div>
                        <div class="hint">
                            <i class="hint-icon">i</i>
                            <p class="hint-description">Enter your Degree Marks</p>
                          </div>
                        </div>
						<br>
                            <div class="row">
                                <div class="col-xs-4">
                                  <label for="" class="label-style"> Degree Passout year</label>
                                </div>
                                <div class="form-group col-lg-4">
                                  <input type="text" id="year" class="form-control"  name="degreeyearpassout" placeholder="Enter your College Passout year" required pattern="[0-9]{4}">
                                </div>
                                <div class="hint">
                                  <i class="hint-icon">i</i>
                                  <p class="hint-description">Degree Passout year</p>
                                </div>
                              </div>
							  <br>
                             
                              
                 
                </dd>
                <!-- end accordion tab 2 -->
				<dt>
                    <!-- accordion tab 3 - Payment Info -->
                    <a href="#accordion3" aria-expanded="false" aria-controls="accordion3" class="accordion-title accordionTitle js-accordionTrigger">Previous Work Details</a>
                  </dt>
                <dd class="accordion-content accordionItem is-collapsed" id="accordion3" aria-hidden="true">
                  <div class="container-fluid" style="padding-top: 20px;">
                    <p class="headings">Previous Work Details</p>
                    
                    
                    <div class="row">
                                <div class="col-xs-4">
                                  <label for="" class="label-style">Company Name</label>
                                </div>
                                <div class="form-group col-lg-4">
                                  <input type="text" id="year" class="form-control"  name="lastCompany" placeholder="Enter Company Name" required pattern="[A-Za-z]+">
                                </div>
                                <div class="hint">
                                  <i class="hint-icon">i</i>
                                  <p class="hint-description">Enter your  previous Company name</p>
                                </div>
                              </div>
                   
					  <br>
					  
					  <div class="row">
                                <div class="col-xs-4">
                                  <label for="" class="label-style">Designation</label>
                                </div>
                                <div class="form-group col-lg-4">
                                  <input type="text" id="year" class="form-control"  name="designation" placeholder="Enter Designation" required pattern="[A-Za-z]+">
                                </div>
                                <div class="hint">
                                  <i class="hint-icon">i</i>
                                  <p class="hint-description">Enter your  Designation</p>
                                </div>
                              </div>

					  <br>
					  
					  <div class="row">
                                <div class="col-xs-4">
                                  <label for="" class="label-style">Salary</label>
                                </div>
                                <div class="form-group col-lg-4">
                                  <input type="text" id="year" class="form-control"  name="salary" placeholder="Enter Salary" required pattern="[0-9]+">
                                </div>
                                <div class="hint">
                                  <i class="hint-icon">i</i>
                                  <p class="hint-description">Enter your Salary</p>
                                </div>
                              </div>
					  
                      <br>
                      
                      <div class="row">
                                <div class="col-xs-4">
                                  <label for="" class="label-style">Number Of Years Experience</label>
                                </div>
                                <div class="form-group col-lg-4">
                                  <input type="text" id="year" class="form-control"  name="noofyears" placeholder="Number Of Years Experience" required pattern="[0-9]">
                                </div>
                                <div class="hint">
                                  <i class="hint-icon">i</i>
                                  <p class="hint-description">Enter your Number Of Years Experience</p>
                                </div>
                              </div>

                      <br>
                       </div>
                      <div class="button-container">
                        <button class="btn btn-success" type="submit">Submit</button>
                        <button class="btn btn-warning" type="reset">Reset</button>
                      </div>
                   
                  </div>
             
        </form>
        
       


  <script>
  //uses classList, setAttribute, and querySelectorAll
  //if you want this to work in IE8/9 youll need to polyfill these
  (function() {
  var d = document,
    accordionToggles = d.querySelectorAll('.js-accordionTrigger'),
    setAria,
    setAccordionAria,
    switchAccordion,
    touchSupported = ('ontouchstart' in window),
    pointerSupported = ('pointerdown' in window);

  skipClickDelay = function(e) {
    e.preventDefault();
    e.target.click();
  }

  setAriaAttr = function(el, ariaType, newProperty) {
    el.setAttribute(ariaType, newProperty);
  };
  setAccordionAria = function(el1, el2, expanded) {
    switch (expanded) {
      case "true":
        setAriaAttr(el1, 'aria-expanded', 'true');
        setAriaAttr(el2, 'aria-hidden', 'false');
        break;
      case "false":
        setAriaAttr(el1, 'aria-expanded', 'false');
        setAriaAttr(el2, 'aria-hidden', 'true');
        break;
      default:
        break;
    }
  };
  //function
  switchAccordion = function(e) {
    e.preventDefault();
    var thisAnswer = e.target.parentNode.nextElementSibling;
    var thisQuestion = e.target;
    if (thisAnswer.classList.contains('is-collapsed')) {
      setAccordionAria(thisQuestion, thisAnswer, 'true');
    } else {
      setAccordionAria(thisQuestion, thisAnswer, 'false');
    }
    thisQuestion.classList.toggle('is-collapsed');
    thisQuestion.classList.toggle('is-expanded');
    thisAnswer.classList.toggle('is-collapsed');
    thisAnswer.classList.toggle('is-expanded');

    thisAnswer.classList.toggle('animateIn');
  };
  for (var i = 0, len = accordionToggles.length; i < len; i++) {
    if (touchSupported) {
      accordionToggles[i].addEventListener('touchstart', skipClickDelay, false);
    }
    if (pointerSupported) {
      accordionToggles[i].addEventListener('pointerdown', skipClickDelay, false);
    }
    accordionToggles[i].addEventListener('click', switchAccordion, false);
  }
  })();
  $('.datepicker').datepicker({
    	 weekStart:1,
    	 color: 'red'
	 });
  </script>




    </head>
</body>
</html>

