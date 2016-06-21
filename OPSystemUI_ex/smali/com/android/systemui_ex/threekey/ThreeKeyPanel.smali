.class public Lcom/android/systemui_ex/threekey/ThreeKeyPanel;
.super Landroid/os/Handler;
.source "ThreeKeyPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;,
        Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;
    }
.end annotation


# static fields
.field private static LOGD:Z


# instance fields
.field private mCloseImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentThreeKeyState:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogView:Landroid/view/ViewGroup;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayAnimation:Landroid/view/animation/Animation;

.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayRotation:I

.field private mDoNotDisturbIcon:Landroid/widget/ImageView;

.field private mDoNotDisturbLabel:Landroid/widget/TextView;

.field private mDoNotDisturbLayout:Landroid/view/ViewGroup;

.field private mFastHideFirstAnimation:Landroid/view/animation/Animation;

.field private mFastHideSecondAnimation:Landroid/view/animation/Animation;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mImgMoveDownAnimation:Landroid/view/animation/Animation;

.field private mImgMoveUpAnimation:Landroid/view/animation/Animation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitAfterReboot:Z

.field private mItemVerticalImgLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mItemVerticalTextLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mLastThreeKeyState:I

.field private mMuteIcon:Landroid/widget/ImageView;

.field private mMuteLabel:Landroid/widget/TextView;

.field private mMuteLayout:Landroid/view/ViewGroup;

.field private mNormalIcon:Landroid/widget/ImageView;

.field private mNormalLabel:Landroid/widget/TextView;

.field private mNormalLayout:Landroid/view/ViewGroup;

.field private mShowImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThreeKeyItemPanel:Landroid/view/ViewGroup;

.field private mThreeKeyPanel:Landroid/view/View;

.field private mTimeoutDelay:I

