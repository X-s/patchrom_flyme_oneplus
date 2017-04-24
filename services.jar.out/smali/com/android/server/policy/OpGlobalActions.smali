.class public Lcom/android/server/policy/OpGlobalActions;
.super Ljava/lang/Object;
.source "OpGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xc8

    sput v0, Lcom/android/server/policy/OpGlobalActions;->RIPPLE_DELAY:I

    .line 83
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v2, 0x0

    .line 96
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

    .line 127
    new-instance v1, Lcom/android/server/policy/OpGlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpGlobalActions$1;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 99
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 100
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Lcom/android/server/policy/OpGlobalActions;->initAccessibilityEnabler()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/OpGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/OpGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->detach()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/OpGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/OpGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/OpGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/policy/OpGlobalActions;->mIntercepted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/OpGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OpGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/policy/OpGlobalActions;->mIntercepted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/OpGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    return-object v0
.end method

.method private detach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 301
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 302
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 304
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 305
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 307
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 308
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 310
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 311
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 322
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    iget v1, p0, Lcom/android/server/policy/OpGlobalActions;->mUiOptions:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setSystemUiVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 324
    iput-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto :goto_0
.end method

.method public static getActionState()Lcom/android/server/policy/OpGlobalActions$ActionState;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    return-object v0
.end method

.method private initGlobalActionEntries()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const v11, 0x50a0030

    const v10, 0x5020002

    .line 333
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;

    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12, v0}, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;-><init>(ILandroid/content/Context;)V

    .line 334
    .local v1, "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 335
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    const v2, 0x5020001

    const v3, 0x50a0036

    const v4, 0x50a002f

    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    const/16 v9, 0x264

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPowerOff:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 342
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;

    .end local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12, v0}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;-><init>(ILandroid/content/Context;)V

    .line 343
    .restart local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 344
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    const v3, 0x50a0031

    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->REBOOT:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    const/16 v9, 0x402

    move v2, v10

    move v4, v11

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 347
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;

    .end local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    const v0, 0x5020005

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionIcon;-><init>(ILandroid/content/Context;)V

    .line 352
    .restart local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 353
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    const v3, 0x50a0032

    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->RECOVERY:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    const/16 v9, 0x333

    move v2, v10

    move v4, v11

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 356
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v13}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 361
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;

    .end local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    const v0, 0x5020004

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionIcon;-><init>(ILandroid/content/Context;)V

    .line 362
    .restart local v1    # "icon":Lcom/android/server/policy/ui/OpGlobalActionIcon;
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 363
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    const v3, 0x50a0033

    sget-object v7, Lcom/android/server/policy/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/server/policy/OpGlobalActions$Action;

    iget-object v8, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    const/16 v9, 0x489

    move v2, v10

    move v4, v11

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v13}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 369
    return-void
.end method

