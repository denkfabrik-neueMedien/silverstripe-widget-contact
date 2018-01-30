
<article>

    <h3>$FrontendTitle</h3>


    <% if $Intro %>
        $Intro
    <% end_if %>


    <% loop $ContactInformations %>

        <% if $Top.RenderWithMicroData %>
            <% include SchemaOrgAddress HideLogo=$Top.HideLogo, HideGenericLogo=$Top.HideGenericImage, HideCompany1=$Top.HideCompany1, HideCompany2=$Top.HideCompany2, HideStreetInfo=$Top.HideAddress, HideZip=$Top.HideAddress, HideCity=$Top.HideAddress, HideGeoInfo=$Top.HideAddress, HidePhone=$Top.HideContact, HideFax=$Top.HideContact, HideEmail=$Top.HideContact, HideWebsite=$Top.HideContact %>
        <% else %>

            <% if $Company1 && $Top.HideCompany1 == "" %>
                <span>$Company1 <% if $Company2 && $Top.HideCompany2 == "" %>$Company2<% end_if %></span>
                <br><br>
            <% end_if %>

            <% if $Top.HideAddress == "" %>

                <% if $Street && $StreetNumber %>
                    <span>$Street $StreetNumber</span>
                    <br>
                <% end_if %>

                <% if $Zip %>
                    <span>$Zip</span>
                <% end_if %>

                <% if $City %>
                    <span>$City<% if $Country %><br> $Top.CountryNice<% end_if %></span>
                <% end_if %>

                <br>
            <% end_if %>

            <% if $Top.HideContact == "" %>
                <% if $Phone %>
                    <strong><%t ContactWidget.PHONE %>:</strong> <span>$Phone</span>
                    <br>
                <% end_if %>

                <% if $Fax %>
                    <strong><%t ContactWidget.FAX %>:</strong> <span>$Fax</span>
                    <br>
                <% end_if %>

                <% if $Email %>
                    <strong><%t ContactWidget.EMAIL %>:</strong> <a href="mailto:$Email">$Email</a>
                    <br>
                <% end_if %>

                <% if $Website %>
                    <strong><%t ContactWidget.WEBSITE %>:</strong> <a href="$Website">$Website</a>
                <% end_if %>
            <% end_if %>

        <% end_if %>


    <% end_loop %>

</article>