.field private mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "ThreeKeyPanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    iput v5, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCurrentThreeKeyState:I

    .line 46
    iput v5, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mLastThreeKeyState:I

    .line 48
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mTimeoutDelay:I

    .line 78
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayAnimation:Landroid/view/animation/Animation;

    .line 79
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mHideAnimation:Landroid/view/animation/Animation;

    .line 80
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideFirstAnimation:Landroid/view/animation/Animation;

    .line 81
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideSecondAnimation:Landroid/view/animation/Animation;

    .line 83
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveUpAnimation:Landroid/view/animation/Animation;

    .line 84
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveDownAnimation:Landroid/view/animation/Animation;

    .line 85
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mShowImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 86
    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCloseImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 567
    new-instance v2, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;-><init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)V

    iput-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 91
    iput-object p1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    .line 93
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 96
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 98
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 99
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplay:Landroid/view/Display;

    .line 100
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayRotation:I

    .line 102
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    .line 103
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v2, p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;)V

    .line 105
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010033

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "arr":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    .end local v0    # "arr":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->init()V

    .line 113
    iput-boolean v5, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mInitAfterReboot:Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/threekey/ThreeKeyPanel;
    .param p1, "x1"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/threekey/ThreeKeyPanel;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->updateDialog(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/threekey/ThreeKeyPanel;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayRotation:I

    return p1
.end method

.method private animView()V
    .locals 3

    .prologue
    .line 433
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCurrentThreeKeyState:I

    packed-switch v0, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 435
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->performAnimOnTv(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalIcon:Landroid/widget/ImageView;

    const v1, 0x7f050086

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->showAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->performAnimOnTv(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbIcon:Landroid/widget/ImageView;

    const v1, 0x7f05007e

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->showAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->performAnimOnTv(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteIcon:Landroid/widget/ImageView;

    const v1, 0x7f050084

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->showAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeAnimation(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # I

    .prologue
    .line 508
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 510
    .local v0, "targetView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCloseImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 512
    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 513
    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCloseImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 514
    return-void
.end method

.method private findView(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, "view":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 463
    const/4 v0, 0x0

    .line 467
    :goto_0
    return-object v0

    .line 454
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLabel:Landroid/widget/TextView;

    .line 455
    goto :goto_0

    .line 457
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLabel:Landroid/widget/TextView;

    .line 458
    goto :goto_0

    .line 460
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    .line 461
    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private forceTimeout(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    const/4 v0, 0x5

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->removeMessages(I)V

    .line 218
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->initThreeKeyPanelLayout()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->initViewResources()V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->initAnimationResources()V

    .line 120
    return-void
.end method

.method private initAnimationResources()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/high16 v6, -0x3ef00000    # -9.0f

    const v2, 0x7f050088

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f050087

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayAnimation:Landroid/view/animation/Animation;

    .line 189
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mHideAnimation:Landroid/view/animation/Animation;

    .line 192
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideFirstAnimation:Landroid/view/animation/Animation;

    .line 195
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideFirstAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideFirstAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideSecondAnimation:Landroid/view/animation/Animation;

    .line 199
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideSecondAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideSecondAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 202
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v4, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveUpAnimation:Landroid/view/animation/Animation;

    .line 203
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveUpAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 206
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v4, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveDownAnimation:Landroid/view/animation/Animation;

    .line 207
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 209
    return-void
.end method

.method private initThreeKeyPanelLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 123
    new-instance v3, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$1;

    iget-object v4, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$1;-><init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    .line 134
    iget-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 135
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 137
    iget-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040064

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialogView:Landroid/view/ViewGroup;

    .line 138
    iget-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 140
    iget-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->create()V

    .line 142
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 144
    const v3, 0x1040028

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 149
    const v3, 0x7f0f0186

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyPanel:Landroid/view/View;

    .line 151
    iget-object v3, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 152
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 154
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 155
    const v3, 0x7f0d00db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 156
    const v3, 0x7f0d00dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 157
    const v3, 0x7f0d00d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 158
    const v3, 0x7f0d00da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 159
    const/16 v3, 0x7de

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 160
    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 161
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    const v3, 0x7f0b0034

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 163
    const-string v3, "ThreeKeyPanel"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 166
    return-void
.end method

.method private initViewResources()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyPanel:Landroid/view/View;

    const v1, 0x7f0f0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    .line 171
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f0015

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    .line 172
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f018e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLabel:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f018d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalIcon:Landroid/widget/ImageView;

    .line 175
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f018a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    .line 176
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f018c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLabel:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f018b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbIcon:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    .line 180
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f0189

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f0188

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteIcon:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mItemVerticalImgLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mItemVerticalTextLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    return-void
.end method

.method private performAnimOnIv()V
    .locals 2

    .prologue
    .line 472
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCurrentThreeKeyState:I

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mLastThreeKeyState:I

    packed-switch v0, :pswitch_data_1

    .line 496
    :goto_1
    return-void

    .line 474
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalIcon:Landroid/widget/ImageView;

    const v1, 0x7f050086

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->showAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbIcon:Landroid/widget/ImageView;

    const v1, 0x7f05007e

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->showAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteIcon:Landroid/widget/ImageView;

    const v1, 0x7f050084

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->showAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 487
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalIcon:Landroid/widget/ImageView;

    const v1, 0x7f050085

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->closeAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 490
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbIcon:Landroid/widget/ImageView;

    const v1, 0x7f05007d

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->closeAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 493
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteIcon:Landroid/widget/ImageView;

    const v1, 0x7f050083

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->closeAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 485
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private performAnimOnTv(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "displayTv"    # Landroid/widget/TextView;
    .param p2, "hideTv"    # Landroid/widget/TextView;

    .prologue
    .line 517
    if-eqz p1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;-><init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 521
    :cond_0
    if-eqz p2, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;-><init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 525
    :cond_1
    return-void
.end method

.method private performAnimOnTv(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "displayTv"    # Landroid/widget/TextView;
    .param p2, "hideTv1"    # Landroid/widget/TextView;
    .param p3, "hideTv2"    # Landroid/widget/TextView;

    .prologue
    .line 528
    if-eqz p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;-><init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 532
    :cond_0
    if-eqz p2, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideFirstAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;-><init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideFirstAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 536
    :cond_1
    if-eqz p3, :cond_2

    .line 537
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideSecondAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;-><init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mFastHideSecondAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 540
    :cond_2
    return-void
.end method

.method private resetImage()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteIcon:Landroid/widget/ImageView;

    const v1, 0x7f02046c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbIcon:Landroid/widget/ImageView;

    const v1, 0x7f02046d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalIcon:Landroid/widget/ImageView;

    const v1, 0x7f02046e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 546
    return-void
.end method

.method private resetText()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 549
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    return-void
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->removeMessages(I)V

    .line 243
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mTimeoutDelay:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void
.end method

.method private setItemImgLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    return-void
.end method

.method private setItemTextlayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-void
.end method

.method private showAnimation(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # I

    .prologue
    .line 499
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 501
    .local v0, "targetView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mShowImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 503
    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mImgMoveUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mShowImgAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 505
    return-void
.end method

.method private switchLanguage()V
    .locals 4

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 556
    .local v0, "window":Landroid/view/Window;
    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialogView:Landroid/view/ViewGroup;

    .line 557
    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 558
    const v1, 0x7f0f0186

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyPanel:Landroid/view/View;

    .line 560
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->initViewResources()V

    .line 561
    return-void
.end method

.method private updateDialog(I)V
    .locals 15
    .param p1, "rotation"    # I

    .prologue
    .line 247
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 249
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    if-eqz v10, :cond_0

    .line 250
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 258
    .local v9, "window":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 259
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 261
    .local v2, "gravity":I
    packed-switch p1, :pswitch_data_0

    .line 390
    :goto_0
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 391
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 392
    invoke-virtual {v9, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 394
    .end local v2    # "gravity":I
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "window":Landroid/view/Window;
    :cond_0
    return-void

    .line 263
    .restart local v2    # "gravity":I
    .restart local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "window":Landroid/view/Window;
    :pswitch_0
    const/16 v2, 0x33

    .line 264
    const v10, 0x7f0b0034

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 265
    const v10, 0x7f0d00db

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 266
    const v10, 0x7f0d00dc

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 267
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 268
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00da

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 269
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyPanel:Landroid/view/View;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00d8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00da

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 271
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 272
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 273
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 274
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00d8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00da

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 276
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 278
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v6, "muteLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 280
    const/16 v10, 0x11

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 281
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 283
    .local v7, "normalLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 284
    const/16 v10, 0x11

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 285
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v0, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 287
    .local v0, "disturbLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    const/16 v10, 0x11

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 289
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mItemVerticalImgLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v10}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemImgLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 292
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mItemVerticalTextLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v10}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemTextlayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "disturbLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "muteLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "normalLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_1
    const/16 v2, 0x53

    .line 296
    const v10, 0x7f0b0036

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 297
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00dc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 298
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 299
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00da

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 300
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 301
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyPanel:Landroid/view/View;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00da

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00d8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 303
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 304
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 305
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 306
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00da

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00d8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 308
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00eb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00eb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 310
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00e0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, -0x1

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    .local v1, "frameLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00e5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 312
    const/16 v10, 0x11

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 313
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v3, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v3, "itemHorizontalImgLayoutParam":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x1

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 319
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v4, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 322
    .local v4, "itemHorizontalTextLayoutParam":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x1

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 323
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 325
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemImgLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 326
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemTextlayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 329
    .end local v1    # "frameLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "itemHorizontalImgLayoutParam":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "itemHorizontalTextLayoutParam":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_2
    const/16 v2, 0x55

    .line 330
    const v10, 0x7f0b0035

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 331
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 332
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00dc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 333
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 334
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00da

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 335
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyPanel:Landroid/view/View;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00d8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00da

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 337
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 338
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 339
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 340
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00d8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00da

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 344
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    .restart local v1    # "frameLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 346
    const/16 v10, 0x11

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 347
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mItemVerticalImgLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v10}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemImgLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 352
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mItemVerticalTextLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v10}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemTextlayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 355
    .end local v1    # "frameLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_3
    const/16 v2, 0x35

    .line 356
    const v10, 0x7f0b0037

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 357
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00dc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 359
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00da

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 360
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 361
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyPanel:Landroid/view/View;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00da

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00d8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 363
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 364
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 365
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 366
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00da

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00d8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 368
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mThreeKeyItemPanel:Landroid/view/ViewGroup;

    check-cast v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00eb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00eb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 370
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00e0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, -0x1

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 371
    .restart local v1    # "frameLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00e5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 372
    const/16 v10, 0x11

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 373
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mMuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mNormalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v10, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDoNotDisturbLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v3, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 378
    .restart local v3    # "itemHorizontalImgLayoutParam":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x1

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 379
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 381
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v4, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 382
    .restart local v4    # "itemHorizontalTextLayoutParam":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x1

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 383
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00e8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 385
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemImgLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 386
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setItemTextlayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 409
    sget-boolean v0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "ThreeKeyPanel"

    const-string v1, "updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 430
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 418
    :cond_2
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mLastThreeKeyState:I

    if-eqz v0, :cond_3

    .line 419
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->resetImage()V

    .line 420
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->resetText()V

    .line 422
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCurrentThreeKeyState:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->findView(I)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mLastThreeKeyState:I

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->findView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->performAnimOnTv(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 423
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->performAnimOnIv()V

    .line 429
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->resetTimeout()V

    goto :goto_0

    .line 425
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->resetImage()V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->animView()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mLastThreeKeyState:I

    .line 234
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->switchLanguage()V

    .line 239
    return-void
.end method

.method public onStateChanged(Z)V
    .locals 1
    .param p1, "showThreeKeyPanel"    # Z

    .prologue
    .line 626
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCurrentThreeKeyState:I

    iput v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mLastThreeKeyState:I

    .line 627
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->getCurrentThreeKeyState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mCurrentThreeKeyState:I

    .line 630
    iget-boolean v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mInitAfterReboot:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 631
    iget v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->updateDialog(I)V

    .line 632
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->updateView()V

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mInitAfterReboot:Z

    goto :goto_0
.end method

.method public setInitAfterReboot(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mInitAfterReboot:Z

    .line 214
    return-void
.end method
