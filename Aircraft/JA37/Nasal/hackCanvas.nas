#
# Author: Nikolai V. Chr.
#
# Backwards compatible with older Fgs.
# Notice all these methods return me so they can be chained.
#
# This file should be loaded before any canvas use.
#
# Result: On Viggen get 25% more FPS. From 12 to 15.
#
# Inspired from what Thorsten did with setTextUpdate()
#
# Notice: Might not be forward compatible.


canvas.Text._lastText2 = "";
canvas.Text.setText = func (text)
  {
      if (text == me._lastText2) {return me;}
      me._lastText2 = text;
      me.set("text", typeof(text) == 'scalar' ? text : "");
  };
canvas.Element._lastVisible = 1;
canvas.Element.show = func ()
  {
      if (1 == me._lastVisible) {return me;}
      me._lastVisible = 1;
      me.setBool("visible", 1);
    };
canvas.Element.hide = func ()
  {
      if (0 == me._lastVisible) {return me;}
      me._lastVisible = 0;
      me.setBool("visible", 0);
    };