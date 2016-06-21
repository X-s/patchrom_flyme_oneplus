.class public Lcom/android/systemui_ex/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui_ex/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui_ex/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
.implements Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;
    }
.end annotation


# instance fields
.field mAppWidgetHost:Lcom/android/systemui_ex/recents/RecentsAppWidgetHost;

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui_ex/recents/misc/DebugTrigger;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;

.field private mHasClearAll:Z

.field private mHasTasks:Z

.field mLastTabKeyEventTime:J

.field mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

.field mScrimViews:Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasClearAll:Z

    .line 143
    new-instance v0, Lcom/android/systemui_ex/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/RecentsActivity$1;-><init>(Lcom/android/systemui_ex/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/systemui_ex/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/RecentsActivity$2;-><init>(Lcom/android/systemui_ex/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v0, Lcom/android/systemui_ex/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui_ex/recents/RecentsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/recents/RecentsActivity$3;-><init>(Lcom/android/systemui_ex/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui_ex/recents/misc/DebugTrigger;

    return-void
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method bindSearchBarAppWidget()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method checkAndShowEmptyView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 289
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 290
    .local v0, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->consumeInstanceLoadPlan()Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 291
    .local v1, "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    if-nez v1, :cond_0

    .line 292
    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 295
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui_ex/recents/model/TaskStack;

    move-result-object v3

    if-nez v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Z)V

    .line 298
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui_ex/recents/model/SpaceNode;

    move-result-object v2

    .line 299
    .local v2, "updatedNode":Lcom/android/systemui_ex/recents/model/SpaceNode;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/SpaceNode;->hasTasks()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasTasks:Z

    .line 300
    iget-boolean v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasTasks:Z

    if-nez v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/views/RecentsView;->onSetClearRecentsVisibility(I)V

    .line 302
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 303
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 304
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 306
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_3
    return-void
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 4
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 366
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 367
    .local v0, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 384
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 401
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 402
    .local v0, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 405
    const/4 v1, 0x1

    .line 407
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 389
    if-eqz p1, :cond_0

    .line 390
    new-instance v0, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 392
    .local v0, "exitTrigger":Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 397
    .end local v0    # "exitTrigger":Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 673
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 622
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 416
    invoke-static {p0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    .line 417
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 418
    .local v2, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    invoke-static {p0, v2}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 421
    new-instance v3, Lcom/android/systemui_ex/recents/RecentsAppWidgetHost;

    sget v4, Lcom/android/systemui_ex/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v3, p0, v4}, Lcom/android/systemui_ex/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui_ex/recents/RecentsAppWidgetHost;

    .line 424
    const v3, 0x7f040041

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->setContentView(I)V

    .line 425
    const v3, 0x7f0f012e

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/recents/views/RecentsView;

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    .line 426
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v3, p0}, Lcom/android/systemui_ex/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 427
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 430
    const v3, 0x7f0f012f

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 431
    const v3, 0x7f0f0130

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 432
    new-instance v3, Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;

    iget-object v4, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui_ex/recents/RecentsConfiguration;)V

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/SystemUIApplication;

    const-class v4, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iput-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 441
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v3, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui_ex/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    :try_start_0
    const-string v3, "ambientRatio"

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui_ex/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 454
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 451
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDebugModeTriggered()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 627
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 629
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/systemui_ex/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui_ex/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 632
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 633
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 634
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/DebugOverlayView;->disable()V

    .line 646
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui_ex/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please restart Recents now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 650
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 639
    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui_ex/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 640
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 641
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 642
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 646
    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 537
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui_ex/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/RecentsAppWidgetHost;->stopListening()V

    .line 541
    return-void
.end method

