#!/bin/bash
pac=$(checkupdates 2> /dev/null | wc -l)

echo "%{F#b872ea} %{F-}$pac"
