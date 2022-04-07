require('luacov')
local find = string.find
local assert = require('assert')
local trim = require('string.trim')

local function test_trim_space()
    -- test that remove whitespace
    for v, exp in pairs({
        [''] = '',
        ['  '] = '',
        [' foo/bar/baz'] = 'foo/bar/baz',
        ['\t foo bar baz \t '] = 'foo bar baz',
        ['baz'] = 'baz',
    }) do
        assert.equal(trim(v), exp)
    end

    -- test that throw erorr if s is not string
    local err = assert.throws(function()
        trim()
    end)
    assert(find(err, '#1 (string expected,', nil, true), err)
end

local function test_trim_prefix()
    local prefix = 'foo'

    -- test that returns true
    for v, exp in pairs({
        [''] = '',
        ['   '] = '   ',
        ['foo/bar/baz'] = '/bar/baz',
        ['foo bar baz'] = ' bar baz',
        ['foo'] = '',
    }) do
        assert.equal(trim.prefix(v, prefix), exp)
    end

    -- test that throw erorr if s is not string
    local err = assert.throws(function()
        trim.prefix()
    end)
    assert(find(err, '#1 (string expected,', nil, true), err)

    -- test that throw erorr if prefix is not string
    err = assert.throws(function()
        trim.prefix('baz')
    end)
    assert(find(err, '#2 (string expected,', nil, true), err)
end

local function test_trim_suffix()
    local suffix = 'baz'

    -- test that suffix is removed
    for v, exp in pairs({
        [''] = '',
        ['  '] = '  ',
        ['foo/bar/baz'] = 'foo/bar/',
        ['foo bar baz'] = 'foo bar ',
        ['baz'] = '',
    }) do
        assert.equal(trim.suffix(v, suffix), exp)
    end

    -- test that suffix is not removed
    assert.equal(trim.suffix('foobar', suffix), 'foobar')

    -- test that throw erorr if s is not string
    local err = assert.throws(function()
        trim.suffix()
    end)
    assert(find(err, '#1 (string expected,', nil, true), err)

    -- test that throw erorr if suffix is not string
    err = assert.throws(function()
        trim.suffix('foo')
    end)
    assert(find(err, '#2 (string expected,', nil, true), err)
end

test_trim_space()
test_trim_prefix()
test_trim_suffix()
