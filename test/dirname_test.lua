local testcase = require('testcase')
local dirname = require('dirname')

function testcase.dirname()
    -- test that extract directory part of pathname
    for _, v in ipairs({
        {
            "",
            ".",
        },
        {
            ".",
            ".",
        },
        {
            "/.",
            "/",
        },
        {
            "/",
            "/",
        },
        {
            "////",
            "/",
        },
        {
            "/foo",
            "/",
        },
        {
            "x/",
            ".",
        },
        {
            "abc",
            ".",
        },
        {
            "abc/def",
            "abc",
        },
        {
            "a/b/.x",
            "a/b",
        },
        {
            "a/b/c.",
            "a/b",
        },
        {
            "a/b/c.x",
            "a/b",
        },
        {
            "///usr///bin///",
            "///usr",
        },
    }) do
        local dir = assert(dirname(v[1]))
        assert.equal(dir, v[2])
    end
    local dir = assert(dirname())
    assert.equal(dir, '.')

    -- test that throws an error if argument is invalid
    local err = assert.throws(dirname, {})
    assert.match(err, 'pathname must be string')
end
