# Opening files and auto closing them
function open(f::Function, args...)
    io = open(args...)
    try
        f(io)
    finally
        close(io)
    end
end



# printing array to file
savedir = "savedir"
fnm = "filename.extension"
outfile = joinpath(savedir, fnm)

open(outfile, "w") do f
  for entry in array
    println(f, entry)
  end
end 

