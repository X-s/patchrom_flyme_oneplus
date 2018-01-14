.class public Lcom/android/server/policy/OpGlobalActions;
.super Ljava/lang/Object;
.source "OpGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OpGlobalActions$1;,
        Lcom/android/server/policy/OpGlobalActions$Action;,
        Lcom/android/server/policy/OpGlobalActions$ActionState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DBG_UI:Z = false

.field public static RIPPLE_DELAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpGlobalActions"

.field private static mState:Lcom/android/server/policy/OpGlobalActions$ActionState;


# instance fields
.field private isShuttingDown:Z

.field private mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

.field private mActionPanel:Landroid/widget/FrameLayout;

.field private mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

.field private mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

.field private mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

.field private mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

.field private mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelActionViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mGlobalActionEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/ui/OpGlobalActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntercepted:Z

.field private mIsDeviceProvisioned:Z

.field private mKeyguardShowingAndSecure:Z

.field mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field private mRotation:I

.field private mUiOptions:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/OpGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/OpGlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/OpGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/OpGlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/OpGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OpGlobalActions;->mIntercepted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/OpGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpGlobalActions;->mIntercepted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/OpGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->detach()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xc8

    sput v0, Lcom/android/server/policy/OpGlobalActions;->RIPPLE_DELAY:I

    .line 83
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v1, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v1}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 77
    iput v2, p0, Lcom/android/server/policy/OpGlobalActions;->mRotation:I

    .line 78
    iput-boolean v2, p0, Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z

    .line 129
    new-instance v1, Lcom/android/server/policy/OpGlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpGlobalActions$1;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 101
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/android/server/policy/OpGlobalActions;->initAccessibilityEnabler()V

    .line 98
    return-void
.end method

.method private detach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-boolean v0, p0, Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 312
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->updateViewWhenCanceled()V

    .line 315
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 316
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 318
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 319
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 321
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 322
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 324
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 325
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 336
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    iget v1, p0, Lcom/android/server/policy/OpGlobalActions;->mUiOptions:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setSystemUiVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 338
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    .line 306
    :cond_1
    return-void
.end method

.method public static getActionState()Lcom/android/server/policy/OpGlobalActions$ActionState;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    return-object v0
.end method

