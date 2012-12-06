
<section>

	<h3>$FrontendTitle</h3>
	
	<% control ContactInformations %>
			
		<p>$Firstname $Surname</p>
		<p>$Street $Streetnumber</p>
		<p>&nbsp;</p>
		<p>$Zip $City</p>
		
		<% if Phone %>
			<p><span><% _t('TPLPHONE','Telefon:') %></span> $Phone</p>
		<% end_if %>
		
		<% if Fax %>	
			<p><span><% _t('TPLFAX','Fax:') %></span></p>
		<% end_if %>
		
		<% if Mobile %>
			<p><span><% _t('TPLMOBILE','Mobil:') %></span> $Mobile</p>
		<% end_if %>
		
		<% if Email %>
			<p>&nbsp;</p>
			<p><span><% _t('TPLEMAIL','E-Mail:') %></span> <a href="mailto:$Top.MailObfuscated" class="mail">$Top.MailObfuscated</a></p>
		<% end_if %>
		
		<% if Website %>
			<p><span><% _t('TPLWEBSITE','Internet:') %></span> <a href="$Website">$Website</a></p>
		<% end_if %>
	<% end_control %>
	
</section>