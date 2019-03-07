package ${packageName};

import com.ibm.base.mvp.Contract;
import com.ibm.base.mvp.BasePresenter;
import com.ibm.base.provider.SchedulerProvider;

public class ${activityClass}Presenter extends BasePresenter<${activityClass}Contract.View> implements ${activityClass}Contract.Presenter{
   public ${activityClass}Presenter(SchedulerProvider schedulerProvider) {
        super(schedulerProvider);
    }
}
