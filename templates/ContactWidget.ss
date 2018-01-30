
<article>

    <h3>$FrontendTitle</h3>


    <% if $Intro %>
        $Intro
    <% end_if %>

    <% loop $ContactInformations %>
        <% include SchemaOrgAddress HideLogo=$Top.HideLogo, HideGenericLogo=$Top.HideGenericImage, HideCompany1=$Top.HideCompany1, HideCompany2=$Top.HideCompany2, HideStreetInfo=$Top.HideAddress, HideZip=$Top.HideAddress, HideCity=$Top.HideAddress, HideGeoInfo=$Top.HideAddress, HidePhone=$Top.HideContact, HideFax=$Top.HideContact, HideEmail=$Top.HideContact, HideWebsite=$Top.HideContact %>
    <% end_loop %>

</article>
