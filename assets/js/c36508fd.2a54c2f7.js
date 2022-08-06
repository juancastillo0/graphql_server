"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[6511],{3905:(e,t,n)=>{n.d(t,{Zo:()=>s,kt:()=>h});var a=n(7294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function r(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,a)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?r(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):r(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,a,i=function(e,t){if(null==e)return{};var n,a,i={},r=Object.keys(e);for(a=0;a<r.length;a++)n=r[a],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);for(a=0;a<r.length;a++)n=r[a],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var c=a.createContext({}),d=function(e){var t=a.useContext(c),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},s=function(e){var t=d(e.components);return a.createElement(c.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return a.createElement(a.Fragment,{},t)}},m=a.forwardRef((function(e,t){var n=e.components,i=e.mdxType,r=e.originalType,c=e.parentName,s=l(e,["components","mdxType","originalType","parentName"]),m=d(n),h=i,u=m["".concat(c,".").concat(h)]||m[h]||p[h]||r;return n?a.createElement(u,o(o({ref:t},s),{},{components:n})):a.createElement(u,o({ref:t},s))}));function h(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var r=n.length,o=new Array(r);o[0]=m;var l={};for(var c in t)hasOwnProperty.call(t,c)&&(l[c]=t[c]);l.originalType=e,l.mdxType="string"==typeof e?e:i,o[1]=l;for(var d=2;d<r;d++)o[d]=n[d];return a.createElement.apply(null,o)}return a.createElement.apply(null,n)}m.displayName="MDXCreateElement"},720:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>c,contentTitle:()=>o,default:()=>p,frontMatter:()=>r,metadata:()=>l,toc:()=>d});var a=n(7462),i=(n(7294),n(3905));const r={sidebar_position:12},o="Attachments",l={unversionedId:"main/attachments",id:"main/attachments",title:"Attachments",description:"This api is experimental.",source:"@site/docs/main/attachments.md",sourceDirName:"main",slug:"/main/attachments",permalink:"/leto/docs/main/attachments",draft:!1,editUrl:"https://github.com/juancastillo0/leto/edit/main/README.md",tags:[],version:"current",sidebarPosition:12,frontMatter:{sidebar_position:12},sidebar:"tutorialSidebar",previous:{title:"Directives",permalink:"/leto/docs/main/directives"},next:{title:"Utilities",permalink:"/leto/docs/main/utilities"}},c={},d=[{value:"AttachmentWithValidation",id:"attachmentwithvalidation",level:2},{value:"ToDirectiveValue",id:"todirectivevalue",level:2},{value:"<code>KeyAttachment</code>",id:"keyattachment",level:3},{value:"<code>ValidaAttachment</code>",id:"validaattachment",level:3},{value:"AttachFn //TODO: 1A",id:"attachfn-todo-1a",level:2}],s={toc:d};function p(e){let{components:t,...n}=e;return(0,i.kt)("wrapper",(0,a.Z)({},s,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"attachments"},"Attachments"),(0,i.kt)("p",null,"This api is experimental."),(0,i.kt)("p",null,"All GraphQL elements in the schema can have addition custom attachments. This can be used by other libraries or extensions to change the behavior of execution. For example, for supporting custom input validations or configuring the max age for some fields in an extension that caches responses."),(0,i.kt)("h2",{id:"attachmentwithvalidation"},"AttachmentWithValidation"),(0,i.kt)("p",null,"An attachment can register validation logic by implementing ",(0,i.kt)("inlineCode",{parentName:"p"},"AttachmentWithValidation"),". The required validation method ",(0,i.kt)("inlineCode",{parentName:"p"},"validateElement")," will be executed when the GraphQLSchema is validated, as an argument it will receive the Schema validation context and the ",(0,i.kt)("inlineCode",{parentName:"p"},"GraphQLElement")," associated with the attachment."),(0,i.kt)("h2",{id:"todirectivevalue"},"ToDirectiveValue"),(0,i.kt)("p",null,"Implementing this interface allows the GraphQLSchema's SDL String to contain the attachment's information ad directives over the specific element associated with the attachment. Attachments that implement ",(0,i.kt)("inlineCode",{parentName:"p"},"ToDirectiveValue")," require the following getters:"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"},"  /// The directive value represented by this object\n  DirectiveNode get directiveValue;\n\n  /// The directive definition of the [directiveValue]\n  GraphQLDirective get directiveDefinition;\n")),(0,i.kt)("p",null,"We provide two attachments, both of which implement ",(0,i.kt)("inlineCode",{parentName:"p"},"AttachmentWithValidation")," and ",(0,i.kt)("inlineCode",{parentName:"p"},"ToDirectiveValue"),"."),(0,i.kt)("h3",{id:"keyattachment"},(0,i.kt)("inlineCode",{parentName:"h3"},"KeyAttachment")),(0,i.kt)("p",null,"Implements the ",(0,i.kt)("a",{parentName:"p",href:"directives#keydirective"},"key directive")," over a given object. The ",(0,i.kt)("inlineCode",{parentName:"p"},"fields")," String is required."),(0,i.kt)("h3",{id:"validaattachment"},(0,i.kt)("inlineCode",{parentName:"h3"},"ValidaAttachment")),(0,i.kt)("p",null,"Implements the ",(0,i.kt)("a",{parentName:"p",href:"directives#validadirective"},"valida directive")," over a given input field or argument. The ",(0,i.kt)("inlineCode",{parentName:"p"},"annotation")," argument should be the ",(0,i.kt)("inlineCode",{parentName:"p"},"ValidaField")," specified for the element. You probably should use it manually, when using code generation the validation will be performed for any ",(0,i.kt)("inlineCode",{parentName:"p"},"@Valida()")," annotated class or resolver and the attachment will be placed at the appropriate location."),(0,i.kt)("h2",{id:"attachfn-todo-1a"},"AttachFn //TODO: 1A"))}p.isMDXComponent=!0}}]);