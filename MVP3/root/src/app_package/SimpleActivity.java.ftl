package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
<#if (includeCppSupport!false) && generateLayout>
import android.widget.TextView;
</#if>

public class ${activityClass}Activity extends ${superClass} implements ${activityClass}Contract.View{

    private ${activityClass}Contract.Presenter mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
       <#include "../../../../common/jni_code_usage.java.ftl">
<#elseif includeCppSupport!false>

        // Example of a call to a native method
        android.util.Log.d("${activityClass}", stringFromJNI());
</#if>
    }
<#include "../../../../common/jni_code_snippet.java.ftl">

    @Override
    public void injectApplication() {

    }
}
