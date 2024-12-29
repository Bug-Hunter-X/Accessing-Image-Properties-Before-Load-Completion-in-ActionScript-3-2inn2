function handleComplete(event:Event):void {
  // Accessing a property of the loaded image before it's fully loaded
  trace(myImage.width);
}