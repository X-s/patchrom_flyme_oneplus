.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$1;,
        Lcom/android/server/vr/VrManagerService$2;,
        Lcom/android/server/vr/VrManagerService$3;,
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$VrState;
    }
.end annotation


# static fields
.field private static final EVENT_LOG_SIZE:I = 0x20

.field private static final INVALID_APPOPS_MODE:I = -0x1

.field private static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field private static final MSG_VR_STATE_CHANGE:I = 0x0

.field private static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field public static final VR_MANAGER_BINDER_SERVICE:Ljava/lang/String; = "vrmanager"

.field private static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field private mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentVrModeComponent:Landroid/content/ComponentName;

.field private mCurrentVrModeUser:I

.field private mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field private mGuard:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/vr/VrManagerService$VrState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field private mPreviousCoarseLocationMode:I

.field private mPreviousManageOverlayMode:I

.field private final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private mVrModeEnabled:Z

.field private mWasDefaultGranted:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/vr/VrManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "immediate"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .locals 1
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$2;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 398
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 122
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 123
    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    .line 124
    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    .line 126
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 127
    new-instance v0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$NotificationAccessManager;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 132
    new-instance v0, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$3;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    .line 397
    return-void
.end method

.method private addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 881
    return-void
.end method

.method private changeVrModeLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 750
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 753
    const-string/jumbo v1, "VrManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VR mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    .line 756
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    .line 748
    :cond_0
    return-void

    .line 753
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_0
.end method

.method private consumeAndApplyPendingStateLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 781
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 783
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v1, v1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v2, v2, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 784
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v3, v3, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 782
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z

    .line 785
    iput-object v4, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 780
    :cond_0
    return-void
.end method

.method private static create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 776
    const-string/jumbo v4, "android.settings.VR_LISTENER_SETTINGS"

    .line 777
    sget-object v5, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    .line 776
    const v3, 0x1040486

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 775
    invoke-static/range {v0 .. v5}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0
.end method

