<?php


/**
 * @author marcokernler
 */
class ContactWidget extends Widget
{
	/**
	 * 
	 */
    private static $db = array
	(
		"FrontendTitle" => "Varchar(255)",
        "Intro" => "HTMLText",
        "ShowCompany" => "Boolean",
        "ShowAddress" => "Boolean",
        "ShowContact" => "Boolean"
	);
	
	
	/**
	 * 
	 */
    private static $defaults = array();
	
	
	/**
	 * 
	 */
    private static $title = "Kontakt-Widget";
	
	
	/**
	 * 
	 */
    private static $cmsTitle = "Kontakt-Widget";
	
	
	/**
	 * 
	 */
    private static $description = "Stellt die in den Seiteneinstellungen festgelegten Kontaktinformationen dar.";
	
	
	
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
		return new FieldList
		(
			new TextField("FrontendTitle", "Frontend Title"),
            new TextareaField("Intro", "Einleitung"),
            new CheckboxField("ShowCompany", "Firma anzeigen?"),
            new CheckboxField("ShowAddress", "Adresse anzeigen?"),
            new CheckboxField("ShowContact", "Kontaktdaten anzeigen?")
		);
	}
}



/**
 * Class ContactWidget_Controller
 */
class ContactWidget_Controller extends WidgetController
{
    /**
     * @return DataObject
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

        return SiteConfig::get()->First();
    }
}