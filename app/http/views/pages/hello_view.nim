import basolato/view

proc impl(title: string): string = 
    tmpli html"""
        <div>
            hello
        </div>
    """

proc helloView*(): string =
    let title = "hello!"
    return impl(title)