<?php


/**
 * @author marcokernler
 */
class ContactWidget extends Widget
{
	/**
	 * 
	 */
	static $db = array
	(
		"FrontendTitle" => "Varchar(255)"
	);
	
	
	/**
	 * 
	 */
	static $defaults = array();
	
	
	/**
	 * 
	 */
	static $title = "Kontakt-Widget";
	
	
	/**
	 * 
	 */
	static $cmsTitle = "Kontakt-Widget";
	
	
	/**
	 * 
	 */
	static $description = "Stellt die in der Seitenkonfiguration festgelegten Kontaktinformationen auf dieser Seite dar.";
	
	
	
	// - - -
	
	
	
	/**
	 * 
	 */
	public function Title()
	{
		$displayName = $this->widgetTitle ? $this->widgetTitle : self::$title;
		
		return $this->showTitle ? $displayName : "";
	}
	
	
	/**
	 * 
	 * 
	 */
	public function getCMSFields()
	{
		return new FieldSet
		(
				new TextField("FrontendTitle", "Frontend Title")
		);
	}
	
	
	/**
	 * 
	 * 
	 */
	public function ContactInformations()
	{
		// 	checks for the active environment type, to load minified css and js files if in live mode
		if( Director::get_environment_type() == "dev" || Director::get_environment_type() == "test" )
		{
			Requirements::css("widget_Contact/css/contactwidget.css");
		}
		else
		{
			Requirements::css("widget_Contact/css/contactwidget.min.css");
		}
		
		$siteConfig = DataObject::get( "SiteConfig" );
		
		return $siteConfig;
	}
	
		
	/**
	 * Return a obfuscated version of the defined
	 * email address.
	 */
	public function MailObfuscated()
	{
		$siteInfo = DataObject::get( "SiteConfig" );
	
		if(!$siteInfo) return;
	
		$siteConfig = $siteInfo->First();
	
		if(!$siteConfig) return;
	
		$email = $siteConfig->email;
	
		return Email::obfuscate($email);
	}
}

?>
