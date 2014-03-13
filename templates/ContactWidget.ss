
<div>

	<h3>$FrontendTitle</h3>

	<% with ContactInformations %>

		<% if $Company1 %>
			<p><b>$Company1</b></p>
		<% end_if %>
	
		<% if $Company2 %>
			<p>$Company2</p>
		<% end_if %>
		
		<p>&nbsp;</p>
		
		<% if $Firstname %>
			<p>$Firstname $Surname</p>
		<% end_if %>
		
		<% if $Street %>
			<p>$Street $StreetNumber</p>
		<% end_if %>
		
		<% if $Zip %>
			<p>$Zip $City</p>
		<% end_if %>
		
		<% if $Country %>
			<p>$Country</p>
		<% end_if %>
		
		<p>&nbsp;</p>
		
		<% if $Phone %>
			<p><span><%t ContactWidget.PHONE %>:</span> $Phone</p>
		<% end_if %>
							
		<% if $Fax %>
			<p><span><%t ContactWidget.FAX %>:</span> $Fax</p>
		<% end_if %>
		
		<% if $Mobile %>
			<p><span><%t ContactWidget.MOBILE %>:</span> $Mobile</p>
		<% end_if %>
		
		<p>&nbsp;</p>
		
		<% if $Email %>				
			<p><span><%t ContactWidget.EMAIL %>:</span> <a href="mailto:$Email" class="mail">$Email</a></p>
		<% end_if %>
		
		<% if $Website %>
			<p><span><%t ContactWidget.WEBSITE %>:</span> <a href="$Website">$Website</a></p>
		<% end_if %>
		
		<p>&nbsp;</p>
		
		<% if $Vatnumber %>
			<p><span><%t ContactWidget.VATNUMBER %>:</span> $Vatnumber</p>
		<% end_if %>
		
		<% if $CommercialRegister %>
			<p><span><%t ContactWidget.COMMERCIALREGISTER %>:</span> $CommercialRegister</p>
		<% end_if %>
		
	<% end_with %>
	
</div>