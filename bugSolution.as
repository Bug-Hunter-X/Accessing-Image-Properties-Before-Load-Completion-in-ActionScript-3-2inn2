import flash.display.Loader;
import flash.events.Event;
import flash.net.URLRequest;

var myLoader:Loader = new Loader();
var myImage:Image = new Image();

var urlRequest:URLRequest = new URLRequest("path/to/your/image.jpg");
myLoader.load(urlRequest);

myLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete);

function handleComplete(event:Event):void {
  myImage = event.target.content as Image;
  trace(myImage.width); // Access properties after the image has loaded
}