.method private initView()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const v6, 0x5030004

    const/4 v7, 0x0

    .line 231
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 232
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x7d9

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 234
    const v1, 0x10500

    .line 238
    .local v1, "flags":I
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 239
    const/4 v5, -0x3

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 240
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 241
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 242
    const/16 v5, 0x11

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 243
    const-string v5, "PowerOff"

    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/OpGlobalActions;->mRotation:I

    .line 247
    iget v5, p0, Lcom/android/server/policy/OpGlobalActions;->mRotation:I

    packed-switch v5, :pswitch_data_0

    .line 269
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 270
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    .line 276
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-interface {v5, v6, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-virtual {v5}, Lcom/android/server/policy/ui/OpGlobalActionsView;->getSystemUiVisibility()I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/OpGlobalActions;->mUiOptions:I

    .line 280
    .local v4, "uiOptions":I
    or-int/lit8 v4, v4, 0x2

    .line 281
    or-int/lit16 v4, v4, 0x1000

    .line 282
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setSystemUiVisibility(I)V

    .line 285
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    const v6, 0x50b0006

    invoke-virtual {v5, v6}, Lcom/android/server/policy/ui/OpGlobalActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionPanel:Landroid/widget/FrameLayout;

    .line 286
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->initGlobalActionEntries()V

    .line 289
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    sget-object v6, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/ui/OpGlobalActionsView;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    .line 290
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 291
    .local v0, "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    sget-object v5, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v0, v5}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    goto :goto_1

    .line 249
    .end local v0    # "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "uiOptions":I
    :pswitch_0
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 250
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto :goto_0

    .line 254
    :pswitch_1
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 255
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x5030003

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto :goto_0

    .line 259
    :pswitch_2
    const/16 v5, 0x9

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 260
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto :goto_0

    .line 264
    :pswitch_3
    const/16 v5, 0x8

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 265
    iget-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x5030002

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/ui/OpGlobalActionsView;

    iput-object v5, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    goto/16 :goto_0

    .line 293
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "uiOptions":I
    :cond_0
    return-void

    .line 247
    nop

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
    .line 191
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    new-instance v1, Lcom/android/server/policy/OpGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpGlobalActions$2;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setOnQuitListener(Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    new-instance v1, Lcom/android/server/policy/OpGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpGlobalActions$3;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionsView;->setOnViewTouchListener(Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;)V

    .line 227
    return-void
.end method

.method private isAdvancedRebootEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 453
    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_reboot"

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
    .line 176
    new-instance v0, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-direct {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 179
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->initView()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->initViewEvents()V

    .line 184
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 188
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    return-void
.end method


# virtual methods
.method public initAccessibilityEnabler()V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/OpGlobalActions$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OpGlobalActions$4;-><init>(Lcom/android/server/policy/OpGlobalActions;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 468
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mAnimations:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OpGlobalActions;->mActionReboot:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionRecovery:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateShowAdv()V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/OpGlobalActions;->mActionBootloader:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateShowAdv()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    return-void
.end method

.method public onClicked(Lcom/android/server/policy/OpGlobalActions$Action;)V
    .locals 7
    .param p1, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;

    .prologue
    const/4 v6, 0x0

    .line 374
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_1

    .line 446
    :cond_0
    return-void

    .line 380
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v6, v5}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 383
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_6

    .line 384
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->isAdvancedRebootEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/policy/OpGlobalActions;->mKeyguardShowingAndSecure:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/policy/OpGlobalActions;->mIsDeviceProvisioned:Z

    if-nez v4, :cond_4

    .line 385
    :cond_2
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 441
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mActionView:Lcom/android/server/policy/ui/OpGlobalActionsView;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v4, v5}, Lcom/android/server/policy/ui/OpGlobalActionsView;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    .line 443
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mGlobalActionEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .line 444
    .local v1, "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V

    goto :goto_1

    .line 389
    .end local v1    # "entry":Lcom/android/server/policy/ui/OpGlobalActionEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_5

    .line 391
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    goto :goto_0

    .line 395
    :cond_5
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    goto :goto_0

    .line 399
    :cond_6
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_7

    .line 400
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    goto :goto_0

    .line 402
    :cond_7
    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-eq v4, v5, :cond_8

    sget-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v5, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v4, v5, :cond_3

    .line 403
    :cond_8
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v4, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 405
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->setShutdownDialogEnabled(Z)V

    .line 406
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_9

    .line 408
    iget-object v4, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 437
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/OpGlobalActions;->isShuttingDown:Z

    goto :goto_0

    .line 409
    :cond_9
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->RECOVERY:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_a

    .line 412
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 414
    .local v3, "pm":Landroid/os/IPowerManager;
    const/4 v4, 0x0

    const-string v5, "recovery"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 415
    .end local v3    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "OpGlobalActions"

    const-string v5, "PowerManager service died!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    sget-object v4, Lcom/android/server/policy/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v4, :cond_b

    .line 421
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 423
    .restart local v3    # "pm":Landroid/os/IPowerManager;
    const/4 v4, 0x0

    const-string v5, "bootloader"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 424
    .end local v3    # "pm":Landroid/os/IPowerManager;
    :catch_1
    move-exception v0

    .line 425
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "OpGlobalActions"

    const-string v5, "PowerManager service died!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b
    :try_start_2
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 432
    .restart local v3    # "pm":Landroid/os/IPowerManager;
    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 433
    .end local v3    # "pm":Landroid/os/IPowerManager;
    :catch_2
    move-exception v0

    .line 434
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "OpGlobalActions"

    const-string v5, "PowerManager service died!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onLongPressed(Lcom/android/server/policy/OpGlobalActions$Action;)Z
    .locals 4
    .param p1, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;

    .prologue
    const/4 v1, 0x1

    .line 477
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne p1, v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 479
    .local v0, "um":Landroid/os/UserManager;
    const-string v2, "no_safe_boot"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 482
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->detach()V

    .line 486
    .end local v0    # "um":Landroid/os/UserManager;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMissClicked()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->detach()V

    .line 473
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowingAndSecure"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/server/policy/OpGlobalActions;->mKeyguardShowingAndSecure:Z

    .line 166
    iput-boolean p2, p0, Lcom/android/server/policy/OpGlobalActions;->mIsDeviceProvisioned:Z

    .line 167
    sget-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v0, v1, :cond_0

    .line 168
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/server/policy/OpGlobalActions;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 170
    invoke-direct {p0}, Lcom/android/server/policy/OpGlobalActions;->show()V

    .line 172
    :cond_0
    return-void
.end method
