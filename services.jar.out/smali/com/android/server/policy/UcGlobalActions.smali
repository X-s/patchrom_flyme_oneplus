.class public Lcom/android/server/policy/UcGlobalActions;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_HIGHT:I = 0x780

.field private static final DISPLAY_WIDTH:I = 0x438

.field private static final TAG:Ljava/lang/String; = "UcGlobalActions"

.field private static final TURBO_BOOST_TIMEOUT:I = 0x3e8


# instance fields
.field private isShuttingDown:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mFingerScrollView:Lcom/android/server/policy/UcFingerScrollView;

.field private mFingerScrollViewListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private mIconScrollView:Lcom/android/server/policy/UcIconScrollView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsWindowAttached:Z

.field private mLayoutFinished:Z

.field private mNeedPhaseIn:Z

.field private mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;

.field private mOverlayScrollViewListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

.field private mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

.field private mPowerView:Landroid/view/View;

.field private mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

.field private mRotation:I

.field private mScreenshotScrollView:Lcom/android/server/policy/UcScreenshotScrollView;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mHandler:Landroid/os/Handler;

    .line 80
    iput v2, p0, Lcom/android/server/policy/UcGlobalActions;->mRotation:I

    .line 81
    iput-boolean v2, p0, Lcom/android/server/policy/UcGlobalActions;->mIsWindowAttached:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/server/policy/UcGlobalActions;->isShuttingDown:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/server/policy/UcGlobalActions;->mNeedPhaseIn:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/server/policy/UcGlobalActions;->mLayoutFinished:Z

    .line 209
    new-instance v1, Lcom/android/server/policy/UcGlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcGlobalActions$1;-><init>(Lcom/android/server/policy/UcGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/android/server/policy/UcGlobalActions;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/server/policy/UcGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 91
    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 92
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 93
    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/policy/UcGlobalActions;->isShuttingDown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/UcGlobalActions;->detach()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/UcGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/policy/UcGlobalActions;->mIsWindowAttached:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/policy/UcGlobalActions;->mIsWindowAttached:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/policy/UcGlobalActions;->mLayoutFinished:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/policy/UcGlobalActions;->mLayoutFinished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcFingerScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mFingerScrollView:Lcom/android/server/policy/UcFingerScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcOverlayScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcIconScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mIconScrollView:Lcom/android/server/policy/UcIconScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcScreenshotScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mScreenshotScrollView:Lcom/android/server/policy/UcScreenshotScrollView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcGlobalActions;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/UcGlobalActions;->onShutDown()V

    return-void
.end method

.method private attach()V
    .locals 7

    .prologue
    const v6, 0x302001d

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 159
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 160
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 162
    const v0, 0x10500

    .line 166
    .local v0, "flags":I
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 167
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 168
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 169
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 170
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 173
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/UcGlobalActions;->mRotation:I

    .line 175
    iget v2, p0, Lcom/android/server/policy/UcGlobalActions;->mRotation:I

    packed-switch v2, :pswitch_data_0

    .line 192
    :pswitch_0
    const-string v2, "UcGlobalActions"

    const-string v3, "impossible to go this condition, but still need to have layout to avoid crash"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 194
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/UcPowerViewContainer;

    iput-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    invoke-direct {p0, v2}, Lcom/android/server/policy/UcGlobalActions;->initView(Landroid/view/View;)V

    .line 203
    invoke-direct {p0}, Lcom/android/server/policy/UcGlobalActions;->initViewEvents()V

    .line 206
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void

    .line 177
    :pswitch_1
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 178
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/UcPowerViewContainer;

    iput-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    goto :goto_0

    .line 182
    :pswitch_2
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 183
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x302001c

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/UcPowerViewContainer;

    iput-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    goto :goto_0

    .line 187
    :pswitch_3
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 188
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x302001b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/UcPowerViewContainer;

    iput-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private awakenIfNecessary()V
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UcGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while awaken dream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-boolean v0, p0, Lcom/android/server/policy/UcGlobalActions;->isShuttingDown:Z

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/UcGlobalActions;->mIsWindowAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    .line 261
    iput-boolean v2, p0, Lcom/android/server/policy/UcGlobalActions;->mIsWindowAttached:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/server/policy/UcGlobalActions;->mLayoutFinished:Z

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/UcGlobalActions$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcGlobalActions$4;-><init>(Lcom/android/server/policy/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 302
    const v0, 0x30a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/UcFingerScrollView;

    iput-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mFingerScrollView:Lcom/android/server/policy/UcFingerScrollView;

    .line 303
    const v0, 0x30a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/UcIconScrollView;

    iput-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mIconScrollView:Lcom/android/server/policy/UcIconScrollView;

    .line 304
    const v0, 0x30a0032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/UcOverlayScrollView;

    iput-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;

    .line 305
    const v0, 0x30a0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/UcScreenshotScrollView;

    iput-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mScreenshotScrollView:Lcom/android/server/policy/UcScreenshotScrollView;

    .line 313
    new-instance v0, Lcom/android/server/policy/UcGlobalActions$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/UcGlobalActions$5;-><init>(Lcom/android/server/policy/UcGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mFingerScrollViewListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    .line 335
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mFingerScrollView:Lcom/android/server/policy/UcFingerScrollView;

    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mFingerScrollViewListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/UcFingerScrollView;->setScrollCallBack(Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;)V

    .line 337
    new-instance v0, Lcom/android/server/policy/UcGlobalActions$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/UcGlobalActions$6;-><init>(Lcom/android/server/policy/UcGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollViewListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    .line 347
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;

    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollViewListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/UcOverlayScrollView;->setScrollCallBack(Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;)V

    .line 348
    return-void
.end method

.method private initViewEvents()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    new-instance v1, Lcom/android/server/policy/UcGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcGlobalActions$2;-><init>(Lcom/android/server/policy/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/UcPowerViewContainer;->setOnAttachedToWindowListener(Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    new-instance v1, Lcom/android/server/policy/UcGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcGlobalActions$3;-><init>(Lcom/android/server/policy/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/UcPowerViewContainer;->setOnBackListener(Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;)V

    .line 282
    return-void
.end method

.method private onShutDown()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/server/policy/UcGlobalActions;->isShuttingDown:Z

    .line 245
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_quickboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 248
    .local v0, "quickbootEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/android/server/policy/UcGlobalActions;->startQuickBoot()V

    .line 254
    :goto_1
    return-void

    .end local v0    # "quickbootEnabled":Z
    :cond_0
    move v0, v1

    .line 245
    goto :goto_0

    .line 253
    .restart local v0    # "quickbootEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/UcGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2, v1, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(ZZ)V

    goto :goto_1
.end method

.method private startQuickBoot()V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/UcGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public showDialog(ZZ)V
    .locals 1
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions;->mPowerViewContainer:Lcom/android/server/policy/UcPowerViewContainer;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/UcGlobalActions;->mNeedPhaseIn:Z

    .line 129
    invoke-direct {p0}, Lcom/android/server/policy/UcGlobalActions;->awakenIfNecessary()V

    .line 130
    invoke-direct {p0}, Lcom/android/server/policy/UcGlobalActions;->attach()V

    .line 133
    :cond_0
    return-void
.end method
