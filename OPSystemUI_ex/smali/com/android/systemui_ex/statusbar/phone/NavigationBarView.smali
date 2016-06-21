.class public Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field mBarSize:I

.field private final mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui_ex/statusbar/policy/DeadZone;

.field private mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

.field private mDelegateIntercepted:Z

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$H;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mIsLayoutRtl:Z

.field mNavigationIconHints:I

.field private mOnVerticalChangedListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private mRecentIcon:Landroid/graphics/drawable/Drawable;

.field private mRecentLandIcon:Landroid/graphics/drawable/Drawable;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field private mTaskSwitchHelper:Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;

.field private final mTransitionListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 68
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 75
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 76
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 92
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 143
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 248
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$H;

    .line 177
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 182
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 183
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 184
    new-instance v1, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    .line 185
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 187
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 189
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;

    .line 190
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustExtraKeyGravity(Landroid/view/View;Z)V
    .locals 6
    .param p1, "navBar"    # Landroid/view/View;
    .param p2, "isLayoutRtl"    # Z

    .prologue
    const/16 v4, 0x50

    const/16 v5, 0x30

    .line 536
    const v3, 0x7f0f0111

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 537
    .local v2, "menu":Landroid/view/View;
    const v3, 0x7f0f0112

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, "imeSwitcher":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p2, :cond_2

    move v3, v4

    :goto_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 541
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p2, :cond_3

    :goto_1
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v3, v5

    .line 540
    goto :goto_0

    :cond_3
    move v4, v5

    .line 545
    goto :goto_1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    if-nez p2, :cond_1

    .line 659
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    .end local p2    # "button":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 671
    return-void

    .line 661
    .restart local p2    # "button":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    instance-of v0, p2, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " drawingAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->getDrawingAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quiescentAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;

    .end local p2    # "button":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->getQuiescentAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIcons(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v1, 0x7f020136

    .line 275
    const v0, 0x7f020135

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    const v0, 0x7f020137

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 278
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 279
    const v0, 0x7f02013e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 280
    const v0, 0x7f02013f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    .line 281
    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 595
    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 598
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 603
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 599
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 603
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private inLockTask()Z
    .locals 2

    .prologue
    .line 378
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 380
    :goto_0
    return v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    .line 230
    :cond_0
    return-void
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1
    .param p1, "newVertical"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    .line 503
    :cond_0
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 609
    return-void
.end method

