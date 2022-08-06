"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[2807],{3905:(e,t,n)=>{n.d(t,{Zo:()=>d,kt:()=>h});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function s(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?s(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):s(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},s=Object.keys(e);for(r=0;r<s.length;r++)n=s[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var s=Object.getOwnPropertySymbols(e);for(r=0;r<s.length;r++)n=s[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var i=r.createContext({}),u=function(e){var t=r.useContext(i),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},d=function(e){var t=u(e.components);return r.createElement(i.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},c=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,s=e.originalType,i=e.parentName,d=l(e,["components","mdxType","originalType","parentName"]),c=u(n),h=a,f=c["".concat(i,".").concat(h)]||c[h]||p[h]||s;return n?r.createElement(f,o(o({ref:t},d),{},{components:n})):r.createElement(f,o({ref:t},d))}));function h(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var s=n.length,o=new Array(s);o[0]=c;var l={};for(var i in t)hasOwnProperty.call(t,i)&&(l[i]=t[i]);l.originalType=e,l.mdxType="string"==typeof e?e:a,o[1]=l;for(var u=2;u<s;u++)o[u]=n[u];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}c.displayName="MDXCreateElement"},3977:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>i,contentTitle:()=>o,default:()=>p,frontMatter:()=>s,metadata:()=>l,toc:()=>u});var r=n(7462),a=(n(7294),n(3905));const s={sidebar_position:6},o="Features and Utilities",l={unversionedId:"leto_shelf/features-and-utilities",id:"leto_shelf/features-and-utilities",title:"Features and Utilities",description:"Some useful utilities and bindings for working with shelf HTTP requests and responses in Leto.",source:"@site/docs/leto_shelf/features-and-utilities.md",sourceDirName:"leto_shelf",slug:"/leto_shelf/features-and-utilities",permalink:"/leto/docs/leto_shelf/features-and-utilities",draft:!1,editUrl:"https://github.com/juancastillo0/leto/edit/main/leto_shelf/README.md",tags:[],version:"current",sidebarPosition:6,frontMatter:{sidebar_position:6},sidebar:"tutorialSidebar",previous:{title:"Handlers",permalink:"/leto/docs/leto_shelf/handlers"},next:{title:"Middlewares",permalink:"/leto/docs/leto_shelf/middlewares"}},i={},u=[{value:"File Upload",id:"file-upload",level:2},{value:"Requests and Responses",id:"requests-and-responses",level:2},{value:"Request",id:"request",level:3},{value:"Headers",id:"headers",level:3},{value:"Custom Response",id:"custom-response",level:3}],d={toc:u};function p(e){let{components:t,...n}=e;return(0,a.kt)("wrapper",(0,r.Z)({},d,n,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"features-and-utilities"},"Features and Utilities"),(0,a.kt)("p",null,"Some useful utilities and bindings for working with shelf HTTP requests and responses in Leto."),(0,a.kt)("h2",{id:"file-upload"},"File Upload"),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"https://github.com/juancastillo0/leto/blob/main/leto_shelf/test/file_upload_test.dart"},"Tests")),(0,a.kt)("p",null,'Only available using "multipart/form-data" bodies, your HTTP client will need to follow the ',(0,a.kt)("a",{parentName:"p",href:"https://github.com/jaydenseric/graphql-multipart-request-spec"},"https://github.com/jaydenseric/graphql-multipart-request-spec")," specification. Can't we used with Web Sockets."),(0,a.kt)("p",null,"Use the ",(0,a.kt)("inlineCode",{parentName:"p"},"Upload")," class and the ",(0,a.kt)("inlineCode",{parentName:"p"},"Upload.graphQLType")," for building schemas. When using code generation ",(0,a.kt)("inlineCode",{parentName:"p"},"Upload.graphQLType")," will be used with no additional configuration, you just need to put the ",(0,a.kt)("inlineCode",{parentName:"p"},"Upload")," type as input to a resolver or as a field in an Input Object."),(0,a.kt)("h2",{id:"requests-and-responses"},"Requests and Responses"),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"https://github.com/juancastillo0/leto/blob/main/leto_shelf/test/req_ctx_utils_test.dart"},"Tests")),(0,a.kt)("h3",{id:"request"},"Request"),(0,a.kt)("p",null,"You can access the shelf HTTP request using the ",(0,a.kt)("inlineCode",{parentName:"p"},"extractRequest")," function or the Dart extension (provided in the same file) for Leto's field resolver ",(0,a.kt)("inlineCode",{parentName:"p"},"Ctx")," argument."),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"import 'package:leto_schema/leto_schema.dart'; // Query and Ctx\nimport 'package:leto_shelf/leto_shelf.dart'; // extractRequest and ctx.request extension\n\n@Query()\nString getName(Ctx ctx) {\n  final Request request = ctx.request;\n  assert(request == extractRequest(ctx));\n  assert(request.headersAll is Map<String, List<String>>);\n  return '';\n}\n")),(0,a.kt)("h3",{id:"headers"},"Headers"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"appendHeader")),(0,a.kt)("p",null,"Adds a new value to a given header, does not override the previously set values for the header."),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"changeHeader")),(0,a.kt)("p",null,"Sets a new value to a given header, will override the previously set values for the header."),(0,a.kt)("h3",{id:"custom-response"},"Custom Response"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"updateResponse")),(0,a.kt)("p",null,'If the new response contains a body or the status code is different from 200, the new response will be returned without modification. However, if the new response does not contain a body and it\'s status code is 200 (maybe you only changed the headers), the default GraphQL json body will be appended along side the "application/json" content type response header.'),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"import 'package:leto_schema/leto_schema.dart';\nimport 'package:leto_shelf/leto_shelf.dart';\n\n@Query()\nString getName(Ctx ctx) {\n  ctx.appendHeader('custom-header', 'headers-value');\n  assert(extractResponse(ctx).headersAll['custom-header']![0] == 'headers-value');\n  ctx.changeHeader('custom-header', 'headers-value-2'); // override\n\n  updateResponse(ctx, (response) => response.change(\n    // Could also call `ctx.appendHeader` twice for each value\n    headers: {'custom-header2': ['h1', 'h2']}\n  ));\n\n  final Response response = extractResponse(ctx);\n  assert(response.headersAll['custom-header']![0] == 'headers-value-2'); // overridden\n  assert(response.headersAll['custom-header2']![0] == 'h1');\n  assert(response.headersAll['custom-header2']![1] == 'h2');\n\n  return '';\n}\n")))}p.isMDXComponent=!0}}]);