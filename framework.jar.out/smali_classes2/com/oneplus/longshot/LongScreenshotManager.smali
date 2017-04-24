.class public final Lcom/oneplus/longshot/LongScreenshotManager;
.super Ljava/lang/Object;
.source "LongScreenshotManager.java"


# static fields
.field public static final NAVIGATIONBAR_VISIBLE:Ljava/lang/String; = "navigationbar_visible"

.field public static final STATUSBAR_VISIBLE:Ljava/lang/String; = "statusbar_visible"

.field private static final TAG:Ljava/lang/String; = "Longshot.Manager"

.field private static sInstance:Lcom/oneplus/longshot/LongScreenshotManager;


# instance fields
.field private final mService:Lcom/oneplus/longshot/ILongScreenshotManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "longshot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/oneplus/longshot/LongScreenshotManager;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/oneplus/longshot/LongScreenshotManager;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    iget-object v0, v0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/oneplus/longshot/LongScreenshotManager;

    invoke-direct {v0}, Lcom/oneplus/longshot/LongScreenshotManager;-><init>()V

    sput-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    .line 61
    :cond_1
    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static peekInstance()Lcom/oneplus/longshot/LongScreenshotManager;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    return-object v0
.end method


# virtual methods
.method public isLongshotHandleState()Z
    .locals 3

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v2}, Lcom/oneplus/longshot/ILongScreenshotManager;->isLongshotHandleState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :cond_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMode()Z
    .locals 3

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v2}, Lcom/oneplus/longshot/ILongScreenshotManager;->isLongshotMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :cond_0
    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMoveState()Z
    .locals 3

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v2}, Lcom/oneplus/longshot/ILongScreenshotManager;->isLongshotMoveState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 144
    :cond_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyLongshotScroll(Z)V
    .locals 2
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v1, p1}, Lcom/oneplus/longshot/ILongScreenshotManager;->notifyLongshotScroll(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v1, p1}, Lcom/oneplus/longshot/ILongScreenshotManager;->registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public takeLongshot(ZZ)V
    .locals 2
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v1, p1, p2}, Lcom/oneplus/longshot/ILongScreenshotManager;->takeLongshot(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v1, p1}, Lcom/oneplus/longshot/ILongScreenshotManager;->unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
