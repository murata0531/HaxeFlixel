package;

import openfl.display.Sprite;
import openfl.text.Font;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.events.Event;

class Main extends Sprite
{
  private var _text:TextField;
  private var _circle:Sprite;

  public function new()
  {
    super();

    _text = new TextField();
    _text.defaultTextFormat = new TextFormat ("Katamotz Ikasi", 30, 0x202020);
    _text.x = 50;
    _text.y = 50;
    _text.width = 350;
    _text.text = "Hello, Haxe and OpenFL!";
    addChild (_text);

    _circle = new Sprite();
    _circle.graphics.beginFill(0xff0000);
    _circle.graphics.drawCircle(0, 0, 50);
    _circle.graphics.endFill();
    _circle.x = 100;
    _circle.y = 100;
    addChild (_circle);

    this.addEventListener(Event.ENTER_FRAME, loop);
  }

  private function loop(e:Event)
  {
    _text.x += 1;

    _circle.x += 2;
    _circle.y += 1;
  }
}
