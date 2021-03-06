
		<meta name="layout" content="main"/>
		
		
		<h1>ModalBox call Grails RemoteForm Function : wrap around your FIELDS </h1><br>
		
		<h3>You configure remote actions + controller here!</h3><br><br>
		
		
		<p>This means the modalBox RemoteForm already comes with its own RemoteForm awaiting variables 
		that are passed to it via the tagLib call within the MyDivForm render call in MyDiv1  </p><br><br>
		
		<b>Both Divs below have to load in templates, because upon refresh those very templates are called on</b><br><br>
		
		
		<!--  g:genModalButton loads up a button that triggers modalbox
		  		ID -> must match the ID of the id set further within the DIVS templates
		  		divId -> This is the divId put above your main form that contains the modalbox itself and the form within it
		  		title -> hover title of your new button
		  		value -> display text in the button	
		 --> 
		
		<g:genModalButton 
		id="ModalDynamixSPECIALFORM"
		divId="MyDiv1"
		title="Create New MyUser"
		value="Generate New MyUser Remote Form Example?"
		style="btn btn-primary"
		/>
		
		
 		<!--  MyDiv1 could and should be your own naming convention and MUST be different per any set -->
 		<!--  its the secondary to actual DIV below called MyDiv -->
 		<!--  this is basically your modal FORM Page  -->
 		<!--  so Top div is always bottom with it ending with numeric1 -->
 		<!--  inside it it loads /path/to/ACTUAL DIV_NAME ENDING WITH Form -->
 		<!--  so divId1 has a template called actual divname and ends with Form -->
 		<!--  this is a template file in this path on your local project that you have named as above -->
 		<!--  inside it is your form - take a look at this examples one to better understand -->
 		<div id="MyDiv1">
  			<g:render template='/testdynamix/MyDivForm' />
 		</div>
 		
 
 		<!--  The buttons must be kept outside of actual form - otherwise you are conflicting two form tags -->
 		<br/><br>
 		<h1>ACTUAL FORM</h1>
 		
 		<!--  Main FORM : Actual PAGE FORM on this real page that will be doing core function -->
 		<g:form name="mynextForm" action="step2">
 		
 		<!-- Core Div related to above loader - notice the loader is outside of the form tags of this one -->
 		<!--  MyDiv could and should be your own naming convention and MUST be different per any set -->
 		 
 		<div id="MyDiv">
 			<!--  PLEASE NOTE THIS NOW MATCHES UP WITH divId+'DISPLAY' added within plugin -->
 			<!--  always ensure the render page and returnController above match actual URL in this MyDiv call  -->
 			<!--  this needs to render since the plugin will render the same page upon update -->
 			<!--  like above the file is called the divname BUT ENDS with Display -->
 			<!--  This is the fields for your form in this case a very basic one field form -->
 			<g:render template='/testdynamix/MyDivDisplay' />
 		</div>

 		
 		<!--  Demo field nothing to do with exercise -->
 		<label>Field 1: showing nothing is changing</label>
 		<input type=text name="abc" value="Put something in here and add value"/>
 		
 		</g:form>
 		
 		
 		
 		
 		