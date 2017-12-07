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

.field private static final sRecordAudioSpecialList:[Ljava/lang/String;

.field public static final sReserveSystemApps:[Ljava/lang/String;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field mAm:Landroid/app/ActivityManager;

.field private mByPassPerm:Z

.field private mConditionMet:Z

.field mContext:Landroid/content/Context;

.field private mDoubleCheck:Z

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
.method static synthetic -get0(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v0
.end method

.method static synthetic -get1(Landroid/util/Permission;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 0

    iput-object p1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/util/Permission;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/util/Permission;->letGo(Ljava/lang/String;)V

    return-void
.end method

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

    .line 72
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    .line 73
    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    .line 74
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    .line 75
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v6

    .line 76
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v7

    .line 77
    const-string/jumbo v1, "android.permission.CAMERA"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 71
    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermissions:[Ljava/lang/String;

    .line 83
    new-array v0, v7, [Ljava/lang/String;

    .line 84
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    .line 85
    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    .line 86
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v5

    .line 87
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v6

    .line 83
    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

    .line 91
    new-array v0, v5, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "android.permission-group.SMS"

    aput-object v1, v0, v3

    .line 93
    const-string/jumbo v1, "android.permission-group.PHONE"

    aput-object v1, v0, v4

    .line 91
    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

    .line 97
    new-array v0, v6, [Ljava/lang/String;

    .line 98
    const-string/jumbo v1, "android.permission-group.STORAGE"

    aput-object v1, v0, v3

    .line 99
    const-string/jumbo v1, "android.permission-group.SENSORS"

    aput-object v1, v0, v4

    .line 100
    const-string/jumbo v1, "android.permission-group.CALENDAR"

    aput-object v1, v0, v5

    .line 97
    sput-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    .line 104
    new-array v0, v7, [Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "CUSTOM_PERMISSION_READ_MMS"

    aput-object v1, v0, v3

    .line 106
    const-string/jumbo v1, "CUSTOM_PERMISSION_SEND_MMS"

    aput-object v1, v0, v4

    .line 107
    const-string/jumbo v1, "CUSTOM_PERMISSION_CONTROL_WIFI"

    aput-object v1, v0, v5

    .line 108
    const-string/jumbo v1, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    aput-object v1, v0, v6

    .line 104
    sput-object v0, Landroid/util/Permission;->sCustomPermissions:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 113
    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    .line 114
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    .line 115
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    .line 116
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v6

    .line 117
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v7

    .line 118
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 112
    sput-object v0, Landroid/util/Permission;->sCtaResetTargetsSdk23:[Ljava/lang/String;

    .line 122
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    .line 124
    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    .line 125
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v5

    .line 126
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v6

    .line 127
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v7

    .line 128
    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "android.permission.USE_SIP"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "android.permission.SEND_SMS"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "android.permission.READ_SMS"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 122
    sput-object v0, Landroid/util/Permission;->sDefaultGrantedPermSdk23:[Ljava/lang/String;

    .line 142
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 143
    const-string/jumbo v1, "net.oneplus.weather"

    aput-object v1, v0, v3

    .line 144
    const-string/jumbo v1, "com.oneplus.calculator"

    aput-object v1, v0, v4

    .line 145
    const-string/jumbo v1, "com.oneplus.note"

    aput-object v1, v0, v5

    .line 146
    const-string/jumbo v1, "com.oneplus.cloud"

    aput-object v1, v0, v6

    .line 147
    const-string/jumbo v1, "com.oneplus.card"

    aput-object v1, v0, v7

    .line 142
    sput-object v0, Landroid/util/Permission;->sReserveSystemApps:[Ljava/lang/String;

    .line 153
    new-array v0, v4, [Ljava/lang/String;

    .line 154
    const-string/jumbo v1, "com.tencent.mobileqq"

    aput-object v1, v0, v3

    .line 153
    sput-object v0, Landroid/util/Permission;->sRecordAudioSpecialList:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 162
    iput-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 163
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    .line 168
    iput-boolean v2, p0, Landroid/util/Permission;->mByPassPerm:Z

    .line 169
    iput-boolean v2, p0, Landroid/util/Permission;->mServiceConnected:Z

    .line 170
    iput-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 175
    iput-boolean v2, p0, Landroid/util/Permission;->mDoubleCheck:Z

    .line 180
    iput-object p1, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    .line 195
    :goto_0
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    .line 179
    return-void

    .line 191
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Permission;->mByPassPerm:Z

    .line 192
    const-string/jumbo v1, "CTAPermission"

    const-string/jumbo v2, "ApplicationContext is null, so bypass permission check!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cleanUpHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 210
    iput-object v1, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    .line 207
    :cond_0
    return-void
.end method

.method private getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 378
    const/4 v4, 0x0

    .line 379
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 378
    invoke-static {v4, v5, v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 380
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "key_pkg_name"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 385
    :try_start_0
    iget-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    const-string/jumbo v3, "wait for control service feedback custom permission state"

    invoke-direct {p0, v3}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    .line 393
    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v3

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isCTADefaultGrantedForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "perm"    # Ljava/lang/String;

    .prologue
    .line 264
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
    .line 256
    sget-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTAMonitoredPermission(Ljava/lang/String;)Z
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 217
    sget-object v2, Landroid/util/Permission;->sCtaMonitoredPermissions:[Ljava/lang/String;

    .line 216
    invoke-static {v2, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 218
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCTAPermForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string/jumbo v0, "CUSTOM_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCTAPermGroupForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 252
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
    .line 260
    sget-object v0, Landroid/util/Permission;->sCtaResetTargetsSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isReserveSystemApps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v0, Landroid/util/Permission;->sReserveSystemApps:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSpecialHandleForRecordAudio(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 268
    sget-object v0, Landroid/util/Permission;->sRecordAudioSpecialList:[Ljava/lang/String;

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
    .line 432
    iget-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 434
    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 435
    const-string/jumbo v0, "CTAPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[API] notified beacuase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
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

.method private postPermissionRequestMessage()V
    .locals 7

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 399
    const/4 v4, 0x0

    .line 400
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 399
    invoke-static {v4, v5, v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 401
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "key_perm"

    iget-object v4, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v3, "key_pkg_name"

    iget-object v4, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v3, "key_is_double_check"

    iget-boolean v4, p0, Landroid/util/Permission;->mDoubleCheck:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 408
    :try_start_0
    iget-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareClientMessenger()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "IPChandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    .line 201
    iget-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    new-instance v0, Landroid/util/Permission$IncomingHandler;

    iget-object v1, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p0, v1}, Landroid/util/Permission$IncomingHandler;-><init>(Landroid/util/Permission;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    .line 198
    return-void
.end method

.method private waitHere(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v2, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 417
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/util/Permission;->mConditionMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 419
    :try_start_1
    const-string/jumbo v1, "CTAPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[API] start wait for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "CTAPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[API] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 416
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 427
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Landroid/util/Permission;->mConditionMet:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 415
    return-void
.end method


# virtual methods
.method makeSurePermissionServiceRunning(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    invoke-virtual {p1, v4}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 225
    invoke-virtual {p1, v5}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 227
    iget-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-nez v1, :cond_2

    .line 228
    :cond_0
    const-string/jumbo v1, "CTAPermission"

    const-string/jumbo v2, "[API] permission service is not ready, wait for it!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 237
    invoke-virtual {p1, v5}, Landroid/content/Context;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 238
    iget-object v1, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 242
    const-string/jumbo v1, "CTAPermission"

    const-string/jumbo v2, "[API] permission service is ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    return-void

    .line 233
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public requestPermissionAuto(Ljava/lang/String;)Z
    .locals 9
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 284
    iput-object p1, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    .line 287
    iget-boolean v3, p0, Landroid/util/Permission;->mByPassPerm:Z

    if-eqz v3, :cond_0

    .line 288
    return v6

    .line 292
    :cond_0
    iget-object v3, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "com.android.cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    return v6

    .line 297
    :cond_1
    iget-object v3, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->checkNeedToShowPermissionRequst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 298
    return v6

    .line 302
    :cond_2
    const/4 v2, -0x1

    .line 304
    .local v2, "targetSdk":I
    :try_start_0
    iget-object v3, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/16 v3, 0x16

    if-le v2, v3, :cond_3

    invoke-static {p1}, Landroid/util/Permission;->isCTAPermForSDK23(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 316
    :cond_3
    iget-object v3, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/util/Permission;->makeSurePermissionServiceRunning(Landroid/content/Context;)V

    .line 318
    invoke-direct {p0}, Landroid/util/Permission;->prepareClientMessenger()V

    .line 321
    iget-object v3, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Landroid/util/Permission;->getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v1

    .line 322
    .local v1, "ps":Landroid/util/GlobalPermissionState$PermissionState;
    if-nez v1, :cond_5

    .line 323
    const-string/jumbo v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[API] can\'t find perm state of pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " perm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 325
    return v6

    .line 305
    .end local v1    # "ps":Landroid/util/GlobalPermissionState$PermissionState;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get sdk versiion fail, pkgName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    return v6

    .line 312
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    return v6

    .line 326
    .restart local v1    # "ps":Landroid/util/GlobalPermissionState$PermissionState;
    :cond_5
    iget-boolean v3, v1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v3, :cond_6

    .line 327
    const-string/jumbo v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[API] perm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is granted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 329
    return v6

    .line 330
    :cond_6
    iget-boolean v3, v1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v3, :cond_7

    iget-boolean v3, v1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v3, :cond_7

    .line 331
    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 332
    iget-object v3, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Permission;->isSpecialHandleForRecordAudio(Ljava/lang/String;)Z

    move-result v3

    .line 331
    if-eqz v3, :cond_8

    .line 333
    const/16 v3, 0x17

    if-ge v2, v3, :cond_8

    .line 334
    iput-boolean v6, p0, Landroid/util/Permission;->mDoubleCheck:Z

    .line 341
    :cond_7
    iput-object v8, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    .line 344
    invoke-direct {p0}, Landroid/util/Permission;->postPermissionRequestMessage()V

    .line 348
    iget-object v3, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->isRequestPermission(Z)V

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wait for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requesting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v3, "CTAPermission"

    const-string/jumbo v4, "[API] wait finish"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v3, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v7}, Landroid/app/ActivityManager;->isRequestPermission(Z)V

    .line 358
    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    if-eqz v3, :cond_a

    .line 359
    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v3, v3, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v3, :cond_9

    .line 360
    const-string/jumbo v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v5, v5, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is granted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 362
    return v6

    .line 336
    :cond_8
    const-string/jumbo v3, "CTAPermission"

    const-string/jumbo v4, "[API] perm is denied and fixed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 338
    return v7

    .line 363
    :cond_9
    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v3, v3, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v3, v3, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v3, :cond_a

    .line 364
    const-string/jumbo v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perm is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v5, v5, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "denied, and fixed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 366
    return v7

    .line 371
    :cond_a
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 372
    return v7
.end method