.method private createAndConnectService(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 737
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 738
    const-string/jumbo v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method private dumpStateTransitions(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 801
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, "d":Ljava/text/SimpleDateFormat;
    const-string/jumbo v3, "  "

    .line 803
    .local v3, "tab":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 804
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 805
    const-string/jumbo v4, "None"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    :cond_0
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "state$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/VrManagerService$VrState;

    .line 808
    .local v1, "state":Lcom/android/server/vr/VrManagerService$VrState;
    new-instance v4, Ljava/util/Date;

    iget-wide v6, v1, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    const-string/jumbo v4, "State changed to:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    iget-boolean v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ENABLED"

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    iget-boolean v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v4, :cond_1

    .line 814
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    const-string/jumbo v4, "User="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    iget v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 817
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    const-string/jumbo v4, "Current VR Activity="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    if-nez v4, :cond_3

    .line 820
    const-string/jumbo v4, "None"

    .line 819
    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    const-string/jumbo v4, "Bound VrListenerService="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    if-nez v4, :cond_4

    .line 824
    const-string/jumbo v4, "None"

    .line 823
    :goto_3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-boolean v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    if-eqz v4, :cond_1

    .line 826
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    const-string/jumbo v4, "Default permissions granted to the bound VrListenerService."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_2
    const-string/jumbo v4, "DISABLED"

    goto :goto_1

    .line 820
    :cond_3
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 824
    :cond_4
    iget-object v4, v1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 800
    .end local v1    # "state":Lcom/android/server/vr/VrManagerService$VrState;
    :cond_5
    return-void
.end method

.method private enforceCallerPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller does not hold the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    return-void
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 715
    :cond_0
    const-string/jumbo v4, ""

    return-object v4

    .line 718
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 720
    .local v3, "start":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 721
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 724
    if-nez v3, :cond_3

    .line 725
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const/4 v3, 0x0

    goto :goto_0

    .line 730
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    const-string/jumbo v4, "enabled_notification_listeners"

    .line 698
    invoke-static {p1, v4, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "flat":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 702
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 703
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "allowed":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 705
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 706
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "allowed":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getVrMode()Z
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 890
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 665
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 667
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 666
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 663
    :cond_0
    return-void
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 617
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 619
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v8, "android.service.notification.NotificationListenerService"

    .line 620
    const-string/jumbo v9, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 618
    invoke-static {v5, p2, v8, v9}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v6

    .line 621
    .local v6, "possibleServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 623
    .local v7, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v7, p2}, Lcom/android/server/vr/VrManagerService;->getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 625
    .local v2, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 626
    .local v0, "c":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "flatName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 628
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 629
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    .end local v0    # "c":Landroid/content/ComponentName;
    .end local v3    # "flatName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 634
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->formatSettings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "flatSettings":Ljava/lang/String;
    const-string/jumbo v8, "enabled_notification_listeners"

    .line 635
    invoke-static {v7, v8, v4, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 616
    .end local v4    # "flatSettings":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private grantNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 605
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 603
    return-void
.end method

.method private hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 862
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native initializeNative()V
.end method

.method private isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 868
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v1

    .line 870
    return v0

    .line 872
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    .line 872
    return v0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 591
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 593
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 597
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 594
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 598
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 692
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 691
    invoke-virtual {v2, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 693
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private logStateLocked()V
    .locals 6

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 792
    :goto_0
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 793
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v5, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    .line 792
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    .line 794
    .local v0, "current":Lcom/android/server/vr/VrManagerService$VrState;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 789
    return-void

    .line 791
    .end local v0    # "current":Lcom/android/server/vr/VrManagerService$VrState;
    :cond_1
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "currentBoundService":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private onVrModeChangedLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 767
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 766
    :goto_0
    invoke-virtual {v3, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 765
    return-void

    :cond_0
    move v0, v1

    .line 767
    goto :goto_0
.end method

.method private removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 885
    return-void
.end method

.method private revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 677
    :try_start_0
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 679
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 678
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "VrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to revoke coarseLocation permission for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    const-string/jumbo v3, ". "

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 642
    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 644
    .local v5, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v5, p2}, Lcom/android/server/vr/VrManagerService;->getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;

    move-result-object v3

    .line 646
    .local v3, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v6, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 649
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 650
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 651
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 655
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "component":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 657
    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->formatSettings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    .line 659
    .local v4, "flatSettings":Ljava/lang/String;
    const-string/jumbo v7, "enabled_notification_listeners"

    .line 658
    invoke-static {v5, v7, v4, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 641
    return-void
.end method

.method private revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 611
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 613
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 608
    return-void
.end method

.method private setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "immediate"    # Z

    .prologue
    .line 840
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 842
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_1

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 857
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 838
    return-void

    .line 845
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 847
    const-wide/16 v2, 0x12c

    .line 846
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 850
    :cond_2
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 851
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setVrModeNative(Z)V
.end method

.method private updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
    .locals 14
    .param p1, "enabled"    # Z
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "calling"    # Landroid/content/ComponentName;

    .prologue
    .line 509
    const/4 v9, 0x0

    .line 510
    .local v9, "sendUpdatedCaller":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 513
    .local v4, "identity":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v11

    if-nez v11, :cond_5

    const/4 v10, 0x1

    .line 515
    .local v10, "validUserComponent":Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-nez v11, :cond_0

    if-eqz p1, :cond_6

    .line 519
    :cond_0
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v11, :cond_7

    .line 520
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 521
    :goto_1
    iget v7, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 524
    .local v7, "oldUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V

    .line 526
    if-eqz p1, :cond_8

    if-eqz v10, :cond_8

    .line 535
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v11, :cond_9

    .line 537
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 538
    const-string/jumbo v11, "VrManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Disconnecting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 539
    const-string/jumbo v13, " for user "

    .line 538
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 539
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v13

    .line 538
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 541
    const/4 v9, 0x1

    .line 551
    :cond_1
    :goto_2
    if-eqz p4, :cond_2

    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p4

    invoke-static {v0, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 556
    :cond_2
    :goto_3
    iget v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    move/from16 v0, p3

    if-eq v11, v0, :cond_3

    .line 557
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 558
    const/4 v9, 0x1

    .line 561
    :cond_3
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v11, :cond_b

    .line 562
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 563
    :goto_4
    iget v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 567
    .local v3, "newUserId":I
    invoke-direct {p0, v6, v3, v8, v7}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    .line 570
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v11, :cond_4

    if-eqz v9, :cond_4

    .line 571
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 572
    .local v2, "c":Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    new-instance v12, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {v12, p0, v2}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V

    invoke-virtual {v11, v12}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    .line 580
    .end local v2    # "c":Landroid/content/ComponentName;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 582
    return v10

    .line 513
    .end local v3    # "newUserId":I
    .end local v7    # "oldUserId":I
    .end local v10    # "validUserComponent":Z
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "validUserComponent":Z
    goto/16 :goto_0

    .line 584
    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    return v10

    .line 520
    :cond_7
    const/4 v8, 0x0

    .local v8, "oldVrServicePackage":Ljava/lang/String;
    goto/16 :goto_1

    .line 528
    .end local v8    # "oldVrServicePackage":Ljava/lang/String;
    .restart local v7    # "oldUserId":I
    :cond_8
    :try_start_1
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v11, :cond_1

    .line 529
    const-string/jumbo v11, "VrManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Disconnecting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 530
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v13}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v13

    .line 529
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 532
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 583
    .end local v7    # "oldUserId":I
    .end local v10    # "validUserComponent":Z
    :catchall_0
    move-exception v11

    .line 584
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    throw v11

    .line 546
    .restart local v7    # "oldUserId":I
    .restart local v10    # "validUserComponent":Z
    :cond_9
    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 547
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 552
    :cond_a
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 562
    :cond_b
    const/4 v6, 0x0

    .local v6, "newVrServicePackage":Ljava/lang/String;
    goto :goto_4
.end method

.method private updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "newVrServicePackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldVrServicePackage"    # Ljava/lang/String;
    .param p4, "oldUserId"    # I

    .prologue
    .line 480
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 486
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    return-void

    .line 487
    :catchall_0
    move-exception v2

    .line 488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    throw v2
.end method

.method private updateOverlayStateLocked(Ljava/lang/String;II)V
    .locals 6
    .param p1, "exemptedPackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldUserId"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 464
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    if-eq p3, p2, :cond_0

    .line 466
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move v5, p3

    .line 465
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 470
    :cond_0
    if-nez p1, :cond_1

    new-array v4, v2, [Ljava/lang/String;

    .line 474
    .local v4, "exemptions":[Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move v5, p2

    .line 473
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 460
    return-void

    .line 471
    .end local v4    # "exemptions":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v2

    .restart local v4    # "exemptions":[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    .prologue
    .line 414
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 415
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 416
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 417
    .local v3, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 418
    .local v1, "handler":Landroid/os/Handler;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v7, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 421
    const-string/jumbo v2, "enabled_vr_listeners"

    .line 422
    const-string/jumbo v4, "android.permission.BIND_VR_LISTENER_SERVICE"

    .line 423
    const-string/jumbo v5, "android.service.vr.VrListenerService"

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 420
    invoke-static/range {v0 .. v7}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 425
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 413
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v7    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    :cond_0
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 454
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onEnabledComponentChanged()V
    .locals 11

    .prologue
    .line 256
    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 257
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 260
    .local v0, "currentUser":I
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v6, v0}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 262
    .local v1, "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 263
    .local v2, "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "n$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 264
    .local v3, "n":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "pkg":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "currentUser":I
    .end local v1    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v2    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "n":Landroid/content/ComponentName;
    .end local v4    # "n$iterator":Ljava/util/Iterator;
    .end local v5    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 269
    .restart local v0    # "currentUser":I
    .restart local v1    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .restart local v2    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "n$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-virtual {v6, v2}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    .line 271
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    monitor-exit v7

    .line 272
    return-void

    .line 276
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    .line 278
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_3

    monitor-exit v7

    .line 279
    return-void

    .line 283
    :cond_3
    :try_start_3
    iget-boolean v6, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v8}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 284
    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v9}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v9

    const/4 v10, 0x0

    .line 283
    invoke-direct {p0, v6, v8, v9, v10}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    .line 255
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 408
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 409
    const-string/jumbo v0, "vrmanager"

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 402
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 431
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 446
    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 438
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