.method public onDismissRecentsToHome()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 678
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 545
    new-instance v2, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 546
    .local v2, "t":Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;)V

    .line 547
    .local v1, "ctx":Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 548
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    .line 549
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 552
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui_ex/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui_ex/recents/RecentsActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui_ex/recents/RecentsActivity$4;-><init>(Lcom/android/systemui_ex/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 565
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui_ex/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 566
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 658
    return-void
.end method

.method public onHasClearRecents(Z)V
    .locals 0
    .param p1, "hasclear"    # Z

    .prologue
    .line 682
    iput-boolean p1, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasClearAll:Z

    .line 683
    return-void
.end method

.method public onHasTasks()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasTasks:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 578
    sparse-switch p1, :sswitch_data_0

    .line 607
    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui_ex/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 608
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 580
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui_ex/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    move v1, v2

    .line 582
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_0

    .line 584
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 585
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/recents/views/RecentsView;->focusNextTask(Z)V

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_3
    move v1, v3

    .line 580
    goto :goto_1

    .line 591
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 595
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 600
    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 578
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/DebugOverlayView;->clear()V

    .line 477
    :cond_0
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 710
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasClearAll:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->checkAndShowEmptyView()V

    .line 513
    :cond_0
    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    .line 695
    :cond_0
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 715
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 482
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 483
    .local v1, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 484
    .local v2, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Z)V

    .line 487
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "action_hide_recents_activity"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v3, "action_toggle_recents_activity"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v3, "action_start_enter_animation"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui_ex/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 501
    iget-object v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v3, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 504
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasClearAll:Z

    .line 505
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 517
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 518
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 519
    .local v0, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 520
    .local v1, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Z)V

    .line 523
    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/RecentsView;->onRecentsHidden()V

    .line 526
    iget-object v2, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 529
    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 530
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 668
    return-void
.end method

.method public onTaskViewClicked()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 570
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 571
    .local v0, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 574
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/RecentsView;->onUserInteraction()V

    .line 614
    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 702
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    .line 703
    return-void
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 21
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v8

    .line 202
    .local v8, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->consumeInstanceLoadPlan()Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 203
    .local v9, "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    if-nez v9, :cond_0

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 208
    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui_ex/recents/model/TaskStack;

    move-result-object v18

    if-nez v18, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v9, v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Z)V

    .line 211
    :cond_1
    new-instance v6, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v6}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 212
    .local v6, "loadOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9, v6}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 217
    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui_ex/recents/model/SpaceNode;

    move-result-object v10

    .line 218
    .local v10, "root":Lcom/android/systemui_ex/recents/model/SpaceNode;
    invoke-virtual {v10}, Lcom/android/systemui_ex/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v13

    .line 219
    .local v13, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/TaskStack;>;"
    invoke-virtual {v10}, Lcom/android/systemui_ex/recents/model/SpaceNode;->hasTasks()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasTasks:Z

    .line 220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasTasks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/systemui_ex/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 223
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mHasTasks:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 227
    new-instance v3, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v3, "homeIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/high16 v18, 0x10200000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    new-instance v20, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v18, 0x7f050075

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const v19, 0x7f050076

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui_ex/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui_ex/recents/RecentsActivity$FinishRecentsRunnable;

    .line 239
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 240
    .local v16, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 241
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v4, v0, :cond_8

    .line 242
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 243
    .local v12, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    invoke-virtual {v12}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 244
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 245
    .local v15, "taskCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    if-ge v5, v15, :cond_3

    .line 246
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui_ex/recents/model/Task;

    .line 247
    .local v14, "t":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v0, v14, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 248
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/android/systemui_ex/recents/model/Task;->isLaunchTarget:Z

    .line 241
    .end local v14    # "t":Lcom/android/systemui_ex/recents/model/Task;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 223
    .end local v3    # "homeIntent":Landroid/content/Intent;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v12    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v15    # "taskCount":I
    .end local v16    # "taskStackCount":I
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 231
    .restart local v3    # "homeIntent":Landroid/content/Intent;
    :cond_5
    const v18, 0x7f050073

    goto/16 :goto_1

    :cond_6
    const v19, 0x7f050074

    goto :goto_2

    .line 245
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v12    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .restart local v14    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .restart local v15    # "taskCount":I
    .restart local v16    # "taskStackCount":I
    .restart local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 256
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v12    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v14    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .end local v15    # "taskCount":I
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui_ex/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 264
    const-string v18, "RecentsActivity"

    const-string v19, "No recent tasks"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui_ex/recents/views/RecentsView;->onSetClearRecentsVisibility(I)V

    .line 284
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 285
    return-void

    .line 268
    :cond_a
    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui_ex/recents/model/TaskStack;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v7

    .line 269
    .local v7, "loadedTaskCount":I
    const-string v18, "RecentsActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loaded tasks count "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v11

    .line 271
    .local v11, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui_ex/recents/model/TaskStack;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->setTaskStacks(Lcom/android/systemui_ex/recents/model/TaskStack;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/recents/views/RecentsView;->hasSearchBar()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui_ex/recents/views/RecentsView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui_ex/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_5

    .line 279
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    goto :goto_5
.end method
