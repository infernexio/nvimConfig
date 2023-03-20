local setup, comment = pcall(require, "Comment")
if not setup then
    print("comment.nvim not installed")
    return
end

comment.setup()
