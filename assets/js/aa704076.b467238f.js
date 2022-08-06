"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[3603],{3905:(e,t,n)=>{n.d(t,{Zo:()=>u,kt:()=>m});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function l(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function i(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var s=r.createContext({}),p=function(e){var t=r.useContext(s),n=t;return e&&(n="function"==typeof e?e(t):l(l({},t),e)),n},u=function(e){var t=p(e.components);return r.createElement(s.Provider,{value:t},e.children)},c={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},d=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,o=e.originalType,s=e.parentName,u=i(e,["components","mdxType","originalType","parentName"]),d=p(n),m=a,f=d["".concat(s,".").concat(m)]||d[m]||c[m]||o;return n?r.createElement(f,l(l({ref:t},u),{},{components:n})):r.createElement(f,l({ref:t},u))}));function m(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=n.length,l=new Array(o);l[0]=d;var i={};for(var s in t)hasOwnProperty.call(t,s)&&(i[s]=t[s]);i.originalType=e,i.mdxType="string"==typeof e?e:a,l[1]=i;for(var p=2;p<o;p++)l[p]=n[p];return r.createElement.apply(null,l)}return r.createElement.apply(null,n)}d.displayName="MDXCreateElement"},7852:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>s,contentTitle:()=>l,default:()=>c,frontMatter:()=>o,metadata:()=>i,toc:()=>p});var r=n(7462),a=(n(7294),n(3905));const o={sidebar_position:6},l="Resolvers",i={unversionedId:"leto_generator/resolvers",id:"leto_generator/resolvers",title:"Resolvers",description:"A Class annotated with @GraphQLClass() will generate fields for all its methods. Resolver inputs were discussed in the inputs section.",source:"@site/docs/leto_generator/resolvers.md",sourceDirName:"leto_generator",slug:"/leto_generator/resolvers",permalink:"/leto/docs/leto_generator/resolvers",draft:!1,editUrl:"https://github.com/juancastillo0/leto/edit/main/leto_generator/README.md",tags:[],version:"current",sidebarPosition:6,frontMatter:{sidebar_position:6},sidebar:"tutorialSidebar",previous:{title:"Dart Type to GraphQLType coercion",permalink:"/leto/docs/leto_generator/dart-type-to-graphqltype-coercion"},next:{title:"Global Configuration (build.yaml)",permalink:"/leto/docs/leto_generator/global-configuration-build.yaml"}},s={},p=[{value:"TODO: 2G BeforeResolver",id:"todo-2g-beforeresolver",level:2},{value:"Function Resolvers",id:"function-resolvers",level:2},{value:"Class Resolvers",id:"class-resolvers",level:2}],u={toc:p};function c(e){let{components:t,...n}=e;return(0,a.kt)("wrapper",(0,r.Z)({},u,n,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"resolvers"},"Resolvers"),(0,a.kt)("p",null,"A Class annotated with ",(0,a.kt)("inlineCode",{parentName:"p"},"@GraphQLClass()")," will generate fields for all its methods. Resolver inputs were discussed in the ",(0,a.kt)("a",{parentName:"p",href:"annotations-decorators#resolver-inputs"},"inputs section"),"."),(0,a.kt)("h2",{id:"todo-2g-beforeresolver"},"TODO: 2G BeforeResolver"),(0,a.kt)("h2",{id:"function-resolvers"},"Function Resolvers"),(0,a.kt)("p",null,"You can use the ",(0,a.kt)("inlineCode",{parentName:"p"},"@Query()"),", ",(0,a.kt)("inlineCode",{parentName:"p"},"@Mutation()")," and ",(0,a.kt)("inlineCode",{parentName:"p"},"@Subscription()")," annotation to specify that a given method or function is a field in the given root object type (Query, Mutation or Subscription root objects).All function annotated with ",(0,a.kt)("inlineCode",{parentName:"p"},"@Subscription()")," should return a ",(0,a.kt)("inlineCode",{parentName:"p"},"Stream")," of values."),(0,a.kt)("p",null,"These annotations have the following parameters:"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"name (default: the name of the method)")),(0,a.kt)("p",null,"This will be the name of the GraphQL field."),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"genericTypeName (default: null)")),(0,a.kt)("p",null,"When the return type is a generic type, you can override the GraphQL type name with a custom String. Most generic types provide a default name composed from the type parameters (using ",(0,a.kt)("inlineCode",{parentName:"p"},"GraphQLType.printableName"),", for example), so this parameter is usually not required."),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"TODO: 1G nullable return type")),(0,a.kt)("h2",{id:"class-resolvers"},"Class Resolvers"),(0,a.kt)("p",null,"With ",(0,a.kt)("inlineCode",{parentName:"p"},"@ClassResolver()"),' you can specify that a set of fields will be resolved by executing the methods of the decorated class. This allows you to group the fields into a separate class which give you a couple of nice features. Since in Dart all classes specify an "interface" this could be useful if you want to unit test the interface or implement the class resolver\'s API in other contexts. This also allows you to easily access common dependencies shared between the fields in the resolver class. Instead of using ',(0,a.kt)("inlineCode",{parentName:"p"},"final dependencyName = dependencyRef.get(ctx);")," in each field's resolver method body, you could create a field or getter within the class."),(0,a.kt)("p",null,"In order for Leto to have an instance of the resolver you need to provide a way of creating or getting the class resolver before executing any of the methods. We provide two main tool for that:"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Resolver.ref")),(0,a.kt)("p",null,"A static variable that implements ",(0,a.kt)("inlineCode",{parentName:"p"},"BaseRef<FutureOr<Resolver?>>"),". For example, a ",(0,a.kt)("inlineCode",{parentName:"p"},"RefWithDefault")," or ",(0,a.kt)("inlineCode",{parentName:"p"},"ScopedRef"),". This will use the ",(0,a.kt)("inlineCode",{parentName:"p"},"Ctx")," of the field's resolver to access an instance of the class resolver with ",(0,a.kt)("inlineCode",{parentName:"p"},"final FutureOr<Resolver> instance = Resolver.ref.get(ctx)!;")," and then call the method ",(0,a.kt)("inlineCode",{parentName:"p"},"instance.fieldName(...arguments)")," where ",(0,a.kt)("inlineCode",{parentName:"p"},"fieldName")," is the name of the method."),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"instantiateCode")),(0,a.kt)("p",null,"Available in: ",(0,a.kt)("inlineCode",{parentName:"p"},"build.yaml"),", ",(0,a.kt)("inlineCode",{parentName:"p"},"ClassResolver"),"."),(0,a.kt)("p",null,'If you want to use a custom dependency injection library or method, you can provide an "instantiateCode" String which will be used as a getter to the class resolver instance. You can use the ',(0,a.kt)("inlineCode",{parentName:"p"},"Ctx")," of the field in the provided code with the ",(0,a.kt)("inlineCode",{parentName:"p"},"ctx"),' variable and the resolver Dart class name with "{{name}}" as a template variable within the String. The value should be cast to a ',(0,a.kt)("inlineCode",{parentName:"p"},"FutureOr<Resolver>")," type if necessary. A variable of type ",(0,a.kt)("inlineCode",{parentName:"p"},"Resolver")," or ",(0,a.kt)("inlineCode",{parentName:"p"},"Future<Resolver>")," is fine, no need to explicitly add the ",(0,a.kt)("inlineCode",{parentName:"p"},"as FutureOr<Resolver>")," suffix."),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"final resolversTypeMap = <Type, Object Function(Ctx)>{\n  Resolver: (Ctx ctx) => Resolver(),\n};\n\nconst diByMapType = ClassResolver(\n  instantiateCode: 'resolversTypeMap[{{name}}]!(ctx) as {{name}}',\n);\n\n@diByMapType\nclass Resolver {\n  @Query()\n  String getName() => '';\n}\n")),(0,a.kt)("p",null,"In the example above we first instantiate the annotation and then apply it to the class, this would allow you to reuse the ",(0,a.kt)("inlineCode",{parentName:"p"},"diByMapType")," annotation in multiple classes if you want to use the same dependency injection method for all of them."),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"fieldName")),(0,a.kt)("p",null,"Nested objects in resolvers."))}c.isMDXComponent=!0}}]);