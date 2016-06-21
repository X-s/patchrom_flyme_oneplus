.class public Lcom/android/systemui_ex/plugin/LSState;
.super Ljava/lang/Object;
.source "LSState.java"

# interfaces
.implements Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/plugin/LSState$MyUIHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui_ex/plugin/LSState;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final WHAT_UI_INIT:I

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field public final mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

.field public final mDozeModeCtrl:Lcom/android/systemui_ex/plugin/DozeModeCtrl;

.field private mInit:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mPhonstatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field public final mPreventModeCtrl:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/android/systemui_ex/plugin/LSState;->DEBUG:Z

    .line 27
    const-string v0, "LSState"

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->TAG:Ljava/lang/String;

    .line 28
    iput v2, p0, Lcom/android/systemui_ex/plugin/LSState;->WHAT_UI_INIT:I

    .line 33
    iput-boolean v3, p0, Lcom/android/systemui_ex/plugin/LSState;->mInit:Z

    .line 34
    new-instance v0, Lcom/android/systemui_ex/plugin/LSState$MyUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/plugin/LSState$MyUIHandler;-><init>(Lcom/android/systemui_ex/plugin/LSState;Lcom/android/systemui_ex/plugin/LSState$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mUIHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    invoke-direct {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    .line 40
    new-instance v0, Lcom/android/systemui_ex/plugin/DozeModeCtrl;

    invoke-direct {v0}, Lcom/android/systemui_ex/plugin/DozeModeCtrl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mDozeModeCtrl:Lcom/android/systemui_ex/plugin/DozeModeCtrl;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui_ex/plugin/BaseCtrl;

    iget-object v1, p0, Lcom/android/systemui_ex/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/systemui_ex/plugin/LSState;->mDozeModeCtrl:Lcom/android/systemui_ex/plugin/DozeModeCtrl;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .line 94
    new-instance v0, Lcom/android/systemui_ex/plugin/LSState$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/plugin/LSState$1;-><init>(Lcom/android/systemui_ex/plugin/LSState;)V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 66
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui_ex/plugin/LSState;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/android/systemui_ex/plugin/LSState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui_ex/plugin/LSState;->sInstance:Lcom/android/systemui_ex/plugin/LSState;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/systemui_ex/plugin/LSState;

    invoke-direct {v0}, Lcom/android/systemui_ex/plugin/LSState;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/plugin/LSState;->sInstance:Lcom/android/systemui_ex/plugin/LSState;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/plugin/LSState;->sInstance:Lcom/android/systemui_ex/plugin/LSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LSState thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "handerTread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    .line 180
    .end local v0    # "handerTread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    monitor-exit p0

    return-object v1

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhoneStatusBar()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    return-object v0
.end method

.method public getStatusBarKeyguardViewManager()Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v5, p0, Lcom/android/systemui_ex/plugin/LSState;->mInit:Z

    if-nez v5, :cond_2

    .line 71
    const-string v5, "LSState"

    const-string v6, "init"

    invoke-static {v5, v6}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/android/systemui_ex/plugin/LSState;->mContainer:Landroid/view/ViewGroup;

    .line 73
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui_ex/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    iput-object p3, p0, Lcom/android/systemui_ex/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 75
    iget-object v5, p0, Lcom/android/systemui_ex/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    .line 76
    .local v1, "bootCmp":Z
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui_ex/plugin/LSState;->mInit:Z

    .line 77
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/LSState;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/LSState;->getNonUILooper()Landroid/os/Looper;

    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 82
    .local v2, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v2, p0}, Lcom/android/systemui_ex/plugin/BaseCtrl;->setCallback(Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;)V

    .line 84
    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->init(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/BaseCtrl;->startCtrl()V

    .line 81
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/systemui_ex/plugin/LSState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 91
    .end local v0    # "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    .end local v1    # "bootCmp":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    monitor-exit p0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 143
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onBackPressed()V

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 167
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onControlAction(Lcom/android/systemui_ex/plugin/BaseCtrl;ILjava/lang/Object;)V
    .locals 0
    .param p1, "ctrl"    # Lcom/android/systemui_ex/plugin/BaseCtrl;
    .param p2, "action"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 199
    return-void
.end method

.method public onDozePulsing()V
    .locals 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 159
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onDozePulsing()V

    .line 158
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onVolumeUpPressed()V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 151
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onVolumeUpPressed()V

    .line 150
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 135
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method
