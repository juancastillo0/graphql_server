"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[2672],{3905:(e,t,n)=>{n.d(t,{Zo:()=>c,kt:()=>f});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function s(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var l=r.createContext({}),p=function(e){var t=r.useContext(l),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},c=function(e){var t=p(e.components);return r.createElement(l.Provider,{value:t},e.children)},u={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},d=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,o=e.originalType,l=e.parentName,c=s(e,["components","mdxType","originalType","parentName"]),d=p(n),f=a,m=d["".concat(l,".").concat(f)]||d[f]||u[f]||o;return n?r.createElement(m,i(i({ref:t},c),{},{components:n})):r.createElement(m,i({ref:t},c))}));function f(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=n.length,i=new Array(o);i[0]=d;var s={};for(var l in t)hasOwnProperty.call(t,l)&&(s[l]=t[l]);s.originalType=e,s.mdxType="string"==typeof e?e:a,i[1]=s;for(var p=2;p<o;p++)i[p]=n[p];return r.createElement.apply(null,i)}return r.createElement.apply(null,n)}d.displayName="MDXCreateElement"},3121:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>l,contentTitle:()=>i,default:()=>u,frontMatter:()=>o,metadata:()=>s,toc:()=>p});var r=n(7462),a=(n(7294),n(3905));const o={sidebar_position:4},i="Objects",s={unversionedId:"graphql-schema-types/objects",id:"graphql-schema-types/objects",title:"Objects",description:"GraphQL objects allow you to specify a type with a set of fields or properties. Objects can only be outputs in a resolver. Each field can be of any output type.",source:"@site/docs/graphql-schema-types/objects.md",sourceDirName:"graphql-schema-types",slug:"/graphql-schema-types/objects",permalink:"/leto/docs/graphql-schema-types/objects",draft:!1,editUrl:"https://github.com/juancastillo0/leto/edit/main/README.md",tags:[],version:"current",sidebarPosition:4,frontMatter:{sidebar_position:4},sidebar:"tutorialSidebar",previous:{title:"Enums",permalink:"/leto/docs/graphql-schema-types/enums"},next:{title:"Inputs and Input Objects",permalink:"/leto/docs/graphql-schema-types/inputs-and-input-objects"}},l={},p=[{value:"Interfaces",id:"interfaces",level:3}],c={toc:p};function u(e){let{components:t,...n}=e;return(0,a.kt)("wrapper",(0,r.Z)({},c,n,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"objects"},"Objects"),(0,a.kt)("p",null,"GraphQL objects allow you to specify a type with a set of fields or properties. Objects can only be outputs in a resolver. Each field can be of any output type."),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"http://spec.graphql.org/draft/#sec-Objects"},"GraphQL Specification")),(0,a.kt)("p",null,"The Query, Mutation and Subscription types in the schema are specified using GraphQL objects."),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"final type = objectType(\n  'ObjectTypeName',\n  fields: [],\n);\n")),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"With code generation")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"@GraphQLClass()\n@JsonSerializable()\nclass Model {\n  final String stringField;\n  final int intField;\n  final List<Model>? optionalModels;\n\n  const Model({\n    required this.stringField,\n    required this.intField,\n    required this.optionalModels,\n  });\n}\n\n@Query\nFuture<Model> getModel(Ctx ctx) {\n\n}\n")),(0,a.kt)("p",null,"This would generate graphql_api.schema.dart"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"")),(0,a.kt)("h3",{id:"interfaces"},"Interfaces"),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"http://spec.graphql.org/draft/#sec-Interfaces"},"GraphQL Specification")),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"inheritFrom")),(0,a.kt)("p",null,"The ",(0,a.kt)("inlineCode",{parentName:"p"},"inheritFrom")," function in ",(0,a.kt)("inlineCode",{parentName:"p"},"GraphQLObjectType")," receives an Interface and assigns it's argument as",(0,a.kt)("br",{parentName:"p"}),"\n","a super type, now the Object will implement the Interface passed as parameter."))}u.isMDXComponent=!0}}]);