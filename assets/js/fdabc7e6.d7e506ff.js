"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[4404],{3905:(e,t,n)=>{n.d(t,{Zo:()=>s,kt:()=>h});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function l(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?l(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):l(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function p(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},l=Object.keys(e);for(r=0;r<l.length;r++)n=l[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);for(r=0;r<l.length;r++)n=l[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var i=r.createContext({}),u=function(e){var t=r.useContext(i),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},s=function(e){var t=u(e.components);return r.createElement(i.Provider,{value:t},e.children)},c={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},y=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,l=e.originalType,i=e.parentName,s=p(e,["components","mdxType","originalType","parentName"]),y=u(n),h=a,m=y["".concat(i,".").concat(h)]||y[h]||c[h]||l;return n?r.createElement(m,o(o({ref:t},s),{},{components:n})):r.createElement(m,o({ref:t},s))}));function h(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var l=n.length,o=new Array(l);o[0]=y;var p={};for(var i in t)hasOwnProperty.call(t,i)&&(p[i]=t[i]);p.originalType=e,p.mdxType="string"==typeof e?e:a,o[1]=p;for(var u=2;u<l;u++)o[u]=n[u];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}y.displayName="MDXCreateElement"},1220:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>i,contentTitle:()=>o,default:()=>c,frontMatter:()=>l,metadata:()=>p,toc:()=>u});var r=n(7462),a=(n(7294),n(3905));const l={sidebar_position:8},o="Non-Nullable",p={unversionedId:"graphql-schema-types/non-nullable",id:"graphql-schema-types/non-nullable",title:"Non-Nullable",description:"GraphQLNonNullType allows you to represent a non-nullable or required value. By default, all GraphQL Types are nullable or optional, if you want to represent a required input or specify that a given output is always present (non-null), you want to use the GraphQLNonNullType wrapping type.",source:"@site/docs/graphql-schema-types/non-nullable.md",sourceDirName:"graphql-schema-types",slug:"/graphql-schema-types/non-nullable",permalink:"/leto/docs/graphql-schema-types/non-nullable",draft:!1,editUrl:"https://github.com/juancastillo0/leto/edit/main/README.md",tags:[],version:"current",sidebarPosition:8,frontMatter:{sidebar_position:8},sidebar:"tutorialSidebar",previous:{title:"Wrapping Types",permalink:"/leto/docs/graphql-schema-types/wrapping-types"},next:{title:"Lists",permalink:"/leto/docs/graphql-schema-types/lists"}},i={},u=[],s={toc:u};function c(e){let{components:t,...n}=e;return(0,a.kt)("wrapper",(0,r.Z)({},s,n,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"non-nullable"},"Non-Nullable"),(0,a.kt)("p",null,(0,a.kt)("inlineCode",{parentName:"p"},"GraphQLNonNullType")," allows you to represent a non-nullable or required value. By default, all GraphQL Types are nullable or optional, if you want to represent a required input or specify that a given output is always present (non-null), you want to use the ",(0,a.kt)("inlineCode",{parentName:"p"},"GraphQLNonNullType")," wrapping type."),(0,a.kt)("p",null,(0,a.kt)("a",{parentName:"p",href:"http://spec.graphql.org/draft/#sec-Non-Null"},"GraphQL Specification")),(0,a.kt)("p",null,"In GraphQL this is represented using the ",(0,a.kt)("inlineCode",{parentName:"p"},"!")," exclamation mark after a given type expression. In Dart you can use the ",(0,a.kt)("inlineCode",{parentName:"p"},"nonNull()")," method present in each ",(0,a.kt)("inlineCode",{parentName:"p"},"GraphQLType"),", which will return a non-nullable ",(0,a.kt)("inlineCode",{parentName:"p"},"GraphQLNonNullType")," with it's inner type, the type from which ",(0,a.kt)("inlineCode",{parentName:"p"},"nonNull")," was called. For example, ",(0,a.kt)("inlineCode",{parentName:"p"},"graphQLString.nonNull()")," will be a ",(0,a.kt)("inlineCode",{parentName:"p"},"String!")," in GraphQL."))}c.isMDXComponent=!0}}]);