.method private initGlobalActionEntries()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const v11, 0x50a0032

    const v10, 0x5020009

    .line 347
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;

    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12, v0}, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;-><init>(ILandroid/content/Context;)V

    .line 348
    .local v1, "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 349
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 351
    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 349
    const v2, 0x5020008

    const v3, 0x50a0049

    .line 350
    const v4, 0x50a0031

    .line 351
    const/16 v9, 0x264

    move-object v5, p0

    move-object v6, p0

    .line 349
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 352
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 356
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;

    .end local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12, v0}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;-><init>(ILandroid/content/Context;)V

    .line 357
    .restart local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 358
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 360
    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->REBOOT:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 358
    const v3, 0x50a0042

    .line 360
    const/16 v9, 0x402

    move v2, v10

    move v4, v11

    move-object v5, p0

    move-object v6, p0

    .line 358
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 361
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 365
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;

    .end local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const v2, 0x502000c

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;-><init>(ILandroid/content/Context;)V

    .line 366
    .restart local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 367
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 369
    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->RECOVERY:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 367
    const v3, 0x50a0043

    .line 369
    const/16 v9, 0x333

    move v2, v10

    move v4, v11

    move-object v5, p0

    move-object v6, p0

    .line 367
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v13}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 375
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;

    .end local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const v2, 0x502000b

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;-><init>(ILandroid/content/Context;)V

    .line 376
    .restart local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 377
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 379
    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 377
    const v3, 0x50a0044

    .line 379
    const/16 v9, 0x489

    move v2, v10

    move v4, v11

    move-object v5, p0

    move-object v6, p0

    .line 377
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 380
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v13}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 342
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const v5, 0x5030004

    const/4 v6, 0x0

    .line 239
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 240
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7d9

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 242
    const v4, 0x10500

    .line 246
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 247
    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 248
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 251
    const-string/jumbo v4, "PowerOff"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/OpGlobalActions;->mRotation:I

    .line 255
    iget v4, p0, Lcom/android/server/policy/OpGlobalActions;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 277
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 278
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    .line 284
    :goto_0
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mCancelActionViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 287
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-virtual {v4}, Lcom/android/server/policy/ui/OpGlobalActionsView;->getSystemUiVisibility()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/OpGlobalActions;->mUiOptions:I

    .line 291
    .local v3, "uiOptions":I
    or-int/lit8 v3, v3, 0x2

    .line 292
    or-int/lit16 v3, v3, 0x1000

    .line 293
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-virtual {v4, v3}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setSystemUiVisibility(I)V

    .line 296
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    const v5, 0x50d0006

    invoke-virtual {v4, v5}, Lcom/android/server/policy/ui/OpGlobalActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    .line 297
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->initGlobalActionEntries()V

    .line 300
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v4, v5}, Lcom/android/server/policy/ui/OpGlobalActionsView;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    .line 301
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 302
    .local v0, "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    goto :goto_1

    .line 257
    .end local v0    # "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "uiOptions":I
    :pswitch_0
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 258
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto :goto_0

    .line 262
    :pswitch_1
    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 263
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    .line 264
    const v5, 0x5030003

    .line 263
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto :goto_0

    .line 267
    :pswitch_2
    const/16 v4, 0x9

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 268
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto :goto_0

    .line 272
    :pswitch_3
    const/16 v4, 0x8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 273
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    .line 274
    const v5, 0x5030002

    .line 273
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto/16 :goto_0

    .line 237
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "uiOptions":I
    :cond_0
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initViewEvents()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    new-instance v1, Lcom/android/server/policy/OpGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpGlobalActions$2;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setOnQuitListener(Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    new-instance v1, Lcom/android/server/policy/OpGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpGlobalActions$3;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setOnViewTouchListener(Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;)V

    .line 192
    return-void
.end method

.method private isAdvancedRebootEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 469
    const-string/jumbo v2, "advanced_reboot"

    .line 468
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private show()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-direct {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 181
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->initView()V

    .line 184
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->initViewEvents()V

    .line 186
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 176
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    return-void
.end method

.method private updateViewWhenCanceled()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mCancelActionViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mCancelActionViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-void
.end method


# virtual methods
.method public initAccessibilityEnabler()V
    .locals 3

    .prologue
    .line 473
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    .line 474
    new-instance v2, Lcom/android/server/policy/OpGlobalActions$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OpGlobalActions$4;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    .line 473
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 472
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateShowAdv()V

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateShowAdv()V

    .line 118
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 163
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 114
    return-void
.end method

.method public onClicked(Lcom/android/server/policy/OpGlobalActions$Action;)V
    .locals 7
    .param p1, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;

    .prologue
    const/4 v6, 0x0

    .line 388
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_1

    .line 391
    :cond_0
    return-void

    .line 389
    :cond_1
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-eq v4, v5, :cond_0

    .line 395
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v6, v5}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 398
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_5

    .line 399
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->isAdvancedRebootEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/policy/OpGlobalActions;->mKeyguardShowingAndSecure:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/policy/OpGlobalActions;->mIsDeviceProvisioned:Z

    if-eqz v4, :cond_3

    .line 404
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_4

    .line 406
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 456
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v4, v5}, Lcom/android/server/policy/ui/OpGlobalActionsView;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    .line 458
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 459
    .local v1, "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    goto :goto_1

    .line 400
    .end local v1    # "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    goto :goto_0

    .line 410
    :cond_4
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    goto :goto_0

    .line 414
    :cond_5
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_6

    .line 415
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    goto :goto_0

    .line 417
    :cond_6
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-eq v4, v5, :cond_7

    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_2

    .line 418
    :cond_7
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 420
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->setShutdownDialogEnabled(Z)V

    .line 421
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_8

    .line 423
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 452
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z

    goto :goto_0

    .line 424
    :cond_8
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->RECOVERY:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_9

    .line 428
    :try_start_0
    const-string/jumbo v4, "power"

    .line 427
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 429
    .local v3, "pm":Landroid/os/IPowerManager;
    const-string/jumbo v4, "recovery"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v5, v4, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 430
    .end local v3    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "OpGlobalActions"

    const-string/jumbo v5, "PowerManager service died!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_a

    .line 437
    :try_start_1
    const-string/jumbo v4, "power"

    .line 436
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 438
    .restart local v3    # "pm":Landroid/os/IPowerManager;
    const-string/jumbo v4, "bootloader"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v5, v4, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 439
    .end local v3    # "pm":Landroid/os/IPowerManager;
    :catch_1
    move-exception v0

    .line 440
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "OpGlobalActions"

    const-string/jumbo v5, "PowerManager service died!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :try_start_2
    const-string/jumbo v4, "power"

    .line 445
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 447
    .restart local v3    # "pm":Landroid/os/IPowerManager;
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v5, v4, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 448
    .end local v3    # "pm":Landroid/os/IPowerManager;
    :catch_2
    move-exception v0

    .line 449
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "OpGlobalActions"

    const-string/jumbo v5, "PowerManager service died!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_b
    return-void
.end method

.method public onLongPressed(Lcom/android/server/policy/OpGlobalActions$Action;)Z
    .locals 5
    .param p1, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 491
    sget-object v1, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 493
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 496
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->detach()V

    .line 497
    iput-boolean v3, p0, Lcom/android/server/policy/OpGlobalActions;->mIntercepted:Z

    .line 499
    :cond_0
    return v4

    .line 501
    .end local v0    # "um":Landroid/os/UserManager;
    :cond_1
    return v3
.end method

.method public onMissClicked()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->detach()V

    .line 485
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowingAndSecure"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/server/policy/OpGlobalActions;->mKeyguardShowingAndSecure:Z

    .line 168
    iput-boolean p2, p0, Lcom/android/server/policy/OpGlobalActions;->mIsDeviceProvisioned:Z

    .line 169
    sget-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v0, v1, :cond_0

    .line 170
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 172
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->show()V

    .line 166
    :cond_0
    return-void
.end method
