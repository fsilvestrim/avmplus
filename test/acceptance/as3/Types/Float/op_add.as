/* -*- c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set ts=4 sw=4 expandtab: (add to ~/.vimrc: set modeline modelines=5) */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;

// var SECTION = "6.5.1";
// var VERSION = "AS3";
// var TITLE   = "The + operation agumented by float values";



var f1:float = 1.2345678e9;
var f2:float = 6.543210987;
f2 *= float(10000); // TODO: use 10000f

Assert.expectEq("float addition result", float(1.234633216e+09), f1+f2);
Assert.expectEq("FloatLiteral addition result", float(1.234633216e+09), 1.2345678e9f+65432.10987f);
Assert.expectEq("addition on float & number should yield different results", true, (Number(f1)+Number(f2)) != Number(f1+f2) );
Assert.expectEq("additiom of 2 floats returns a float", "float", getQualifiedClassName(f1+f2));

function check(val1:*, val2:*):*
{
    return (val1 + val2);
}
var onef:float = 1f;
AddStrictTestCase("float + Number", 2, check(onef, 1));
AddStrictTestCase("FloatLiteral + Number", 2, check(1f, 1));
AddStrictTestCase("Number + float", 2, check(1, onef));
AddStrictTestCase("Number + FloatLiteral", 2, check(1, 1f));
AddStrictTestCase("Boolean + float", 2, check(true, onef));
AddStrictTestCase("String + float", String("11"), check("1", onef));




