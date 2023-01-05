function Span(el)
    if el.t == "Span" then
        for k, _ in ipairs(el.content) do
          print(el.content[k])

            if el.content[k].t == "Str" and el.content[k].text == "Dark," and
                el.content[k + 1].t == "Space" and el.content[k + 2].t == "Str" and
                el.content[k + 2].text:find("^M.") and
                el.content[k + 3].t == "Space" and el.content[k + 4].t == "Str" and
                el.content[k + 4].text:find("^J.") then

                local _, e = el.content[k + 4].text:find("^J.")
                local rest = el.content[k + 4].text:sub(e + 1) -- empty if e+1>length
                el.content[k] = pandoc.Strong {pandoc.Str("Dark, M. J.")}
                el.content[k + 1] = pandoc.Str(rest)
                table.remove(el.content, k + 2)
                table.remove(el.content, k + 3)
                table.remove(el.content, k + 4)
                -- safe? another way would be to set element k+2 to Str("")
                -- no real need to skip ipairs items here

            end
            if el.content[k].t == "Str" and el.content[k].text == "Dark," and
                el.content[k + 1].t == "Space" and el.content[k + 2].t == "Str" and
                el.content[k + 2].text:find("^M.J.") then

                local _, e = el.content[k + 2].text:find("^M.J.")
                local rest = el.content[k + 2].text:sub(e + 1) -- empty if e+1>length
                el.content[k] = pandoc.Strong {pandoc.Str("Dark, M.J.")}
                el.content[k + 1] = pandoc.Str(rest)
                table.remove(el.content, k + 2)
                -- safe? another way would be to set element k+2 to Str("")
                -- no real need to skip ipairs items here

            end

            if el.content[k].t == "Str" and el.content[k].text == "Dark," and
                el.content[k + 1].t == "Space" and el.content[k + 2].t == "Str" and
                el.content[k + 2].text:find("^M.") then

                local _, e = el.content[k + 2].text:find("^M.")
                local rest = el.content[k + 2].text:sub(e + 1) -- empty if e+1>length
                el.content[k] = pandoc.Strong {pandoc.Str("Dark, M.")}
                el.content[k + 1] = pandoc.Str(rest)
                table.remove(el.content, k + 2)
                -- safe? another way would be to set element k+2 to Str("")
                -- no real need to skip ipairs items here

            end

        end
    end
    return el
end
