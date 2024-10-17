module CssStyles exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)


textFontSizeStyle : Int -> Attribute msg
textFontSizeStyle size =
    style "font-size" (String.fromInt size ++ "px")


alignItemsCenterStyle : Attribute msg
alignItemsCenterStyle =
    style "align-items" "center"


displayFlexStyle : Attribute msg
displayFlexStyle =
    style "display" "flex"


justifyContentCenterStyle : Attribute msg
justifyContentCenterStyle =
    style "justify-content" "center"


makePxStringFromFloat : Float -> String
makePxStringFromFloat floatNumber =
    String.fromFloat floatNumber ++ "px"


makePxStringFromInt : Int -> String
makePxStringFromInt intNumber =
    String.fromInt intNumber ++ "px"
