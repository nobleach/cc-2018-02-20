defmodule ElixirAnagrams do
    def stringToSortedList(str) do
        str
        |> String.downcase
        |> String.replace(~r/\W/, "")
        |> String.split("", trim: true)
        |> Enum.sort
    end

    def arePhrasesAnagrams(phr1, phr2) do
        if String.length(phr1) != String.length(phr2) do
            false
        end

        stringToSortedList(phr1) == stringToSortedList(phr2)
    end
end
