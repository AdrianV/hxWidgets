package wx.widgets;

#if (haxe_ver >= 3.3)
@:include("wx/defs.h")
@:unreflective
@:enum extern abstract Direction(DirectionImpl) {

    @:native("wxLEFT")   var LEFT;
    @:native("wxRIGHT")  var RIGHT;
    @:native("wxUP")     var UP;
    @:native("wxDOWN")   var DOWN;
    @:native("wxTOP")    var TOP;
    @:native("wxBOTTOM") var BOTTOM;
    @:native("wxNORTH")  var NORTH;
    @:native("wxSOUTH")  var SOUTH;
    @:native("wxWEST")   var WEST;
    @:native("wxEAST")   var EAST;
    @:native("wxALL")    var ALL;

    @:op(A | B) static inline function or(a:Direction, b:SizerFlag):SizerFlag {
        return SizerFlag.orFlags(cast a, b);
    }

}

@:include("wx/defs.h")
@:unreflective
@:native("wxDirection")
extern class DirectionImpl {
}
#else
@:headerCode("#include <wx/defs.h>")
abstract Direction(Int) from Int to Int {

    public static var LEFT(default, null)         = new Direction(untyped __cpp__("::wxLEFT"));
    public static var RIGHT(default, null)        = new Direction(untyped __cpp__("::wxRIGHT"));
    public static var UP(default, null)           = new Direction(untyped __cpp__("::wxUP"));
    public static var DOWN(default, null)         = new Direction(untyped __cpp__("::wxDOWN"));
    public static var TOP(default, null)          = new Direction(untyped __cpp__("::wxTOP"));
    public static var BOTTOM(default, null)       = new Direction(untyped __cpp__("::wxBOTTOM"));
    public static var NORTH(default, null)        = new Direction(untyped __cpp__("::wxNORTH"));
    public static var SOUTH(default, null)        = new Direction(untyped __cpp__("::wxSOUTH"));
    public static var WEST(default, null)         = new Direction(untyped __cpp__("::wxWEST"));
    public static var EAST(default, null)         = new Direction(untyped __cpp__("::wxEAST"));
    public static var ALL(default, null)          = new Direction(untyped __cpp__("::wxALL"));

    inline public function new(i:Int) {
        this = i;
    }

}
#end
