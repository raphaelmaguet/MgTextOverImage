# MgTextOverImage
Class to implement text over image

As part of a project for one of my clients, I had to align text on an image.
Well, we mustn't hide it but in some cases it's not that simple.

So I wrote a little class that I put at your disposal.

I hope it will be useful to some of you, you can use it as you want, I just ask you to credit me if you have the use of it.

This class uses @IBDesignable and @IBInspectable for a more intuitive setting of the UIView.

How to use this class, place the file MGTextOverImage.swift in your project.

Then implement a UIView in your ViewControllerScene.

In Identity Inspector -> Custom Class call MgTextOverImage and create the link in your ViewController : @IBOutlet weak var setDisplayView: MgTextOverImage!

Then in Attributes Inspector adjust the parameters of the view.
The values of LabelX, LabelY, LabelW, and LabelH are a percentage that references the dimensions of the parent UIView.

Now you can use it wherever you want like this: 

setDisplayView.setText(MGSetText: "MY_TEXT", MGSetImage: (UIImage(named: "MY_IMAGE") ? UIImage(named: " MY_DEFAULT_IMAGE"))!

Enjoy 
