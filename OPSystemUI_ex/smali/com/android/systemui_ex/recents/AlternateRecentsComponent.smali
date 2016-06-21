.class public Lcom/android/systemui_ex/recents/AlternateRecentsComponent;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;,
        Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field static sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

.field static sRecentsComponentCallbacks:Lcom/android/systemui_ex/RecentsComponent$Callbacks;


# instance fields
.field mBootCompleted:Z

.field mCanReuseTaskStackViews:Z

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mDummyStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mProxyBroadcastReceiver:Lcom/android/systemui_ex/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

.field mStartAnimationTriggered:Z

.field mStatusBarHeight:I

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;

.field mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 185
    invoke-static {p1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    .line 186
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    .line 187
    iput-object p1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;-><init>(Lcom/android/systemui_ex/recents/AlternateRecentsComponent;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTaskStackListener:Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    .line 194
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTaskStackListener:Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;-><init>(Lcom/android/systemui_ex/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mProxyBroadcastReceiver:Lcom/android/systemui_ex/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    .line 201
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "action_notify_recents_visibility_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mProxyBroadcastReceiver:Lcom/android/systemui_ex/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 206
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 755
    sget-object v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    .line 756
    .local v0, "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    .line 757
    return-object v0
.end method

.method static createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    return-object v0
.end method

.method public static notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    .param p2, "visible"    # Z
    .annotation build Lcom/android/systemui_ex/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-static {p2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->visibilityChanged(Z)V

    .line 744
    :goto_0
    return-void

    .line 739
    :cond_0
    const-string v1, "action_notify_recents_visibility_change"

    invoke-static {p0, v1}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 741
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "recentsVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 742
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method static visibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 746
    sget-object v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui_ex/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 747
    sget-object v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui_ex/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 749
    :cond_0
    return-void
.end method


# virtual methods
.method configurationChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->reloadHeaderBarLayout(Z)V

    .line 429
    return-void
.end method

.method getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "fromSearchHome"    # Z

    .prologue
    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 540
    if-eqz p1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050065

    const v2, 0x7f050066

    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 546
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050063

    const v2, 0x7f050064

    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/views/TaskStackView;)Landroid/app/ActivityOptions;
    .locals 17
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .param p3, "stackView"    # Lcom/android/systemui_ex/recents/views/TaskStackView;

    .prologue
    .line 558
    new-instance v14, Lcom/android/systemui_ex/recents/model/Task;

    invoke-direct {v14}, Lcom/android/systemui_ex/recents/model/Task;-><init>()V

    .line 559
    .local v14, "toTask":Lcom/android/systemui_ex/recents/model/Task;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->getThumbnailTransitionTransform(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/views/TaskStackView;ILcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-result-object v16

    .line 561
    .local v16, "toTransform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    if-eqz v16, :cond_0

    iget-object v3, v14, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    if-eqz v3, :cond_0

    .line 562
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 563
    .local v15, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v3, v5

    float-to-int v13, v3

    .line 564
    .local v13, "toHeaderWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v3, v5

    float-to-int v12, v3

    .line 565
    .local v12, "toHeaderHeight":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 570
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 571
    .local v11, "c":Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v11, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v3, v14}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v3, v11}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 574
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 577
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget v5, v15, Landroid/graphics/Rect;->left:I

    iget v6, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    move-object/from16 v10, p0

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 584
    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v12    # "toHeaderHeight":I
    .end local v13    # "toHeaderWidth":I
    .end local v15    # "toTaskRect":Landroid/graphics/Rect;
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_0
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/views/TaskStackView;ILcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .param p2, "stackView"    # Lcom/android/systemui_ex/recents/views/TaskStackView;
    .param p3, "runningTaskId"    # I
    .param p4, "runningTaskOut"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, "task":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 593
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    .line 595
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 596
    .local v3, "taskCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 597
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/recents/model/Task;

    .line 598
    .local v1, "t":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    if-ne v5, p3, :cond_2

    .line 599
    move-object v2, v1

    .line 600
    invoke-virtual {p4, v1}, Lcom/android/systemui_ex/recents/model/Task;->copyFrom(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 605
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .end local v3    # "taskCount":I
    :cond_0
    if-nez v2, :cond_1

    .line 607
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "task":Lcom/android/systemui_ex/recents/model/Task;
    check-cast v2, Lcom/android/systemui_ex/recents/model/Task;

    .line 611
    .restart local v2    # "task":Lcom/android/systemui_ex/recents/model/Task;
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getScroller()Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 612
    invoke-virtual {p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getScroller()Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui_ex/recents/model/Task;FLcom/android/systemui_ex/recents/views/TaskViewTransform;Lcom/android/systemui_ex/recents/views/TaskViewTransform;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 614
    iget-object v5, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    return-object v5

    .line 596
    .restart local v0    # "i":I
    .restart local v1    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .restart local v3    # "taskCount":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 4

    .prologue
    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    .line 529
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050067

    const v2, 0x7f050068

    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method hideRecents(ZZ)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 278
    iget-boolean v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 280
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v3, "action_hide_recents_activity"

    invoke-static {v2, v3}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "triggeredFromAltTab"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const-string v2, "triggeredFromHomeKey"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    iget-object v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 288
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-void
.end method

.method public onAnimationStarted()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 765
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    if-nez v0, :cond_0

    .line 770
    new-instance v4, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$1;-><init>(Lcom/android/systemui_ex/recents/AlternateRecentsComponent;)V

    .line 789
    .local v4, "fallbackReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v2, "action_start_enter_animation"

    invoke-static {v0, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 790
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 793
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "fallbackReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mBootCompleted:Z

    .line 239
    return-void
.end method

.method public onCancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/systemui_ex/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->configurationChanged()V

    .line 423
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 421
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onHideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation build Lcom/android/systemui_ex/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->hideRecents(ZZ)V

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const-string v1, "triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onPreloadRecents()V
    .locals 3
    .annotation build Lcom/android/systemui_ex/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->preloadRecents()V

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onShowNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    .line 407
    return-void
.end method

.method public onShowPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    .line 411
    return-void
.end method

.method public onShowRecents(Z)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .annotation build Lcom/android/systemui_ex/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->showRecents(Z)V

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5
    .annotation build Lcom/android/systemui_ex/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 221
    invoke-static {}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    .line 223
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->reloadHeaderBarLayout(Z)V

    .line 227
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 228
    .local v1, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 229
    .local v2, "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v1, v2, v4}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Z)V

    .line 230
    new-instance v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 231
    .local v0, "launchOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 232
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 233
    iput-boolean v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 234
    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 235
    return-void
.end method

.method public onToggleRecents()V
    .locals 3
    .annotation build Lcom/android/systemui_ex/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->toggleRecents()V

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method preloadRecents()V
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 326
    .local v0, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    sput-object v1, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    .line 327
    sget-object v1, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 328
    return-void
.end method

.method reloadHeaderBarLayout(Z)V
    .locals 14
    .param p1, "reloadWidget"    # Z

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 433
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 434
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    .line 435
    const v0, 0x1050011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    .line 436
    const v0, 0x1050012

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mNavBarHeight:I

    .line 437
    const v0, 0x1050014

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mNavBarWidth:I

    .line 438
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 439
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 440
    if-eqz p1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget-object v4, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mNavBarWidth:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mNavBarWidth:I

    invoke-virtual {v0, v12, v1, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 453
    :goto_1
    new-instance v8, Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-direct {v8}, Lcom/android/systemui_ex/recents/model/TaskStack;-><init>()V

    .line 454
    .local v8, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/android/systemui_ex/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 455
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v6

    .line 456
    .local v6, "algo":Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 457
    .local v10, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 458
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v6, v0, v1, v10}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 459
    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v11

    .line 460
    .local v11, "taskViewSize":Landroid/graphics/Rect;
    const v0, 0x7f0d0062

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 461
    .local v9, "taskBarHeight":I
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    .line 463
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->measure(II)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v12, v12, v1, v9}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->layout(IIII)V

    .line 467
    return-void

    .end local v6    # "algo":Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;
    .end local v8    # "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    .end local v9    # "taskBarHeight":I
    .end local v10    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v11    # "taskViewSize":Landroid/graphics/Rect;
    :cond_1
    move v4, v12

    .line 444
    goto/16 :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mNavBarHeight:I

    invoke-virtual {v0, v12, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    .prologue
    .line 485
    return-void
.end method

.method public setRecentsComponentCallback(Lcom/android/systemui_ex/RecentsComponent$Callbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui_ex/RecentsComponent$Callbacks;

    .prologue
    .line 729
    sput-object p1, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui_ex/RecentsComponent$Callbacks;

    .line 730
    return-void
.end method

.method showRecents(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 256
    const-string v1, "AlternateRecentsComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRecents triggeredFromAltTab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui_ex/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 21
    .param p1, "showNextTask"    # Z

    .prologue
    .line 335
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 336
    .local v7, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 337
    .local v9, "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v9, v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Z)V

    .line 338
    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui_ex/recents/model/TaskStack;

    move-result-object v11

    .line 341
    .local v11, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    invoke-virtual {v11}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 345
    .local v10, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v10, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 350
    invoke-virtual {v11}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v14

    .line 351
    .local v14, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    const/4 v15, 0x0

    .line 352
    .local v15, "toTask":Lcom/android/systemui_ex/recents/model/Task;
    const/4 v6, 0x0

    .line 353
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 354
    .local v13, "taskCount":I
    const/4 v8, 0x0

    .line 355
    .local v8, "numAffiliatedTasks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v13, :cond_3

    .line 356
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui_ex/recents/model/Task;

    .line 357
    .local v12, "task":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v0, v12, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 358
    iget-object v4, v12, Lcom/android/systemui_ex/recents/model/Task;->group:Lcom/android/systemui_ex/recents/model/TaskGrouping;

    .line 360
    .local v4, "group":Lcom/android/systemui_ex/recents/model/TaskGrouping;
    if-eqz p1, :cond_4

    .line 361
    invoke-virtual {v4, v12}, Lcom/android/systemui_ex/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    move-result-object v16

    .line 362
    .local v16, "toTaskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f05006d

    const v19, 0x7f05006c

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 371
    :goto_2
    if-eqz v16, :cond_2

    .line 372
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui_ex/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v15

    .line 374
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 380
    .end local v4    # "group":Lcom/android/systemui_ex/recents/model/TaskGrouping;
    .end local v12    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v16    # "toTaskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    :cond_3
    if-nez v15, :cond_7

    .line 381
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_0

    .line 382
    if-eqz p1, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05006b

    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 366
    .restart local v4    # "group":Lcom/android/systemui_ex/recents/model/TaskGrouping;
    .restart local v12    # "task":Lcom/android/systemui_ex/recents/model/Task;
    :cond_4
    invoke-virtual {v4, v12}, Lcom/android/systemui_ex/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    move-result-object v16

    .line 367
    .restart local v16    # "toTaskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f050070

    const v19, 0x7f05006f

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_2

    .line 355
    .end local v4    # "group":Lcom/android/systemui_ex/recents/model/TaskGrouping;
    .end local v16    # "toTaskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 387
    .end local v12    # "task":Lcom/android/systemui_ex/recents/model/Task;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05006e

    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 396
    :cond_7
    iget-boolean v0, v15, Lcom/android/systemui_ex/recents/model/Task;->isActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 400
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/systemui_ex/recents/model/Task;->activityLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_0
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V
    .locals 5
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "fromHome"    # Z
    .param p4, "fromSearchHome"    # Z
    .param p5, "fromThumbnail"    # Z
    .param p6, "vr"    # Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 702
    iget-object v4, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 703
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iput-boolean p4, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    .line 704
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iput-boolean p5, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 705
    iget-object v4, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iput v1, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 706
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 707
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    iput-boolean v4, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 708
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v4, p6, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v4, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    .line 709
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v4, p6, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v4, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    .line 710
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iput-boolean v2, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 718
    if-eqz p2, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_3

    .line 720
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 724
    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    .line 725
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 702
    goto :goto_0

    .line 705
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 722
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2
.end method

.method startRecentsActivity()V
    .locals 3

    .prologue
    .line 517
    iget-object v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 518
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 519
    .local v0, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 522
    :cond_1
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 26
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 619
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v21

    .line 620
    .local v21, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-static {v4, v5}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 622
    sget-object v4, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_0

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    .line 626
    :cond_0
    sget-object v4, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Z)V

    .line 627
    sget-object v4, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui_ex/recents/model/TaskStack;

    move-result-object v24

    .line 630
    .local v24, "stack":Lcom/android/systemui_ex/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui_ex/recents/model/TaskStack;ZZ)V

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 633
    .local v10, "stackVr":Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_5

    const/16 v18, 0x1

    .line 634
    .local v18, "hasRecentTasks":Z
    :goto_0
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    if-eqz v18, :cond_6

    const/16 v25, 0x1

    .line 636
    .local v25, "useThumbnailTransition":Z
    :goto_1
    if-eqz v25, :cond_1

    .line 638
    const-string v4, "AlternateRecentsComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "topTask id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " packageName:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v20, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct/range {v20 .. v20}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 642
    .local v20, "launchOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 643
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 644
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui_ex/recents/views/TaskStackView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/views/TaskStackView;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 650
    .local v6, "opts":Landroid/app/ActivityOptions;
    if-eqz v6, :cond_7

    .line 651
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 659
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v20    # "launchOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    :cond_1
    :goto_2
    if-nez v25, :cond_4

    .line 662
    if-eqz v18, :cond_9

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v19

    .line 666
    .local v19, "homeActivityPackage":Ljava/lang/String;
    const/16 v22, 0x0

    .line 667
    .local v22, "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    const/16 v23, 0x0

    .line 668
    .local v23, "searchWidgetPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    .line 674
    :goto_3
    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 675
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 678
    :cond_2
    const/4 v8, 0x0

    .line 679
    .local v8, "fromSearchHome":Z
    if-eqz v19, :cond_3

    if-eqz v23, :cond_3

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 681
    const/4 v8, 0x1

    .line 684
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 685
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 694
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v8    # "fromSearchHome":Z
    .end local v19    # "homeActivityPackage":Ljava/lang/String;
    .end local v22    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v23    # "searchWidgetPackage":Ljava/lang/String;
    :cond_4
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mLastToggleTime:J

    .line 695
    return-void

    .line 633
    .end local v18    # "hasRecentTasks":Z
    .end local v25    # "useThumbnailTransition":Z
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 634
    .restart local v18    # "hasRecentTasks":Z
    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 655
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    .restart local v20    # "launchOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v25    # "useThumbnailTransition":Z
    :cond_7
    const/16 v25, 0x0

    goto :goto_2

    .line 672
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v20    # "launchOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v19    # "homeActivityPackage":Ljava/lang/String;
    .restart local v22    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v23    # "searchWidgetPackage":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    goto :goto_3

    .line 689
    .end local v19    # "homeActivityPackage":Ljava/lang/String;
    .end local v22    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v23    # "searchWidgetPackage":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 690
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v6

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    goto :goto_4
.end method

.method toggleRecents()V
    .locals 2

    .prologue
    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui_ex/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method toggleRecentsActivity()V
    .locals 8

    .prologue
    .line 492
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x15e

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 493
    const-string v3, "AlternateRecentsComponent"

    const-string v4, "toggleRecents too quickly!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 500
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 501
    .local v1, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    const-string v3, "AlternateRecentsComponent"

    const-string v4, "toggleRecentsActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v4, "action_toggle_recents_activity"

    invoke-static {v3, v4}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mLastToggleTime:J

    goto :goto_0

    .line 510
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method
