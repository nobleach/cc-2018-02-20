defmodule ElixirAnagramsTest do
    use ExUnit.Case
    doctest ElixirAnagrams

    test "gets a list of sorted characters" do
        assert ElixirAnagrams.stringToSortedList("Eleven plus two!") == ["e", "e", "e", "l", "l", "n", "o", "p", "s", "t", "u", "v", "w"]
    end

    test "returns true if phrases match" do
        assert ElixirAnagrams.arePhrasesAnagrams("Eleven plus two", "Twelve plus one") == true
        assert ElixirAnagrams.arePhrasesAnagrams("derp", "yo") == false
        assert ElixirAnagrams.arePhrasesAnagrams("Mr. Mojo risin'",  "Jim Morrison") == true
        assert ElixirAnagrams.arePhrasesAnagrams("Mother-in-law",  "Woman Hitler")
        assert ElixirAnagrams.arePhrasesAnagrams("Father-in-law", "Near halfwit")
        assert ElixirAnagrams.arePhrasesAnagrams("Heavy Rain?", "Hire a Navy!")
    end
end
