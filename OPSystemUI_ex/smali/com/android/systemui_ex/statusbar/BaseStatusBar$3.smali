.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/app/PendingIntent;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    .line 389
    :goto_0
    if-eqz p1, :cond_1

    .line 390
    instance-of v0, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 391
    check-cast p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_1
    return-object v0

    .line 393
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private logActionClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 366
    .local v3, "parent":Landroid/view/ViewParent;
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 368
    const-string v4, "StatusBar"

    const-string v5, "Couldn\'t determine notification for click."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v1, -0x1

    .line 373
    .local v1, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x1020330

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 375
    check-cast v0, Landroid/view/ViewGroup;

    .line 376
    .local v0, "actionGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 379
    .end local v0    # "actionGroup":Landroid/view/ViewGroup;
    :cond_1
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clicked on button "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4, v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 400
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 311
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification click handler invoked for intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->logActionClick(Landroid/view/View;)V

    .line 320
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v7

    .line 324
    .local v7, "isActivity":Z
    if-eqz v7, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 326
    .local v2, "keyguardShowing":Z
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v0, v1, v4}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 329
    .local v3, "afterKeyguardGone":Z
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 334
    :cond_1
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$3$1;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$3;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v9, v0, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    move v0, v8

    .line 360
    .end local v2    # "keyguardShowing":Z
    .end local v3    # "afterKeyguardGone":Z
    :goto_1
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1

    .line 321
    .end local v7    # "isActivity":Z
    :catch_0
    move-exception v0

    goto :goto_0
.end method
