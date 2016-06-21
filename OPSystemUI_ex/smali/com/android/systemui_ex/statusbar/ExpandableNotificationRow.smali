.class public Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;
    }
.end annotation


# instance fields
.field private mExpandable:Z

.field private mExpansionDisabled:Z

.field private mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;

.field private mHasUserChangedExpansion:Z

.field private mIsHeadsUp:Z

.field private mIsSystemExpanded:Z

.field private mLogger:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mMaxExpandHeight:I

.field private mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

.field private mRowMaxHeight:I

.field private mRowMinHeight:I

.field private mSensitive:Z

.field private mShowingPublic:Z

.field private mShowingPublicForIntrinsicHeight:Z

.field private mShowingPublicInitialized:Z

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mVetoButton:Landroid/view/View;

.field private mWasReset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)Lcom/android/systemui_ex/statusbar/NotificationGuts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;Lcom/android/systemui_ex/statusbar/NotificationGuts;)Lcom/android/systemui_ex/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    return-object p1
.end method

.method private animateShowingPublic(JJ)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 403
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .line 404
    .local v0, "source":Landroid/view/View;
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .line 405
    .local v1, "target":Landroid/view/View;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 410
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$2;-><init>(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 420
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 424
    return-void

    .line 403
    .end local v0    # "source":Landroid/view/View;
    .end local v1    # "target":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    goto :goto_0

    .line 404
    .restart local v0    # "source":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    goto :goto_1
.end method

.method private getShowingLayout()Lcom/android/systemui_ex/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    goto :goto_0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logExpansionEvent(ZZ)V
    .locals 3
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 495
    .local v0, "nowExpanded":Z
    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    .line 498
    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui_ex/statusbar/NotificationContentView;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .prologue
    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "expandedChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 86
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 92
    const v2, 0x1020034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    .local v1, "rightIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 96
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "rightIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "running"    # Z

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 102
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 103
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 117
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 108
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 109
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 110
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-eqz p2, :cond_3

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method private updateMaxExpandHeight()V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 362
    .local v0, "intrinsicBefore":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 366
    :cond_0
    return-void
.end method

.method private updateVetoButton()V
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 429
    return-void

    .line 428
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public applyExpansionToLayout()V
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 315
    .local v0, "expand":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 316
    iget v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    goto :goto_0
.end method

.method protected filterMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->filterMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    .line 333
    :goto_0
    return v1

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 328
    .local v0, "inExpansionState":Z
    if-nez v0, :cond_1

    .line 330
    iget v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    goto :goto_0

    .line 333
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getMaxExpandHeight()I
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui_ex/statusbar/NotificationContentView;

    move-result-object v0

    .line 455
    .local v0, "showingLayout":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    return v1
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpandable()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0
.end method

.method public isMaxExpandHeightInitialized()Z
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemExpanded()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    return v0
.end method

.method public notifyContentUpdated()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->notifyContentUpdated()V

    .line 476
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->notifyContentUpdated()V

    .line 477
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 181
    const v1, 0x7f0f0163

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .line 182
    const v1, 0x7f0f0162

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    .line 183
    const v1, 0x7f0f0166

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 184
    .local v0, "gutsStub":Landroid/view/ViewStub;
    new-instance v1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 192
    const v1, 0x7f0f0164

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    .line 193
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-super/range {p0 .. p5}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 352
    iget v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mWasReset:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 353
    .local v0, "updateExpandHeight":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->updateMaxExpandHeight()V

    .line 354
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->applyExpansionToLayout()V

    .line 357
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mWasReset:Z

    .line 358
    return-void

    .end local v0    # "updateExpandHeight":Z
    :cond_1
    move v0, v1

    .line 352
    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 201
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 203
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 204
    const/4 v1, 0x1

    .line 206
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->reset()V

    .line 146
    iput v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    .line 147
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 148
    .local v0, "wasExpanded":Z
    iput v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    .line 149
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 153
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 156
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    .line 157
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->reset(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->reset(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 160
    invoke-direct {p0, v3, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 161
    return-void
.end method

.method public resetHeight()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->resetActualHeight()V

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mWasReset:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->onHeightReset()V

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->requestLayout()V

    .line 171
    return-void
.end method

.method public resetUserExpansion()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 257
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 258
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "height"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setActualHeight(I)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setActualHeight(I)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->invalidate()V

    .line 449
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    .line 450
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 468
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 472
    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 212
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui_ex/statusbar/NotificationContentView;

    move-result-object v0

    .line 213
    .local v0, "showing":Lcom/android/systemui_ex/statusbar/NotificationContentView;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 216
    :cond_0
    return-void
.end method

.method public setExpandable(Z)V
    .locals 0
    .param p1, "expandable"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 229
    return-void
.end method

.method public setExpansionDisabled(Z)V
    .locals 2
    .param p1, "expansionDisabled"    # Z

    .prologue
    .line 293
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-eq p1, v1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 295
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    .line 296
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 301
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$ExpansionLogger;

    .line 489
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 0
    .param p1, "isHeadsUp"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 130
    return-void
.end method

.method public setHeightRange(II)V
    .locals 0
    .param p1, "rowMinHeight"    # I
    .param p2, "rowMaxHeight"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    .line 220
    iput p2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    .line 221
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 7
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 379
    .local v0, "oldShowingPublic":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 380
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v1, v0, :cond_2

    .line 400
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 379
    goto :goto_0

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    if-nez p2, :cond_5

    .line 388
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 389
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 390
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v1, v5}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setAlpha(F)V

    .line 391
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-virtual {v1, v5}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setAlpha(F)V

    .line 392
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/NotificationContentView;->setVisibility(I)V

    .line 398
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    .line 399
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    goto :goto_1

    :cond_3
    move v1, v4

    .line 392
    goto :goto_2

    :cond_4
    move v4, v3

    .line 393
    goto :goto_3

    .line 395
    :cond_5
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJ)V

    goto :goto_4
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 1
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    .line 374
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconAnimationRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui_ex/statusbar/NotificationContentView;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui_ex/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui_ex/statusbar/NotificationContentView;)V

    .line 77
    return-void
.end method

.method public setSensitive(Z)V
    .locals 0
    .param p1, "sensitive"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 370
    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    .line 122
    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 281
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 283
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 285
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 287
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 3
    .param p1, "userExpanded"    # Z

    .prologue
    const/4 v2, 0x1

    .line 248
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-nez v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 250
    .local v0, "wasExpanded":Z
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 252
    invoke-direct {p0, v2, v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    goto :goto_0
.end method

.method public setUserLocked(Z)V
    .locals 0
    .param p1, "userLocked"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 266
    return-void
.end method
