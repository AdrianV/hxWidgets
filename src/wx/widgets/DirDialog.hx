package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/wx.h")
@:unreflective
@:native("wxDirDialog")
extern class DirDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDirDialog")         private static function _new(parent:RawPointer<Window>, message:WxString, defaultPath:WxString, style:Int):RawPointer<DirDialog>;
                                        public static inline function createInstance(parent:RawPointer<Window>, message:WxString, defaultPath:WxString, style:Int):Pointer<DirDialog> {
                                            return Pointer.fromRaw(_new(parent, message, defaultPath, style));
                                        }

}
