(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/kaoyan/add-or-update"],{"0d4b":function(e,n,a){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var t=o(a("a34a"));function o(e){return e&&e.__esModule?e:{default:e}}function r(e,n,a,t,o,r,u){try{var i=e[r](u),c=i.value}catch(s){return void a(s)}i.done?n(c):Promise.resolve(c).then(t,o)}function u(e){return function(){var n=this,a=arguments;return new Promise((function(t,o){var u=e.apply(n,a);function i(e){r(u,t,o,i,c,"next",e)}function c(e){r(u,t,o,i,c,"throw",e)}i(void 0)}))}}var i=function(){Promise.all([a.e("common/vendor"),a.e("components/w-picker/w-picker")]).then(function(){return resolve(a("bfbc"))}.bind(null,a)).catch(a.oe)},c={data:function(){return{cross:"",ro:{kaoyanName:!1,kaoyanTypes:!1,kaoyanPhoto:!1,kaoyanFile:!1,kaoyanVideo:!1,yonghuId:!1,kaoyanContent:!1,createTime:!1},ruleForm:{kaoyanName:"",kaoyanTypes:"",kaoyanValue:"",kaoyanPhoto:"",kaoyanFile:"",kaoyanVideo:"",yonghuId:"",kaoyanContent:"",createTime:""},user:{},kaoyanTypesOptions:[],kaoyanTypesIndex:0}},components:{wPicker:i},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(e){var n=this;return u(t.default.mark((function a(){var o,r,u;return t.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return o={page:1,limit:100,dicCode:"kaoyan_types"},a.next=3,n.$api.page("dictionary",o);case 3:if(r=a.sent,n.kaoyanTypesOptions=r.data.list,!e.id){a.next=11;break}return n.ruleForm.id=e.id,a.next=9,n.$api.info("kaoyan",n.ruleForm.id);case 9:u=a.sent,n.ruleForm=u.data;case 11:e.kaoyanId&&(n.ruleForm.kaoyanId=e.kaoyanId);case 12:case"end":return a.stop()}}),a)})))()},methods:{kaoyanTypesChange:function(e){this.kaoyanTypesIndex=e.target.value,this.ruleForm.kaoyanValue=this.kaoyanTypesOptions[this.kaoyanTypesIndex].indexName,this.ruleForm.kaoyanTypes=this.kaoyanTypesOptions[this.kaoyanTypesIndex].codeIndex},kaoyanPhotoTap:function(){var e=this;this.$api.upload((function(n){e.ruleForm.kaoyanPhoto=e.$base.url+"upload/"+n.file,e.$forceUpdate(),e.$nextTick((function(){}))}))},kaoyanFileTap:function(){var e=this;this.$api.upload((function(n){e.ruleForm.kaoyanFile=e.$base.url+"upload/"+n.file,e.$forceUpdate(),e.$nextTick((function(){}))}))},kaoyanVideoTap:function(){var e=this;this.$api.upload((function(n){e.ruleForm.kaoyanVideo=e.$base.url+"upload/"+n.file,e.$forceUpdate(),e.$nextTick((function(){}))}))},createTimeConfirm:function(e){console.log(e),this.ruleForm.createTime=e.result,this.$forceUpdate()},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=this;return u(t.default.mark((function a(){return t.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:if(n.ruleForm.kaoyanName){a.next=3;break}return n.$utils.msg("考研信息标题不能为空"),a.abrupt("return");case 3:if(n.ruleForm.kaoyanPhoto){a.next=6;break}return n.$utils.msg("考研信息封面不能为空"),a.abrupt("return");case 6:if(!n.ruleForm.id){a.next=11;break}return a.next=9,n.$api.update("kaoyan",n.ruleForm);case 9:a.next=13;break;case 11:return a.next=13,n.$api.save("kaoyan",n.ruleForm);case 13:e.setStorageSync("pingluenStateState",!0),n.$utils.msgBack("提交成功");case 15:case"end":return a.stop()}}),a)})))()},getDate:function(e){var n=new Date,a=n.getFullYear(),t=n.getMonth()+1,o=n.getDate();return"start"===e?a-=60:"end"===e&&(a+=2),t=t>9?t:"0"+t,o=o>9?o:"0"+o,"".concat(a,"-").concat(t,"-").concat(o)},toggleTab:function(e){this.$refs[e].show()}}};n.default=c}).call(this,a("543d")["default"])},"315f":function(e,n,a){"use strict";(function(e){a("a94c");t(a("66fd"));var n=t(a("b9e4"));function t(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=a,e(n.default)}).call(this,a("543d")["createPage"])},5939:function(e,n,a){},8653:function(e,n,a){"use strict";a.r(n);var t=a("0d4b"),o=a.n(t);for(var r in t)"default"!==r&&function(e){a.d(n,e,(function(){return t[e]}))}(r);n["default"]=o.a},b95b:function(e,n,a){"use strict";a.d(n,"b",(function(){return o})),a.d(n,"c",(function(){return r})),a.d(n,"a",(function(){return t}));var t={wPicker:function(){return Promise.all([a.e("common/vendor"),a.e("components/w-picker/w-picker")]).then(a.bind(null,"bfbc"))}},o=function(){var e=this,n=e.$createElement;e._self._c},r=[]},b9e4:function(e,n,a){"use strict";a.r(n);var t=a("b95b"),o=a("8653");for(var r in o)"default"!==r&&function(e){a.d(n,e,(function(){return o[e]}))}(r);a("bdb6");var u,i=a("f0c5"),c=Object(i["a"])(o["default"],t["b"],t["c"],!1,null,"5d0dba1a",null,!1,t["a"],u);n["default"]=c.exports},bdb6:function(e,n,a){"use strict";var t=a("5939"),o=a.n(t);o.a}},[["315f","common/runtime","common/vendor"]]]);