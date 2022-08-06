"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[1764],{3905:(e,n,t)=>{t.d(n,{Zo:()=>u,kt:()=>m});var a=t(7294);function p(e,n,t){return n in e?Object.defineProperty(e,n,{value:t,enumerable:!0,configurable:!0,writable:!0}):e[n]=t,e}function r(e,n){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);n&&(a=a.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),t.push.apply(t,a)}return t}function s(e){for(var n=1;n<arguments.length;n++){var t=null!=arguments[n]?arguments[n]:{};n%2?r(Object(t),!0).forEach((function(n){p(e,n,t[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):r(Object(t)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(t,n))}))}return e}function i(e,n){if(null==e)return{};var t,a,p=function(e,n){if(null==e)return{};var t,a,p={},r=Object.keys(e);for(a=0;a<r.length;a++)t=r[a],n.indexOf(t)>=0||(p[t]=e[t]);return p}(e,n);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);for(a=0;a<r.length;a++)t=r[a],n.indexOf(t)>=0||Object.prototype.propertyIsEnumerable.call(e,t)&&(p[t]=e[t])}return p}var o=a.createContext({}),l=function(e){var n=a.useContext(o),t=n;return e&&(t="function"==typeof e?e(n):s(s({},n),e)),t},u=function(e){var n=l(e.components);return a.createElement(o.Provider,{value:n},e.children)},c={inlineCode:"code",wrapper:function(e){var n=e.children;return a.createElement(a.Fragment,{},n)}},d=a.forwardRef((function(e,n){var t=e.components,p=e.mdxType,r=e.originalType,o=e.parentName,u=i(e,["components","mdxType","originalType","parentName"]),d=l(t),m=p,h=d["".concat(o,".").concat(m)]||d[m]||c[m]||r;return t?a.createElement(h,s(s({ref:n},u),{},{components:t})):a.createElement(h,s({ref:n},u))}));function m(e,n){var t=arguments,p=n&&n.mdxType;if("string"==typeof e||p){var r=t.length,s=new Array(r);s[0]=d;var i={};for(var o in n)hasOwnProperty.call(n,o)&&(i[o]=n[o]);i.originalType=e,i.mdxType="string"==typeof e?e:p,s[1]=i;for(var l=2;l<r;l++)s[l]=t[l];return a.createElement.apply(null,s)}return a.createElement.apply(null,t)}d.displayName="MDXCreateElement"},1146:(e,n,t)=>{t.r(n),t.d(n,{assets:()=>o,contentTitle:()=>s,default:()=>c,frontMatter:()=>r,metadata:()=>i,toc:()=>l});var a=t(7462),p=(t(7294),t(3905));const r={sidebar_position:5},s="Inputs and Input Objects",i={unversionedId:"graphql-schema-types/inputs-and-input-objects",id:"graphql-schema-types/inputs-and-input-objects",title:"Inputs and Input Objects",description:"Input types specify the structure of the values that inputs to resolvers should have. Scalars and Enums can be passed as input to resolvers. Wrapper types such as List and NonNull types of Scalars and Enums, also can be passed, however for more complex Objects with nested fields you will need to use GraphQLInputObjectType. Similar GraphQLObjectType, a GraphQLInputObjectType can have fields.",source:"@site/docs/graphql-schema-types/inputs-and-input-objects.md",sourceDirName:"graphql-schema-types",slug:"/graphql-schema-types/inputs-and-input-objects",permalink:"/leto/docs/graphql-schema-types/inputs-and-input-objects",draft:!1,editUrl:"https://github.com/juancastillo0/leto/edit/main/README.md",tags:[],version:"current",sidebarPosition:5,frontMatter:{sidebar_position:5},sidebar:"tutorialSidebar",previous:{title:"Objects",permalink:"/leto/docs/graphql-schema-types/objects"},next:{title:"Unions",permalink:"/leto/docs/graphql-schema-types/unions"}},o={},l=[{value:"Example  omit in toc ",id:"example--omit-in-toc-",level:3},{value:"InputObject.isOneOf",id:"inputobjectisoneof",level:3},{value:"InputObject.fromJson",id:"inputobjectfromjson",level:3}],u={toc:l};function c(e){let{components:n,...t}=e;return(0,p.kt)("wrapper",(0,a.Z)({},u,t,{components:n,mdxType:"MDXLayout"}),(0,p.kt)("h1",{id:"inputs-and-input-objects"},"Inputs and Input Objects"),(0,p.kt)("p",null,"Input types specify the structure of the values that inputs to resolvers should have. Scalars and Enums can be passed as input to resolvers. Wrapper types such as List and NonNull types of Scalars and Enums, also can be passed, however for more complex Objects with nested fields you will need to use ",(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLInputObjectType"),". Similar ",(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLObjectType"),", a ",(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLInputObjectType")," can have fields."),(0,p.kt)("p",null,(0,p.kt)("a",{parentName:"p",href:"http://spec.graphql.org/draft/#sec-Input-Objects"},"GraphQL Specification")),(0,p.kt)("p",null,"// TODO: 1A customDeserialize with SerdeCtx deserializers"),(0,p.kt)("pre",null,(0,p.kt)("code",{parentName:"pre",className:"language-dart"},"final inputModel = GraphQLInputObjectType(\n  'ModelInput',\n  description: '',\n  inputs: [\n\n  ],\n);\n")),(0,p.kt)("p",null,"Field inputs (or Arguments) can be used in multiple places:"),(0,p.kt)("ul",null,(0,p.kt)("li",{parentName:"ul"},(0,p.kt)("p",{parentName:"li"},(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLObjectType.fields.inputs"),": Inputs in field resolvers")),(0,p.kt)("li",{parentName:"ul"},(0,p.kt)("p",{parentName:"li"},(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLInputObjectType.fields"),": Fields in Input Objects")),(0,p.kt)("li",{parentName:"ul"},(0,p.kt)("p",{parentName:"li"},(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLDirective.inputs"),": Inputs in directives"))),(0,p.kt)("p",null,"Not all types can be input types, in particular, object types and union types can't be input types nor part of a ",(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLInputObjectType"),"."),(0,p.kt)("pre",null,(0,p.kt)("code",{parentName:"pre",className:"language-dart"},"static bool isInputType(GraphQLType type) {\n  return type.when(\n    enum_: (type) => true,\n    scalar: (type) => true,\n    input: (type) => true,\n    object: (type) => false,\n    union: (type) => false,\n    list: (type) => isInputType(type.ofType),\n    nonNullable: (type) => isInputType(type.ofType),\n  );\n}\n")),(0,p.kt)("h3",{id:"example--omit-in-toc-"},"Example "),(0,p.kt)("pre",null,(0,p.kt)("code",{parentName:"pre",className:"language-graphql"},'input ComplexInput {\n  value: String!\n}\n\n# The fields:\n(\n  """The amount"""\n  @deprecated\n  amount: Int = 2\n  names: [String!]\n  complex: ComplexInput!\n)\n')),(0,p.kt)("pre",null,(0,p.kt)("code",{parentName:"pre",className:"language-dart"},"@GraphQLInput()\nclass ComplexInput {\n  const ComplexInput({required this.value});\n  /// The value\n  final String value;\n\n  factory ComplexInput.fromJson(Map<String, Object?> json) =>\n    ComplexInput(\n      value: json['value']! as String,\n    );\n}\n\nfinal fields = [\n  GraphQLFieldInput(\n    'amount',\n    graphQLInt,\n    defaultValue: 2,\n    description: 'The amount',\n    // an empty String will use the default deprecation reason\n    deprecationReason: '',\n  ),\n  GraphQLFieldInput(\n    'names',\n    listOf(graphQLString.nonNull()),\n  ),\n  GraphQLFieldInput(\n    'complex',\n    complexInputGraphQLInputType.nonNull(),\n  ),\n];\n\n// can be used in:\n// - `GraphQLObjectType.fields.inputs`\n// - `GraphQLInputObjectType.fields`\n// - 'GraphQLDirective.inputs'\n\nfinal object = GraphQLObjectType(\n  'ObjectName',\n  fields: [\n    stringGraphQLType.field(\n      'someField',\n      inputs: fields,\n      resolve: (_, Ctx ctx) {\n        final Map<String, Object?> args = ctx.args;\n        assert(args.containKey('complex'));\n        assert(args['names'] is List<String>?);\n        assert(args['amount'] is int?);\n        return '';\n      }\n    )\n  ]\n);\n\nfinal objectInput = GraphQLInputObjectType(\n  'InputObjectName',\n  fields: fields,\n  // ...\n);\n\nfinal directive = GraphQLDirective(\n  name: 'DirectiveName',\n  inputs: fields,\n  // ...\n);\n")),(0,p.kt)("h3",{id:"inputobjectisoneof"},"InputObject.isOneOf"),(0,p.kt)("p",null,(0,p.kt)("a",{parentName:"p",href:"https://github.com/graphql/graphql-spec/pull/825"},"Discussion")),(0,p.kt)("p",null,"oneOf input object types allow you to specify that an object should contain only one of the provided fields. The fields should be nullable and should not have a default value. This is similar to ",(0,p.kt)("a",{parentName:"p",href:"/docs/graphql-schema-types/unions#unions"},"union")," types. However, oneOf input types can be used as inputs and their variants (or fields) can be any input type such as a custom scalar, they are not constrained to object types."),(0,p.kt)("pre",null,(0,p.kt)("code",{parentName:"pre",className:"language-graphql"},'input EmailPassword {\n  email: String!\n  password: String!\n}\n\ninput LogInOption @oneOf {\n  email: EmailPassword\n  token: String\n}\n\ntype Mutation {\n  login(option: LogInOption!): Boolean!\n}\n\nmutation loginMut {\n  login(option: { email: { email: "email@example.com" password: "pass" } })\n}\n')),(0,p.kt)("h3",{id:"inputobjectfromjson"},"InputObject.fromJson"),(0,p.kt)("p",null,"For code generation, each class annotated as ",(0,p.kt)("inlineCode",{parentName:"p"},"GraphQLInput")," should have a factory constructor or static method name ",(0,p.kt)("inlineCode",{parentName:"p"},"fromJson")," in its class definition. This will be used as the method for deserializing instances of this class."))}c.isMDXComponent=!0}}]);