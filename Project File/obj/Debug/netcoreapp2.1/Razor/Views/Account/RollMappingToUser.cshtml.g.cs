#pragma checksum "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "3b7598848c41a0e736b5a7a5b6e9576609f08871"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Account_RollMappingToUser), @"mvc.1.0.view", @"/Views/Account/RollMappingToUser.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Account/RollMappingToUser.cshtml", typeof(AspNetCore.Views_Account_RollMappingToUser))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\_ViewImports.cshtml"
using Project_08;

#line default
#line hidden
#line 2 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\_ViewImports.cshtml"
using Project_08.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3b7598848c41a0e736b5a7a5b6e9576609f08871", @"/Views/Account/RollMappingToUser.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cdc753bf4aedff114525d979287aeb262d9de9c8", @"/Views/_ViewImports.cshtml")]
    public class Views_Account_RollMappingToUser : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IList<UserRollMapping>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", new global::Microsoft.AspNetCore.Html.HtmlString("applicationRoles"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "RollMappingToUser", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Account", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(31, 171, true);
            WriteLiteral("\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-3\">\r\n                <h2><strong>Login Page </strong></h2><br />\r\n                ");
            EndContext();
            BeginContext(202, 1830, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "53a6a336814445618c14c2d1af936ee9", async() => {
                BeginContext(302, 71, true);
                WriteLiteral("\r\n\r\n                    <div>\r\n                     Roll Applied For : ");
                EndContext();
                BeginContext(374, 31, false);
#line 10 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
                                   Write(ViewData["UserName"].ToString());

#line default
#line hidden
                EndContext();
                BeginContext(405, 63, true);
                WriteLiteral(" \r\n                        <input type=\"hidden\" name=\"UserName\"");
                EndContext();
                BeginWriteAttribute("value", " value=\"", 468, "\"", 508, 1);
#line 11 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
WriteAttributeValue("", 476, ViewData["UserName"].ToString(), 476, 32, false);

#line default
#line hidden
                EndWriteAttribute();
                BeginContext(509, 347, true);
                WriteLiteral(@" />
                    </div>

                    <table>
                        <tr>
                            <td>
                                RollName
                            </td>
                            <td>
                                Action
                            </td>
                        </tr>

");
                EndContext();
#line 24 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
                           
                            int index = 0;
                        

#line default
#line hidden
                BeginContext(956, 2, true);
                WriteLiteral("\r\n");
                EndContext();
#line 28 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
                         foreach (UserRollMapping applicationRoles in Model)
                        {


#line default
#line hidden
                BeginContext(1065, 134, true);
                WriteLiteral("                            <tr>\r\n                                <td>\r\n                                   <input type=\"text\" readonly");
                EndContext();
                BeginWriteAttribute("name", " name=\"", 1199, "\"", 1240, 3);
                WriteAttributeValue("", 1206, "applicationRoles[", 1206, 17, true);
#line 33 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
WriteAttributeValue("", 1223, index, 1223, 6, false);

#line default
#line hidden
                WriteAttributeValue("", 1229, "].Role.Name", 1229, 11, true);
                EndWriteAttribute();
                BeginWriteAttribute("value", " value=\"", 1241, "\"", 1276, 1);
#line 33 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
WriteAttributeValue("", 1249, applicationRoles.Role.Name, 1249, 27, false);

#line default
#line hidden
                EndWriteAttribute();
                BeginContext(1277, 154, true);
                WriteLiteral(" />\r\n                                  \r\n                                </td>\r\n                                <td>\r\n                                    ");
                EndContext();
                BeginContext(1432, 54, false);
#line 37 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
                               Write(Html.CheckBox("applicationRoles["+index+"].IsChecked"));

#line default
#line hidden
                EndContext();
                BeginContext(1486, 114, true);
                WriteLiteral("\r\n                                    \r\n                                </td>\r\n                            </tr>\r\n");
                EndContext();
#line 41 "E:\All Projects\AspCoreProject _Module-9\Project File\Views\Account\RollMappingToUser.cshtml"
                            {
                                index += 1;
                            }
                        }

#line default
#line hidden
                BeginContext(1734, 291, true);
                WriteLiteral(@"                    </table>

                    <div class=""form-check"">
                        <button class=""btn btn-info"" type=""reset"">Reset</button>
                        <button type=""submit"" class=""btn btn-primary"">Submit</button>
                    </div>
                ");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(2032, 48, true);
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n    </div>");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IList<UserRollMapping>> Html { get; private set; }
    }
}
#pragma warning restore 1591
