separator="" # fill

#color_1="#201D1C"
color_1="#343d46"
color_bg="#2b303b"

display_battery()
{
    echo "$(acpi --battery | cut -d, -f2)"
}

get_connection()
{
   echo -n "$(iwconfig wls1 | awk -F\" '{print $2}')"
}

display_time()
{
   echo "$(date '+%H:%M')"
}

while true; do

#echo -n '%{r}'
#echo -n "%{F$color_1}$separator%{F-}%{B$color_1}"
#echo -n "  $(get_connection) "
#echo -n " %{F$color_bg}$separator%{B-}%{F-}"
#echo -n "  $(display_battery) "
#echo -n " %{F$color_1}$separator%{F-}%{B$color_1}"
#echo -n "  $(display_time) "
#echo -n ' %{B-}'

echo -n "%{r}%{F$color_1}$separator%{F-}%{B$color_1}  $(get_connection)  %{F$color_bg}$separator%{B-}%{F-}  $(display_battery)  %{F$color_1}$separator%{F-}%{B$color_1}  $(display_time)  %{B-}"

sleep 1;
done
