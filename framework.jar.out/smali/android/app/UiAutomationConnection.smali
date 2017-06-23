.class public final Landroid/app/UiAutomationConnection;
.super Landroid/app/IUiAutomationConnection$Stub;
.source "UiAutomationConnection.java"


# static fields
.field private static final INITIAL_FROZEN_ROTATION_UNSPECIFIED:I = -0x1


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mInitialFrozenRotation:I

.field private mIsShutdown:Z

.field private final mLock:Ljava/lang/Object;

.field private mOwningUid:I

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mToken:Landroid/os/Binder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/IUiAutomationConnection$Stub;-><init>()V

    .line 58
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    .line 61
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 64
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    return-void
.end method

.method private isConnectedLocked()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .prologue
    .line 323
    const-string v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 325
    .local v1, "manager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 326
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, -0x1

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 327
    const/16 v3, 0x10

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 328
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x12

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 330
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 337
    :try_start_0
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v3, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 338
    iput-object p1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return-void

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error while registering UiTestAutomationService."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private restoreRotationStateLocked()V
    .locals 2

    .prologue
    .line 372
    :try_start_0
    iget v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 384
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private storeRotationStateLocked()V
    .locals 1

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private throwIfCalledByNotTrustedUidLocked()V
    .locals 3

    .prologue
    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 404
    .local v0, "callingUid":I
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 406
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling from not trusted UID!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    return-void
.end method

.method private throwIfShutdownLocked()V
    .locals 2

    .prologue
    .line 391
    iget-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    return-void
.end method

.method private unregisterUiTestAutomationServiceLocked()V
    .locals 4

    .prologue
    .line 345
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 350
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v2}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 351
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error while unregistering UiTestAutomationService"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 4

    .prologue
    .line 203
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 204
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 205
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 206
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 207
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 210
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/view/SurfaceControl;->clearAnimationFrameStats()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    return-void

    .line 207
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 212
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 166
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 167
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 168
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 169
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 172
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(I)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 173
    .local v2, "token":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 174
    const/4 v3, 0x0

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v3

    .line 169
    .end local v0    # "identity":J
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 176
    .restart local v0    # "identity":J
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    :try_start_3
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 3
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 85
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already connected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 89
    invoke-direct {p0, p1}, Landroid/app/UiAutomationConnection;->registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 90
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->storeRotationStateLocked()V

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 98
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 99
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already disconnected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 103
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->unregisterUiTestAutomationServiceLocked()V

    .line 104
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->restoreRotationStateLocked()V

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 269
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 270
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 271
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 272
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    new-instance v0, Landroid/app/UiAutomationConnection$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/UiAutomationConnection$1;-><init>(Landroid/app/UiAutomationConnection;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 305
    .local v0, "streamReader":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 306
    return-void

    .line 272
    .end local v0    # "streamReader":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 5

    .prologue
    .line 218
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 219
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 220
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 221
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 222
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 225
    .local v0, "identity":J
    :try_start_1
    new-instance v2, Landroid/view/WindowAnimationFrameStats;

    invoke-direct {v2}, Landroid/view/WindowAnimationFrameStats;-><init>()V

    .line 226
    .local v2, "stats":Landroid/view/WindowAnimationFrameStats;
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 222
    .end local v0    # "identity":J
    .end local v2    # "stats":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 229
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 185
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 186
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 187
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 188
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(I)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 192
    .local v2, "token":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 193
    const/4 v3, 0x0

    .line 197
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v3

    .line 188
    .end local v0    # "identity":J
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 195
    .restart local v0    # "identity":J
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    :try_start_3
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 197
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 237
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 238
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 239
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 240
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 243
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    return-void

    .line 240
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 245
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 110
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 111
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 112
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 113
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 114
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    .line 117
    .local v2, "mode":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 119
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 114
    .end local v0    # "identity":J
    .end local v2    # "mode":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 115
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    .restart local v0    # "identity":J
    .restart local v2    # "mode":I
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 253
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 254
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 255
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 256
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 259
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 263
    return-void

    .line 256
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 261
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRotation(I)Z
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    .line 127
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 128
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 129
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 130
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 131
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 134
    .local v0, "identity":J
    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    .line 135
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    :goto_0
    const/4 v2, 0x1

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    :goto_1
    return v2

    .line 131
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 137
    .restart local v0    # "identity":J
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    const/4 v2, 0x0

    goto :goto_1

    .line 143
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 314
    :cond_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    .line 316
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/app/UiAutomationConnection;->disconnect()V

    .line 319
    :cond_1
    monitor-exit v1

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public takeScreenshot(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 150
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 151
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 152
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 153
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V

    .line 154
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    .local v0, "identity":J
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 154
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 159
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
