.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$1;,
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$SettingsObserver;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$UserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private final mAllSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field final mICallback:Landroid/os/IBinder;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/media/MediaSessionService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "MediaSessionService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mICallback:Landroid/os/IBinder;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    .line 108
    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 109
    new-instance v1, Lcom/android/server/media/MediaSessionStack;

    invoke-direct {v1}, Lcom/android/server/media/MediaSessionStack;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 110
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "handleMediaEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/media/session/ISessionCallback;
    .param p6, "x6"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/media/session/IActiveSessionsListener;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 2
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 12
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 427
    new-instance v1, Lcom/android/server/media/MediaSessionRecord;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V

    .line 430
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    :try_start_0
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, v1}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 438
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;

    move-result-object v11

    .line 439
    .local v11, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {v11, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->addSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 441
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 443
    sget-boolean v2, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 444
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created session for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    return-object v1

    .line 431
    .end local v11    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catch_0
    move-exception v10

    .line 432
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media Session owner died prematurely."

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 6
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v5, 0x0

    .line 290
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    .line 291
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 292
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->removeSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 297
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    .line 306
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 307
    return-void

    .line 301
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/media/MediaSessionService$UserRecord;

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->stopLocked()V

    .line 276
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->destroyLocked()V

    .line 277
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mUserId:I
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$700(Lcom/android/server/media/MediaSessionService$UserRecord;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 278
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .locals 2
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    .prologue
    .line 335
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/media/MediaSessionService;->isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing permission to control media."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "packageName may not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    .line 315
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 316
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    return-void

    .line 315
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "packageName is not owned by the calling process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private enforceSystemUiPermission(Ljava/lang/String;II)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 356
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    :cond_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system ui may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 460
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 464
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 459
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 464
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 130
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 131
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    return-object v1
.end method

.method private getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 451
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-nez v0, :cond_0

    .line 452
    new-instance v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/media/MediaSessionService$UserRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/content/Context;I)V

    .line 453
    .restart local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    :cond_0
    return-object v0
.end method

.method private isCurrentVolumeController(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    invoke-virtual {v1}, Landroid/media/AudioManagerInternal;->getVolumeControllerUid()I

    move-result v0

    .line 348
    .local v0, "vcuid":I
    if-lez v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 349
    const/4 v1, 0x1

    .line 352
    .end local v0    # "vcuid":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .locals 8
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "forUserId"    # I

    .prologue
    const/4 v4, 0x0

    .line 375
    if-eq p2, p3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v4

    .line 379
    :cond_1
    sget-boolean v5, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 380
    const-string v5, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking if enabled notification listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_2
    if-eqz p1, :cond_0

    .line 383
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "enabled_notification_listeners"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 387
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "components":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_5

    .line 389
    aget-object v5, v1, v3

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 391
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 393
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 394
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ok to get sessions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is authorized notification listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 388
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_5
    sget-boolean v5, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 403
    const-string v5, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not ok to get sessions, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not in list of ENABLED_NOTIFICATION_LISTENERS for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-eqz v2, :cond_0

    .line 497
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 498
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3, v2}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/ISessionController;)V

    .line 503
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    :goto_1
    return-void

    .line 498
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 499
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionService"

    const-string v3, "Error sending default remote volume to sys ui."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private pushSessionsChanged(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 468
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 469
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v6, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 470
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 471
    .local v4, "size":I
    if-lez v4, :cond_0

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 472
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0, v6}, Lcom/android/server/media/MediaSessionService;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 474
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 476
    new-instance v8, Landroid/media/session/MediaSession$Token;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 479
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 480
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 481
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ne v6, p1, :cond_3

    .line 483
    :cond_2
    :try_start_1
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaSessionService"

    const-string v8, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v4    # "size":I
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "i":I
    .restart local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .restart local v4    # "size":I
    .restart local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    return-void
.end method

.method private rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 506
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v1

    .line 507
    .local v1, "receiver":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 508
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 509
    # setter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$802(Lcom/android/server/media/MediaSessionService$UserRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 510
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 511
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "media_button_receiver"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 517
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private updateActiveSessionListeners()V
    .locals 8

    .prologue
    .line 248
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 250
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .local v2, "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$200(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mPid:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$300(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v5

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUid:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$400(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mUserId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$500(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v3, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveSessionsListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$200(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is no longer authorized. Disconnecting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :try_start_3
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 261
    :catch_1
    move-exception v3

    goto :goto_1

    .line 266
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    :try_start_4
    monitor-exit v4

    .line 267
    return-void

    .line 266
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method private updateUser()V
    .locals 6

    .prologue
    .line 230
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 231
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 232
    .local v3, "userId":I
    iget v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    if-eq v4, v3, :cond_1

    .line 233
    iget v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    .line 234
    .local v2, "oldUserId":I
    iput v3, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I

    .line 236
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 237
    .local v1, "oldUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->stopLocked()V

    .line 241
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaSessionService;->getOrCreateUser(I)Lcom/android/server/media/MediaSessionService$UserRecord;

    move-result-object v0

    .line 242
    .local v0, "newUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService$UserRecord;->startLocked()V

    .line 244
    .end local v0    # "newUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v1    # "oldUser":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v2    # "oldUserId":I
    :cond_1
    monitor-exit v5

    .line 245
    return-void

    .line 244
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enforcePhoneStatePermission(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaSessionService"

    const-string v2, "Error sending volume change to system UI."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "MediaSessionService"

    const-string v2, "Unknown session changed playback type. Ignoring."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v1

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 180
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "updateSessions":Z
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    const-string v1, "MediaSessionService"

    const-string v3, "Unknown session changed playback state. Ignoring."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v2

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z

    move-result v0

    .line 167
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "media_session"

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 117
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 120
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    .line 121
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    .line 123
    new-instance v0, Lcom/android/server/media/MediaSessionService$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$1;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    .line 124
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    # invokes: Lcom/android/server/media/MediaSessionService$SettingsObserver;->observe()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->access$100(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    .line 126
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 127
    return-void
.end method

.method public onStartUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 186
    return-void
.end method

.method public onStopUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 197
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V

    .line 200
    :cond_0
    monitor-exit v2

    .line 201
    return-void

    .line 200
    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 191
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "MediaSessionService"

    const-string v2, "Unknown session updated. Ignoring."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v1

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
