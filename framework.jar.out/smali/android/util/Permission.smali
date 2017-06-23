.class public Landroid/util/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Permission$IncomingHandler;
    }
.end annotation


# static fields
.field public static final BLOCK_CALLER:Z = true

.field public static final CUSTOM_PERMISSION_CONTROL_BLUETOOTH:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

.field public static final CUSTOM_PERMISSION_CONTROL_DATA:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_DATA"

.field public static final CUSTOM_PERMISSION_CONTROL_WIFI:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_WIFI"

.field public static final CUSTOM_PERMISSION_READ_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_READ_MMS"

.field public static final CUSTOM_PERMISSION_SEND_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_SEND_MMS"

.field public static final MSG_BIND_SERVICE:I = 0x3e7

.field public static final MSG_GET_ALL_PERMISSION_STATES:I = 0x3

.field public static final MSG_GET_PACKAGE_PERMISSION_STATES:I = 0x5

.field public static final MSG_PERMISSION_DONE:I = 0x5

.field public static final MSG_REGISTER_CLIENT:I = 0x1

.field public static final MSG_REPLY_ALL_PERMISSION_STATES:I = 0x4

.field public static final MSG_REPLY_PACKAGE_PERMISSION_STATES:I = 0x6

.field public static final MSG_REPLY_REQUSET_DONE:I = 0x4

.field public static final MSG_REPLY_UPDATE_RESULT:I = 0x2

.field public static final MSG_REQUEST_PERMISSION:I = 0x3

.field public static final MSG_SET_USER_DECISION:I = 0x1

.field public static final MSG_UNREGISTER_CLIENT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CTAPermission"

.field public static final sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

