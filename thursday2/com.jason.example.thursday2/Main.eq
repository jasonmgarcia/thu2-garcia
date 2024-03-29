
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

class Main : LayerWidget, EventReceiver
{
	public void initialize()
	{
		base.initialize();
		set_size_request_override(px("50mm"),px("70mm"));
		add(CanvasWidget.for_colors(Color.instance("#FFFFFF"), Color.instance("#FFCC00")));
	  //  add(LabelWidget.for_string("UST").set_font(Theme.font().modify("20mm bold color=black outline-color=white")));
		add(ButtonWidget.for_string("Click here").set_event("Clicked"));
	}

	public void on_event(Object o)
	{
		if("Clicked".equals(o))
		{
			Log.message("Button Clicked");
			add(LabelWidget.for_string("UST").set_font(Theme.font().modify("15mm bold color=black outline-color=white")));
		}
	}
}