.method private swapChildrenOrderIfVertical(Landroid/view/View;)V
    .locals 6
    .param p1, "group"    # Landroid/view/View;

    .prologue
    .line 556
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 557
    check-cast v3, Landroid/widget/LinearLayout;

    .line 558
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 559
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 560
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 561
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 562
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 565
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 566
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 570
    .end local v0    # "childCount":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    .end local v3    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private updateRTLOrder()V
    .locals 6

    .prologue
    const v5, 0x7f0f010d

    const/4 v3, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v3

    .line 519
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    if-eq v4, v0, :cond_1

    .line 522
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v4, v3

    .line 523
    .local v2, "rotation90":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 524
    invoke-direct {p0, v2, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    .line 526
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 527
    .local v1, "rotation270":Landroid/view/View;
    if-eq v2, v1, :cond_0

    .line 528
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 529
    invoke-direct {p0, v1, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    .line 531
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    .line 533
    .end local v1    # "rotation270":Landroid/view/View;
    .end local v2    # "rotation90":Landroid/view/View;
    :cond_1
    return-void

    .line 517
    .end local v0    # "isLayoutRtl":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 473
    .local v0, "isRtl":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBarState(ZZ)V

    .line 474
    return-void

    .line 472
    .end local v0    # "isRtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .prologue
    .line 612
    sparse-switch p0, :sswitch_data_0

    .line 618
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 614
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 616
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 612
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 623
    const-string v5, "NavigationBarView {"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 625
    .local v1, "r":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 626
    .local v2, "size":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      this: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 632
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 633
    .local v0, "offscreen":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      window: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v5, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v5, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const-string v5, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string v3, "true"

    :goto_2
    aput-object v3, v6, v4

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string v3, "true"

    :goto_3
    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v3, "back"

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 649
    const-string v3, "home"

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 650
    const-string v3, "rcnt"

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 651
    const-string v3, "menu"

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 653
    const-string v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    return-void

    .end local v0    # "offscreen":Z
    :cond_1
    move v0, v3

    .line 632
    goto/16 :goto_0

    .line 633
    .restart local v0    # "offscreen":Z
    :cond_2
    const-string v5, ""

    goto/16 :goto_1

    .line 643
    :cond_3
    const-string v3, "false"

    goto :goto_2

    :cond_4
    const-string v3, "false"

    goto :goto_3
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui_ex/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImeSwitchButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f0110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    return v0
.end method

.method public notifyScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mScreenOn:Z

    .line 292
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 293
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 508
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    .line 509
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 510
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v2, 0x2

    const v3, 0x7f0f010c

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v3, v0, v4

    .line 426
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x7f0f0115

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    .line 428
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v5

    aput-object v2, v0, v1

    .line 430
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    .line 435
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 236
    .local v1, "intercept":Z
    if-nez v1, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    .line 238
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    .line 245
    :goto_0
    return v1

    .line 240
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 241
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 242
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 243
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 478
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 480
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 487
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 488
    .local v0, "newVertical":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 489
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->reorient()V

    .line 492
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 495
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 496
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 497
    return-void

    .line 487
    .end local v0    # "newVertical":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 213
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui_ex/statusbar/policy/DeadZone;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui_ex/statusbar/policy/DeadZone;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 219
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateIntercepted:Z

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 221
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 223
    .end local v0    # "ret":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reorient()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 442
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 443
    .local v1, "rot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 447
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f0f0114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui_ex/statusbar/policy/DeadZone;

    .line 454
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;->init(Z)V

    .line 455
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 456
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 463
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    if-eqz v2, :cond_1

    .line 464
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;->setSwapXY(Z)V

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 468
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 469
    return-void
.end method

.method public setBar(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBar(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    .line 203
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui_ex/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .param p1, "disabledFlags"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 330
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 11
    .param p1, "disabledFlags"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 333
    if-nez p2, :cond_0

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v6, p1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 335
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 337
    const/high16 v6, 0x200000

    and-int/2addr v6, p1

    if-eqz v6, :cond_4

    move v1, v7

    .line 338
    .local v1, "disableHome":Z
    :goto_1
    const/high16 v6, 0x1000000

    and-int/2addr v6, p1

    if-eqz v6, :cond_5

    move v2, v7

    .line 339
    .local v2, "disableRecent":Z
    :goto_2
    const/high16 v6, 0x400000

    and-int/2addr v6, p1

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_6

    move v0, v7

    .line 341
    .local v0, "disableBack":Z
    :goto_3
    const/high16 v6, 0x2000000

    and-int/2addr v6, p1

    if-eqz v6, :cond_7

    move v3, v7

    .line 344
    .local v3, "disableSearch":Z
    :goto_4
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    move v6, v7

    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 347
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v10, 0x7f0f010d

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 348
    .local v5, "navButtons":Landroid/view/ViewGroup;
    if-eqz v5, :cond_2

    .line 349
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 350
    .local v4, "lt":Landroid/animation/LayoutTransition;
    if-eqz v4, :cond_2

    .line 351
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v6

    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 352
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 354
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 355
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 363
    .end local v4    # "lt":Landroid/animation/LayoutTransition;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->inLockTask()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 366
    const/4 v2, 0x0

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v10

    if-eqz v0, :cond_9

    move v6, v9

    :goto_6
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v10

    if-eqz v1, :cond_a

    move v6, v9

    :goto_7
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_b

    :goto_8
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v8

    invoke-virtual {v6, v8, v7}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarTransitions;->applyBackButtonQuiescentAlpha(IZ)V

    goto/16 :goto_0

    .end local v0    # "disableBack":Z
    .end local v1    # "disableHome":Z
    .end local v2    # "disableRecent":Z
    .end local v3    # "disableSearch":Z
    .end local v5    # "navButtons":Landroid/view/ViewGroup;
    :cond_4
    move v1, v8

    .line 337
    goto/16 :goto_1

    .restart local v1    # "disableHome":Z
    :cond_5
    move v2, v8

    .line 338
    goto/16 :goto_2

    .restart local v2    # "disableRecent":Z
    :cond_6
    move v0, v8

    .line 339
    goto :goto_3

    .restart local v0    # "disableBack":Z
    :cond_7
    move v3, v8

    .line 341
    goto :goto_4

    .restart local v3    # "disableSearch":Z
    :cond_8
    move v6, v8

    .line 344
    goto :goto_5

    .restart local v5    # "navButtons":Landroid/view/ViewGroup;
    :cond_9
    move v6, v8

    .line 369
    goto :goto_6

    :cond_a
    move v6, v8

    .line 370
    goto :goto_7

    :cond_b
    move v9, v8

    .line 371
    goto :goto_8
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 287
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 288
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 408
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 411
    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v2, p1, :cond_0

    .line 419
    :goto_0
    return-void

    .line 413
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 416
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 418
    .local v0, "shouldShow":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "shouldShow":Z
    :cond_1
    move v0, v1

    .line 416
    goto :goto_1

    .line 418
    .restart local v0    # "shouldShow":Z
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 297
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 6
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 300
    if-nez p2, :cond_0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 301
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    move v0, v3

    .line 302
    .local v0, "backAlt":Z
    :goto_1
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 311
    :cond_1
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_7

    move v1, v3

    .line 320
    .local v1, "showImeButton":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 325
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    goto :goto_0

    .end local v0    # "backAlt":Z
    .end local v1    # "showImeButton":Z
    :cond_2
    move v0, v4

    .line 301
    goto :goto_1

    .line 313
    .restart local v0    # "backAlt":Z
    :cond_3
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 317
    :cond_6
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    move v1, v4

    .line 319
    goto :goto_4

    .line 320
    .restart local v1    # "showImeButton":Z
    :cond_8
    const/4 v4, 0x4

    goto :goto_5
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 1
    .param p1, "onVerticalChangedListener"    # Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui_ex/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 208
    return-void
.end method

.method public setSlippery(Z)V
    .locals 5
    .param p1, "newSlippery"    # Z

    .prologue
    const/high16 v4, 0x20000000

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 392
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 393
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 394
    .local v1, "oldSlippery":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 395
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 401
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 402
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    .end local v1    # "oldSlippery":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 396
    .restart local v1    # "oldSlippery":Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 397
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