.field public static final sCtaMonitoredPermissions:[Ljava/lang/String;

.field public static final sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

.field public static final sCtaResetTargetsSdk23:[Ljava/lang/String;

.field public static final sCustomPermissions:[Ljava/lang/String;

.field public static final sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

.field public static final sDefaultGrantedPermSdk23:[Ljava/lang/String;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field mAm:Landroid/app/ActivityManager;

.field private mByPassPerm:Z

.field private mConditionMet:Z

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mMessenger:Landroid/os/Messenger;

.field private mPackageName:Ljava/lang/String;

.field mPermissionControlService:Landroid/os/Messenger;

.field mPermissionRequetService:Landroid/os/Messenger;

.field private mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

.field private mRequestPermission:Ljava/lang/String;

.field private mServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v6

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermissions:[Ljava/lang/String;

    .line 83
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v5

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v6

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

    .line 91
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission-group.SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission-group.PHONE"

    aput-object v1, v0, v4

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

    .line 97
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.permission-group.STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission-group.SENSORS"

    aput-object v1, v0, v4

    const-string v1, "android.permission-group.CALENDAR"

    aput-object v1, v0, v5

    sput-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    .line 104
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "CUSTOM_PERMISSION_READ_MMS"

    aput-object v1, v0, v3

    const-string v1, "CUSTOM_PERMISSION_SEND_MMS"

    aput-object v1, v0, v4

    const-string v1, "CUSTOM_PERMISSION_CONTROL_WIFI"

    aput-object v1, v0, v5

    const-string v1, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    aput-object v1, v0, v6

    sput-object v0, Landroid/util/Permission;->sCustomPermissions:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v6

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/Permission;->sCtaResetTargetsSdk23:[Ljava/lang/String;

    .line 122
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v6

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.USE_SIP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.BODY_SENSORS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.RECEIVE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/Permission;->sDefaultGrantedPermSdk23:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 147
    iput-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 148
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Landroid/util/Permission;->mByPassPerm:Z

    .line 154
    iput-boolean v2, p0, Landroid/util/Permission;->mServiceConnected:Z

    .line 155
    iput-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 164
    iput-object p1, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    .line 179
    :goto_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    .line 180
    return-void

    .line 175
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Permission;->mByPassPerm:Z

    .line 176
    const-string v1, "CTAPermission"

    const-string v2, "ApplicationContext is null, so bypass permission check!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 1
    .param p0, "x0"    # Landroid/util/Permission;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v0
.end method

.method static synthetic access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 0
    .param p0, "x0"    # Landroid/util/Permission;
    .param p1, "x1"    # Landroid/util/GlobalPermissionState$PermissionState;

    .prologue
    .line 43
    iput-object p1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object p1
.end method

.method static synthetic access$100(Landroid/util/Permission;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/Permission;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/util/Permission;->letGo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/Permission;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/util/Permission;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    return-object v0
.end method

.method private cleanUpHandler()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    .line 196
    :cond_0
    return-void
.end method

.method private getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 353
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "key_pkg_name"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 358
    :try_start_0
    iget-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    const-string/jumbo v3, "wait for control service feedback custom permission state"

    invoke-direct {p0, v3}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v3

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isCTADefaultGrantedForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "perm"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Landroid/util/Permission;->sDefaultGrantedPermSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTADefaultGrantedGroupForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTAMonitoredPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v1, Landroid/util/Permission;->sCtaMonitoredPermissions:[Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 202
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCTAPermForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "CUSTOM_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCTAPermGroupForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTAResetTargetSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "perm"    # Ljava/lang/String;

    .prologue
    .line 247
    sget-object v0, Landroid/util/Permission;->sCtaResetTargetsSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private letGo(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 406
    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 407
    const-string v0, "CTAPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] notified beacuase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postPermissionRequestMessage()V
    .locals 7

    .prologue
    .line 372
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 374
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "key_perm"

    iget-object v4, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v3, "key_pkg_name"

    iget-object v4, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 380
    :try_start_0
    iget-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareClientMessenger()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IPChandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    .line 185
    iget-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance v0, Landroid/util/Permission$IncomingHandler;

    iget-object v1, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p0, v1}, Landroid/util/Permission$IncomingHandler;-><init>(Landroid/util/Permission;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    .line 189
    return-void
.end method

.method private waitHere(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v2, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 389
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/util/Permission;->mConditionMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 391
    :try_start_1
    const-string v1, "CTAPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] start wait for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "CTAPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 399
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 400
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    return-void
.end method


# virtual methods
.method makeSurePermissionServiceRunning(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-virtual {p1, v4}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 209
    invoke-virtual {p1, v5}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 211
    iget-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-nez v1, :cond_2

    .line 212
    :cond_0
    const-string v1, "CTAPermission"

    const-string v2, "[API] permission service is not ready, start it!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.service.bind"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.permissionutil"

    const-string v3, "com.oneplus.permissionutil.MessengerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 219
    :cond_1
    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 224
    invoke-virtual {p1, v5}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 225
    iget-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "CTAPermission"

    const-string v2, "[API] permission service is ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 220
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestPermissionAuto(Ljava/lang/String;)Z
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 263
    iput-object p1, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    .line 266
    iget-boolean v5, p0, Landroid/util/Permission;->mByPassPerm:Z

    if-eqz v5, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 271
    :cond_1
    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const-string v6, "com.android.cts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    iget-object v5, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->checkNeedToShowPermissionRequst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    const/4 v2, -0x1

    .line 283
    .local v2, "targetSdk":I
    :try_start_0
    iget-object v5, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/16 v5, 0x16

    if-le v2, v5, :cond_2

    invoke-static {p1}, Landroid/util/Permission;->isCTAPermForSDK23(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    :cond_2
    iget-object v5, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/util/Permission;->makeSurePermissionServiceRunning(Landroid/content/Context;)V

    .line 297
    invoke-direct {p0}, Landroid/util/Permission;->prepareClientMessenger()V

    .line 300
    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Landroid/util/Permission;->getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v1

    .line 301
    .local v1, "ps":Landroid/util/GlobalPermissionState$PermissionState;
    if-nez v1, :cond_3

    .line 302
    const-string v4, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] can\'t find perm state of pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    goto :goto_0

    .line 284
    .end local v1    # "ps":Landroid/util/GlobalPermissionState$PermissionState;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get sdk versiion fail, pkgName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 305
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "ps":Landroid/util/GlobalPermissionState$PermissionState;
    :cond_3
    iget-boolean v5, v1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_4

    .line 306
    const-string v4, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is granted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    goto/16 :goto_0

    .line 309
    :cond_4
    iget-boolean v5, v1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v5, :cond_5

    iget-boolean v5, v1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_5

    .line 310
    const-string v3, "CTAPermission"

    const-string v5, "[API] perm is denied and fixed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    move v3, v4

    .line 312
    goto/16 :goto_0

    .line 314
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    .line 317
    invoke-direct {p0}, Landroid/util/Permission;->postPermissionRequestMessage()V

    .line 321
    iget-object v5, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->isRequestPermission(Z)V

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wait for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requesting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    .line 325
    const-string v5, "CTAPermission"

    const-string v6, "[API] wait finish"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v5, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->isRequestPermission(Z)V

    .line 331
    iget-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    if-eqz v5, :cond_7

    .line 332
    iget-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v5, v5, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v5, :cond_6

    .line 333
    const-string v4, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v6, v6, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is granted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    goto/16 :goto_0

    .line 336
    :cond_6
    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v3, v3, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v3, v3, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v3, :cond_7

    .line 337
    const-string v3, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perm is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v6, v6, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "denied, and fixed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    move v3, v4

    .line 339
    goto/16 :goto_0

    .line 344
    :cond_7
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    move v3, v4

    .line 345
    goto/16 :goto_0
.end method
