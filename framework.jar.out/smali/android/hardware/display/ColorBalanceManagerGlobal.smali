.class public final Landroid/hardware/display/ColorBalanceManagerGlobal;
.super Ljava/lang/Object;
.source "ColorBalanceManagerGlobal.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorBalanceManagerGlobal"

.field private static sInstance:Landroid/hardware/display/ColorBalanceManagerGlobal;


# instance fields
.field private final mCBM:Landroid/hardware/display/IColorBalanceManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/hardware/display/IColorBalanceManager;)V
    .locals 1
    .param p1, "ndm"    # Landroid/hardware/display/IColorBalanceManager;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    .line 16
    return-void
.end method

.method public static getInstance()Landroid/hardware/display/ColorBalanceManagerGlobal;
    .locals 4

    .prologue
    .line 23
    const-class v2, Landroid/hardware/display/ColorBalanceManagerGlobal;

    monitor-enter v2

    .line 24
    :try_start_0
    sget-object v1, Landroid/hardware/display/ColorBalanceManagerGlobal;->sInstance:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-nez v1, :cond_0

    .line 25
    const-string/jumbo v1, "nightdisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 26
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 27
    new-instance v1, Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-static {v0}, Landroid/hardware/display/IColorBalanceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorBalanceManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/display/ColorBalanceManagerGlobal;-><init>(Landroid/hardware/display/IColorBalanceManager;)V

    sput-object v1, Landroid/hardware/display/ColorBalanceManagerGlobal;->sInstance:Landroid/hardware/display/ColorBalanceManagerGlobal;

    .line 32
    :cond_0
    :goto_0
    sget-object v1, Landroid/hardware/display/ColorBalanceManagerGlobal;->sInstance:Landroid/hardware/display/ColorBalanceManagerGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 29
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "getService ERROR!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public sendMsg(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IColorBalanceManager;->sendMsg(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    return-void

    .line 44
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setActiveMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 55
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IColorBalanceManager;->setActiveMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    return-void

    .line 59
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setColorBalance(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 85
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IColorBalanceManager;->setColorBalance(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    return-void

    .line 89
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Landroid/hardware/display/ColorBalanceManagerGlobal;->mCBM:Landroid/hardware/display/IColorBalanceManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IColorBalanceManager;->setDefaultMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    return-void

    .line 74
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ColorBalanceManagerGlobal"

    const-string/jumbo v3, "mCBM null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
