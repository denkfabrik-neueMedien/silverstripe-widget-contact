
<article>

    <h3>$FrontendTitle</h3>


	<% loop $ContactInformations %>

        <div itemscope itemtype="http://schema.org/Organization">
            <% if $Company1 %>
                <span itemprop="name">$Company1 <% if $Company2 %>$Company2<% end_if %></span>
                <br><br>
            <% end_if %>
            <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                <% if $Street && $StreetNumber %>
                    <span itemprop="streetAddress">$Street $StreetNumber</span>
                    <br>
                <% end_if %>

                <% if $Zip %>
                    <span itemprop="postalCode">$Zip</span>
                <% end_if %>

                <% if $City %>
                    <span itemprop="addressLocality">$City<% if $Country %><br> $Country<% end_if %></span>
                <% end_if %>
            </div>
            <br>
            <% if $Phone %>
                <strong><%t ContactWidget.PHONE %>:</strong> <span itemprop="telephone">$Phone</span>
                <br>
            <% end_if %>

            <% if $Fax %>
                <strong><%t ContactWidget.FAX %>:</strong> <span itemprop="faxNumber">$Fax</span>
                <br>
            <% end_if %>

            <% if $Email %>
                <strong><%t ContactWidget.EMAIL %>:</strong> <a href="$Email" itemprop="email">$Email</a>
                <br>
            <% end_if %>

            <% if $Website %>
                <strong><%t ContactWidget.WEBSITE %>:</strong> <a href="$Website" itemprop="url">$Website</a>
            <% end_if %>
        </div>
	<% end_loop %>
	
</article>