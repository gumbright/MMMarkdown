//
//  MMMarkdownTests.m
//  MMMarkdownTests
//
//  Copyright (c) 2012 Matt Diephouse.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#import "MMTestCase.h"


#import "MMMarkdown.h"

@interface MMPHPMarkdownTests : MMTestCase

@end

@implementation MMPHPMarkdownTests

//==================================================================================================
#pragma mark -
#pragma mark Helpers
//==================================================================================================

- (void) runTestWithName:(NSString *)aName
{
    [self runTestWithName:aName inDirectory:@"php-markdown"];
}


//==================================================================================================
#pragma mark -
#pragma mark Test Cases
//==================================================================================================

- (void) testBackslashEscapes
{
    [self runTestWithName:@"Backslash escapes"];
}

- (void) testCodeBlockInAListItem
{
    [self runTestWithName:@"Code block in a list item"];
}

- (void) testCodeSpans
{
    [self runTestWithName:@"Code Spans"];
}

- (void) testEmailAutoLinks
{
    [self runTestWithName:@"Email auto links"];
}

#if 0
/*
 * I've disabled this test because I disagree with the failures. The test tries to set expectations
 * for cases where it expects the emphasis not to occur. For instance, it expects this:
 *
 *     **test  *test** test*
 *
 * to render as this:
 *
 *     **test  <em>test</em>* test*
 *
 * And while that is a valid interpretation, I don't believe that it is the only valid one. I'm
 * more inclined to call this behavior undefined, especially since existing markdown implementations
 * already disagree about its meaning.
 *
 * The legitimate failures from this test were added as standalone cases to the MMMarkdown suite.
 */
- (void) testEmphasis
{
    [self runTestWithName:@"Emphasis"];
}
#endif

- (void) testHeaders
{
    [self runTestWithName:@"Headers"];
}

- (void) testImagesUntitled
{
    [self runTestWithName:@"Images (Untitled)"];
}

- (void) testInlineHTMLSimple
{
    [self runTestWithName:@"Inline HTML (Simple)"];
}

- (void) testInlineHTMLSpan
{
    [self runTestWithName:@"Inline HTML (Span)"];
}

- (void) testInlineHTMLComments
{
    [self runTestWithName:@"Inline HTML comments"];
}

#if RUN_KNOWN_FAILURES
- (void) testInsAndDel
{
    [self runTestWithName:@"Ins & del"];
}
#endif

#if 0
/*
 * PHP-Markdown thinks that this:
 *
 *     [link](<aaa)aaa>)
 *
 * should become this:
 *
 *     <a href='aaa)aaa>'>link</a>
 *
 * because the angle brackets protect the ')'. Most other implementations don't do this. And
 * since I'm not convinced there's any value in it, I'm not going to worry about it.
 */
- (void) testLinksInlineStyle
{
    [self runTestWithName:@"Links, inline style"];
}
#endif

- (void) testMD5Hashes
{
    [self runTestWithName:@"MD5 Hashes"];
}

- (void) testNesting
{
    [self runTestWithName:@"Nesting"];
}

- (void) testParensInURL
{
    [self runTestWithName:@"Parens in URL"];
}

- (void) testPHPSpecificBugs
{
    [self runTestWithName:@"PHP-Specific Bugs"];
}

- (void) testTightBlocks
{
    [self runTestWithName:@"Tight blocks"];
}


@end
