import 'dart:io';

import 'package:http/http.dart' as http;

String sample2 = '''
{
    "time" : 1635762962061,
    "blocks" : [
        {
            "id" : "sXZD91Y_Eo",
            "type" : "header",
            "data" : {
                "text" : "Editor.js",
                "level" : 2
            }
        },
        {
            "id" : "fbH5SQMm_U",
            "type" : "paragraph",
            "data" : {
                "text" : "Hey. Meet the new Editor. On this page you can see it in action — try to edit this text."
            }
        },
        {
            "id" : "UFK0Qjfd7o",
            "type" : "header",
            "data" : {
                "text" : "Key features",
                "level" : 3
            }
        },
        {
            "id" : "14QtIhq8ew",
            "type" : "list",
            "data" : {
                "style" : "unordered",
                "items" : [
                    "It is a block-styled editor",
                    "It returns clean data output in JSON",
                    "Designed to be extendable and pluggable with a simple API"
                ]
            }
        },
        {
            "id" : "4F1HiY3Kpn",
            "type" : "header",
            "data" : {
                "text" : "What does it mean «block-styled editor»",
                "level" : 3
            }
        },
        {
            "id" : "scJ2HqkFML",
            "type" : "paragraph",
            "data" : {
                "text" : "Workspace in classic editors is made of a single contenteditable element, used to create different HTML markups. Editor.js <mark>workspace consists of separate Blocks: paragraphs, headings, images, lists, quotes, etc</mark>. Each of them is an independent contenteditable element (or more complex structure) provided by Plugin and united by Editor's Core."
            }
        },
        {
            "id" : "3v97p-ufpO",
            "type" : "paragraph",
            "data" : {
                "text" : "There are dozens of <a href='https://google.com'>ready-to-use Blocks</a> and the <a href='https://google.com'>simple API</a> for creation any Block you need. For example, you can implement Blocks for Tweets, Instagram posts, surveys and polls, CTA-buttons and even games."
            }
        },
        {
            "id" : "OaYD71VCrT",
            "type" : "header",
            "data" : {
                "text" : "What does it mean clean data output",
                "level" : 3
            }
        },
        {
            "id" : "9VbFVGSpLL",
            "type" : "paragraph",
            "data" : {
                "text" : "Classic WYSIWYG-editors produce raw HTML-markup with both content data and content appearance. On the contrary, Editor.js outputs JSON object with data of each Block. You can see an example below"
            }
        },
        {
            "id" : "U1xX3pWX2a",
            "type" : "paragraph",
            "data" : {
                "text" : "Given data can be used as you want: render with HTML for <code>Web clients</code>, render natively for <code>mobile apps</code>, create markup for <code>Facebook Instant Articles</code> or <code>Google AMP</code>, generate an <code>audio version</code> and so on."
            }
        },
        {
            "id" : "sjH69nIbzL",
            "type" : "paragraph",
            "data" : {
                "text" : "Clean data is useful to sanitize, validate and process on the backend."
            }
        },
        {
            "id" : "ZHl8PtX_b-",
            "type" : "delimiter",
            "data" : {}
        },
        {
            "id" : "gJQB89k0eq",
            "type" : "paragraph",
            "data" : {
                "text" : "We have been working on this project more than three years. Several large media projects help us to test and debug the Editor, to make it's core more stable. At the same time we significantly improved the API. Now, it can be used to create any plugin for any task. Hope you enjoy. 😏"
            }
        },
        {
            "id" : "BAjlqJHcDn",
            "type" : "image",
            "data" : {
                "file" : {
                    "url" : "https://codex.so/public/app/img/external/codex2x.png"
                },
                "caption" : "Cute Dog",
                "withBorder" : false,
                "stretched" : false,
                "withBackground" : false
            }
        },
        {
            "id" : "s1Dy_2biqi",
            "type" : "delimiter",
            "data" : {}
        },
        {
            "id" : "tYtlHfesO4",
            "type" : "code",
            "data" : {
                "code" : "some code"
            }
        },
        {
            "id" : "CgOnsgemvD",
            "type" : "quote",
            "data" : {
                "text" : "Some quote from somebody.",
                "caption" : "-Author name",
                "alignment" : "center"
            }
        },
        {
            "id" : "YyWbI_aRh5",
            "type" : "linkTool",
            "data" : {
                "link" : "https://google.com",
                "meta" : {
                    "url" : "https://google.com",
                    "domain" : "google.com",
                    "title" : "Google",
                    "description" : "",
                    "image" : {
                        "url" : ""
                    }
                }
            }
        },
        {
            "id" : "_4G_YeI_1Q",
            "type" : "rawTool",
            "data" : {
                "html" : "this is sample html text to be displayed"
            }
        },
        {
            "id" : "2LoHikEuQ3",
            "type" : "list",
            "data" : {
                "style" : "unordered",
                "items" : [
                    "One",
                    "Two",
                    "Three",
                    "Four",
                    "Five",
                    "... and more"
                ]
            }
        },
        {
            "id" : "cyGNbsUmn-",
            "type" : "table",
            "data" : {
                "withHeadings" : true,
                "content" : [
                    [
                        "Name",
                        "Language",
                        "Age"
                    ],
                    [
                        "John Doe",
                        "English",
                        "23"
                    ],
                    [
                        "Albert Enstein",
                        "Germany",
                        "55"
                    ]
                ]
            }
        }
    ],
    "version" : "2.22.2"
}
''';

class DataSource {
  final http.Client client;

  DataSource(this.client);

  Future<http.Response> getBlocks() async {
    return http.Response(sample2, 200, headers: {
    HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
  });
  }
}
