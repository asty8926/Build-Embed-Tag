{=(COMMENT):User Settings}
{=(prefix):!}
{=(tagName):buildembed|be}

{=(offsetFromUTC):1}

{=(example):{prefix}{tagName} title:My title|desc:My description|thumb:https://i.imgur.com/0l0ZBCm.png|footer:My footer|color:blurple}

{=(defaultColor):2f3136}
{=(defaultFooter):{prefix}{tagName} title:My title|desc:My description|color:red}
{=(defaultFooter):{example}}

{=(delimiter):|}

{=(r):replace}
{=(i):index}
{=(l):lower}
{=(j):join}
{=(fb):None}
{=(d):{delimiter}}
{=(pl):%&$}

{=(COMMENT):Separating arguments into their own list variables. Replaces the delimiter with ~ in the process.}
{=(sanitizedArgs):{{r}(",\"):{args}}}
{=(jargs):{{r}({d},~):!~{sanitizedArgs}}}
{=(a1):{list(1):{jargs}}}
{=(a2):{list(2):{jargs}}}
{=(a3):{list(3):{jargs}}}
{=(a4):{list(4):{jargs}}}
{=(a5):{list(5):{jargs}}}
{=(a6):{list(6):{jargs}}}
{=(a7):{list(7):{jargs}}}
{=(a8):{list(8):{jargs}}}
{=(a9):{list(9):{jargs}}}
{=(a10):{list(10):{jargs}}}
{=(a11):{list(11):{jargs}}}

{=(fieldsName):image title titleurl name nameicon nameurl color description thumbnail footer footericon {fb} !}

{=(COMMENT):Processes a substring matching on the keyword/field name of every argument up to the 10th and returns it.}
{=(COMMENT):Raw argument word, substring matched word, and then word content}
{=(w1):{{l}:{a1(1)::}}}
{=(word1):{fieldsName({{i}({w1}):{{r}({w1},. {w1} .):{fieldsName}}})}}
{=(content1):{a1(2+)::}}

{=(w2):{{l}:{a2(1)::}}}
{=(word2):{fieldsName({{i}({w2}):{{r}({w2},. {w2} .):{fieldsName}}})}}
{=(content2):{a2(2+)::}}

{=(w3):{{l}:{a3(1)::}}}
{=(word3):{fieldsName({{i}({w3}):{{r}({w3},. {w3} .):{fieldsName}}})}}
{=(content3):{a3(2+)::}}

{=(w4):{{l}:{a4(1)::}}}
{=(word4):{fieldsName({{i}({w4}):{{r}({w4},. {w4} .):{fieldsName}}})}}
{=(content4):{a4(2+)::}}

{=(w5):{{l}:{a5(1)::}}}
{=(word5):{fieldsName({{i}({w5}):{{r}({w5},. {w5} .):{fieldsName}}})}}
{=(content5):{a5(2+)::}}

{=(w6):{{l}:{a6(1)::}}}
{=(word6):{fieldsName({{i}({w6}):{{r}({w6},. {w6} .):{fieldsName}}})}}
{=(content6):{a6(2+)::}}

{=(w7):{{l}:{a7(1)::}}}
{=(word7):{fieldsName({{i}({w7}):{{r}({w7},. {w7} .):{fieldsName}}})}}
{=(content7):{a7(2+)::}}

{=(w8):{{l}:{a8(1)::}}}
{=(word8):{fieldsName({{i}({w8}):{{r}({w8},. {w8} .):{fieldsName}}})}}
{=(content8):{a8(2+)::}}

{=(w9):{{l}:{a9(1)::}}}
{=(word9):{fieldsName({{i}({w9}):{{r}({w9},. {w9} .):{fieldsName}}})}}
{=(content9):{a9(2+)::}}

{=(w10):{{l}:{a10(1)::}}}
{=(word10):{fieldsName({{i}({w10}):{{r}({w10},. {w10} .):{fieldsName}}})}}
{=(content10):{a10(2+)::}}

{=(w11):{{l}:{a11(1)::}}}
{=(word11):{fieldsName({{i}({w11}):{{r}({w11},. {w11} .):{fieldsName}}})}}
{=(content11):{a11(2+)::}}

{=(COMMENT):Fields variables from input}
{=(f.image):}
{=(f.title):}
{=(f.titleurl):}
{=(f.name):}
{=(f.nameicon):}
{=(f.nameurl):}
{=(f.color):{defaultColor}}
{=(f.description):}
{=(f.thumbnail):}
{=(f.footer):}
{=(f.footericon):}

{=(f.{word1}):{content1}}
{=(f.{word2}):{content2}}
{=(f.{word3}):{content3}}
{=(f.{word4}):{content4}}
{=(f.{word5}):{content5}}
{=(f.{word6}):{content6}}
{=(f.{word7}):{content7}}
{=(f.{word8}):{content8}}
{=(f.{word9}):{content9}}
{=(f.{word10}):{content10}}

{=(COMMENT):Spaces out the color, then removes the first added space}
{=(sepColor):{{r}(, ):{f.color}}}
{=(sepColor):{sepColor(2+)}}
{=(sepColor):{sepColor(+-1)}}
{=(COMMENT):Sanitize our color to only keep our first 6 characters of it, remove the # sign if any and make every letter uppercase}
{=(sanitizedColor):{{r}(#,):{lower:{{j}():{sepColor}}}}}

{=(COMMENT):Dictionary of color names, returned as hex.
https://htmlcolorcodes.com/color-names/}
{=(cl.{f.color}):{sanitizedColor(+6)}}
{=(cl.white):FFFFFF}
{=(cl.silver):C0C0C0}
{=(cl.gray):808080}
{=(cl.grey):{cl.gray}}
{=(cl.slategray):708090}
{=(cl.slategrey):{cl.slategray}}
{=(cl.black):000000}
{=(cl.red):FF0000}
{=(cl.yellow):FFFF00}
{=(cl.lime):00FF00}
{=(cl.green):008000}
{=(cl.cyan):00FFFF}
{=(cl.blue):0000FF}
{=(cl.navy):000080}
{=(cl.purple):800080}
{=(cl.salmon):FA8072}
{=(cl.pink):FFC0CB}
{=(cl.coral):FF7F50}
{=(cl.orange):FFA500}
{=(cl.gold):FFD700}
{=(cl.magenta):FF00FF}
{=(cl.violet):EE82EE}
{=(cl.indigo):4B0082}
{=(cl.slateblue):6A5ACD}
{=(cl.midnightblue):191970}
{=(cl.wheat):F5DEB3}
{=(cl.chocolate):F5DEB3}

{=(cl.discord):2F3136}
{=(cl.embed):{cl.discord}}
{=(cl.blurple):7289DA}

{=(cl.self):{user(color)}}
{=(cl.myself):{cl.self}}
{=(cl.me):{cl.self}}

{=(finalHexColor):{upper:{cl.{lower:{{j}():{f.color}}}}}}

{=(COMMENT):Spacing out our hexadecimal code}
{=(spacedHex):{{r}(F,15):{{r}(E,14):{{r}(D,13):{{r}(C,12):{{r}(B,11):{{r}(A,10):{{r}(, ):{finalHexColor}}}}}}}}}
{=(spacedHex):{spacedHex(2+)}}
{=(spacedHex):{{j}(~):{spacedHex(+-1)}}}

{=(COMMENT):Hex to decimal part}
{=(finalDecimalColor):{m:trunc({{j}():{spacedHex(0):~}*16^0 + {spacedHex(-1):~}*16^1 + {spacedHex(-2):~}*16^2 + {spacedHex(-3):~}*16^3 + {spacedHex(-4):~}*16^4 + {spacedHex(-5):~}*16^5)}}}

{=(finalJSON):{ "url":"{f.titleurl}",
	"title": "{f.title}",
	"description": "{f.description}",
	"thumbnail": {
		"url": "{f.thumbnail}"
		},
	"image": {
		"url": "{f.image}"
		},
	"author": {
		"name":"{f.name}",
		"url": "{f.nameurl}",
		"icon_url": "{f.nameicon}"
		},
	"color": {finalDecimalColor},
	"footer": {
		"icon_url": "{f.footericon}",
		"text": "{f.footer}"}
		}}

{=(debug):__Debug:__
jargs: {jargs}

1: {w1} `{word1}` {content1}
2: {w2} `{word2}` {content2}
3: {w3} `{word3}` {content3}
4: {w4} `{word4}` {content4}
5: {w5} `{word5}` {content5}
6: {w6} `{word6}` {content6}
7: {w7} `{word7}` {content7}
8: {w8} `{word8}` {content8}
9: {w9} `{word9}` {content9}
10: {w10} `{word10}` {content10}

f.image: {f.image}
f.title: {f.name}
f.titleurl: {f.name}
f.name: {f.name}
f.nameicon: {f.nameicon}
f.nameurl: {f.nameurl}

**Color**
f.color: {f.color} - sepColor: {sepColor} - sanitizedColor: {sanitizedColor}
spacedHex: `{spacedHex}`
finalHexColor: `{finalHexColor}`
finalDecimalColor: `{finalDecimalColor}`

f.description: {f.description}
f.thumbnail: {f.thumbnail}
f.footer: {f.footer}
f.footericon: {f.footericon}

Example:```css
{example}```
FINAL JSON:```json
{finalJSON}
```
}

{c:cembed {channel(id)} {finalJSON}}
