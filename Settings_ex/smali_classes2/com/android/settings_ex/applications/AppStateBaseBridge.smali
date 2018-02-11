.class public abstract Lcom/android/settings_ex/applications/AppStateBaseBridge;
.super Ljava/lang/Object;
.source "AppStateBaseBridge.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;,
        Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;,
        Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;
    }
.end annotation


# instance fields
.field protected final mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field protected final mAppState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field protected final mCallback:Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

.field protected final mHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

.field protected final mMainHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V
    .locals 3
    .param p1, "appState"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p2, "callback"    # Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppState:Lcom/android/settings_exlib/applications/ApplicationsState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 42
    iput-object p2, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

    .line 46
    new-instance v2, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppState:Lcom/android/settings_exlib/applications/ApplicationsState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_1
    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;-><init>(Lcom/android/settings_ex/applications/AppStateBaseBridge;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    .line 48
    new-instance v0, Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings_ex/applications/AppStateBaseBridge;Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$MainHandler;

    .line 39
    return-void

    :cond_0
    move-object v0, v1

    .line 41
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public forceUpdate(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    return-void
.end method

.method protected abstract loadAllExtraInfo()V
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 74
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 69
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 56
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->release()V

    .line 60
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 51
    return-void
.end method

.method protected abstract updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method
