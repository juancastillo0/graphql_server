"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[6560],{3905:(e,t,r)=>{r.d(t,{Zo:()=>c,kt:()=>f});var n=r(7294);function a(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function o(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function s(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?o(Object(r),!0).forEach((function(t){a(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):o(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function l(e,t){if(null==e)return{};var r,n,a=function(e,t){if(null==e)return{};var r,n,a={},o=Object.keys(e);for(n=0;n<o.length;n++)r=o[n],t.indexOf(r)>=0||(a[r]=e[r]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(n=0;n<o.length;n++)r=o[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(a[r]=e[r])}return a}var i=n.createContext({}),p=function(e){var t=n.useContext(i),r=t;return e&&(r="function"==typeof e?e(t):s(s({},t),e)),r},c=function(e){var t=p(e.components);return n.createElement(i.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},u=n.forwardRef((function(e,t){var r=e.components,a=e.mdxType,o=e.originalType,i=e.parentName,c=l(e,["components","mdxType","originalType","parentName"]),u=p(r),f=a,h=u["".concat(i,".").concat(f)]||u[f]||d[f]||o;return r?n.createElement(h,s(s({ref:t},c),{},{components:r})):n.createElement(h,s({ref:t},c))}));function f(e,t){var r=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=r.length,s=new Array(o);s[0]=u;var l={};for(var i in t)hasOwnProperty.call(t,i)&&(l[i]=t[i]);l.originalType=e,l.mdxType="string"==typeof e?e:a,s[1]=l;for(var p=2;p<o;p++)s[p]=r[p];return n.createElement.apply(null,s)}return n.createElement.apply(null,r)}u.displayName="MDXCreateElement"},1967:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>i,contentTitle:()=>s,default:()=>d,frontMatter:()=>o,metadata:()=>l,toc:()=>p});var n=r(7462),a=(r(7294),r(3905));const o={sidebar_position:7},s="Middlewares",l={unversionedId:"leto_shelf/middlewares",id:"leto_shelf/middlewares",title:"Middlewares",description:"Other shelf middlewares not really specific to GraphQL servers.",source:"@site/docs/leto_shelf/middlewares.md",sourceDirName:"leto_shelf",slug:"/leto_shelf/middlewares",permalink:"/leto/docs/leto_shelf/middlewares",draft:!1,editUrl:"https://github.com/juancastillo0/leto/edit/main/leto_shelf/README.md",tags:[],version:"current",sidebarPosition:7,frontMatter:{sidebar_position:7},sidebar:"tutorialSidebar",previous:{title:"Features and Utilities",permalink:"/leto/docs/leto_shelf/features-and-utilities"}},i={},p=[{value:"etag",id:"etag",level:2},{value:"cors",id:"cors",level:2},{value:"jsonParse",id:"jsonparse",level:2}],c={toc:p};function d(e){let{components:t,...r}=e;return(0,a.kt)("wrapper",(0,n.Z)({},c,r,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"middlewares"},"Middlewares"),(0,a.kt)("p",null,"Other shelf middlewares not really specific to GraphQL servers."),(0,a.kt)("h2",{id:"etag"},"etag"),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"https://github.com/juancastillo0/leto/blob/main/leto_shelf/test/etag_test.dart"},"Tests")),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"https://developer.mozilla.org/docs/Web/HTTP/Headers/ETag"},"ETag")," and ",(0,a.kt)("a",{parentName:"p",href:"https://developer.mozilla.org/docs/Web/HTTP/Headers/If-None-Match"},"If-None-Match")," headers computation and verification."),(0,a.kt)("p",null,"This middleware will compute an ETag for every response that returns ",(0,a.kt)("inlineCode",{parentName:"p"},"true")," in the provided ",(0,a.kt)("inlineCode",{parentName:"p"},"shouldProcessResponse"),' function (default: response with a status code less than 300) and set it in the "ETag" response header. If an ETag was already set, it will leave it as is. With the ETag, it will compare it with the request\'s "If-None-Match" values. If the ETag is found, a 304 status code will be sent with the ETag in the response header.'),(0,a.kt)("p",null,"You can specify a custom ",(0,a.kt)("inlineCode",{parentName:"p"},"hasher")," function that returns the ETag given the response's body, by default we use ",(0,a.kt)("inlineCode",{parentName:"p"},"package:crypt"),"'s ",(0,a.kt)("inlineCode",{parentName:"p"},"sha256")," encoder."),(0,a.kt)("h2",{id:"cors"},"cors"),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"https://github.com/juancastillo0/leto/blob/main/leto_shelf/test/cors_test.dart"},"Tests")),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"https://developer.mozilla.org/docs/Glossary/CORS"},"CORS")," requests configuration."),(0,a.kt)("h2",{id:"jsonparse"},"jsonParse"),(0,a.kt)("p",null,"Parse JSON bodies"))}d.isMDXComponent=!0}}]);