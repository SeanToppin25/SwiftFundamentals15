**What are three of the primary responsibilities of a UIView object?**

 	1) **Drawing and animation**

 		Views draw content in their rectangular area using UIKit or Core Graphics.



 		You can animate some view properties to new values.



 	2) **Layout and subview management**

 		Views may contain zero or more subviews.



 		Views can adjust the size and position of their subviews.



 		Use Auto Layout to define the rules for resizing and repositioning your views

 			in response to changes in the view hierarchy.



 	3) **Event handling**

 		A view is a subclass of UIResponder and can respond to touches and other types of events.



 		Views can install gesture recognizers to handle common gestures.



**What does documentation call a view that's embedded in another view?**

 	-Subview

 



**What does documentation call the parent view that's embedding the other view?**

 	-Superview



**What is a view's frame?** AND **How is a view's bounds different from its frame?**



 	-The frame and bounds properties define the geometry of each view. The frame property defines the origin and dimensions of the view in the coordinate system of its superview. The bounds property defines the internal dimensions of the view as it sees them, and its use is almost exclusive to custom drawing code.

