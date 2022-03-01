module Main
import Js.Console
import Js.Dom
import Js.Object
import React
import ReactDOM

view : ReactElement
view = fc $ do
        (count, setCount) <- useState 0
        -- useEffect $ log "useEffect Triggered"
        -- useEffect $ setCount 2
        -- Js.Console.log count
        -- parseInteger " count"

        pure $ el "div" 
            ["style" =: ("text-align" =: "center")]
            [ el "h1"
                ["style" =: ("font-weight" =: "1000")]
                [text "Welcome"]
                ,el "p"
                    []
                    [text "Hello idris-react"]    
                ,el "button"
                    ["onClick" =: setCount (count + 1)]
                    [text "click me"]
                ,el "div"
                    []
                    [text $ show count]
                    -- [text ("current counter : " ++ "123")]
            ]
main : IO ()
main = render view !(getElementById "app-root")