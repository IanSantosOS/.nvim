local animation = {
    fps = 50,
    name = "slide",
}

-- update function
animation.update = function(grid)
    for i = 1, #grid do
        local prev = grid[i][#grid[i]]
        for j = 1, #grid[i] do
            grid[i][j], prev = prev, grid[i][j]
        end
    end
    return true
end

return {
    "eandrju/cellular-automaton.nvim",
    config = function()
        require("cellular-automaton").register_animation(animation)
    end,
}
