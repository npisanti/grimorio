local config = import("micro/config")
local shell = import("micro/shell")

function csound_run(bp)
    local buf = bp.Buf
    if buf:FileType() == "csound" then
        -- the true means run in the foreground
        -- the false means send output to stdout (instead of returning it)
        shell.RunCommand("csound " .. buf.Path)
    end
end
