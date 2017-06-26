.class public Lcom/oneplus/settings/receiver/SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsReceiver.java"


# static fields
.field public static final ACTION_OEM_BOOT_COMPLETED:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field private static final ACTION_OP_EYS_CARE_MODE:Ljava/lang/String; = "com.oem.intent.action.OP_EYS_CARE_MODE"

.field private static final ACTION_OP_EYS_CARE_MODE_OFF:Ljava/lang/String; = "com.oem.intent.action.OP_EYS_CARE_MODE_OFF"

.field public static final ACTION_THREE_KEY_BOOT:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE_BOOT"

.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final CMD_OEM_QDCM_MODE_10:Ljava/lang/String; = "oem:qdcm:mode_10"

.field private static final CMD_OEM_QDCM_MODE_5:Ljava/lang/String; = "oem:qdcm:mode_5"

.field private static final CMD_OEM_QDCM_MODE_6:Ljava/lang/String; = "oem:qdcm:mode_6"

.field private static final CMD_OEM_QDCM_MODE_7:Ljava/lang/String; = "oem:qdcm:mode_7"

.field private static final CMD_OEM_QDCM_MODE_8:Ljava/lang/String; = "oem:qdcm:mode_8"

.field private static final CMD_OEM_QDCM_MODE_9:Ljava/lang/String; = "oem:qdcm:mode_9"

.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "disable_eyecare_keys"

.field private static OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String; = null

.field private static OEM_FINGER_LOCKSCREEN:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SettingsReceiver"

.field private static final TYPE_ONE:Ljava/lang/String; = "oem:qdcm:mode_1"

.field private static final TYPE_SERVER:Ljava/lang/String; = "pps"

.field private static final TYPE_THREE:Ljava/lang/String; = "oem:qdcm:mode_3"

.field private static final TYPE_TWO:Ljava/lang/String; = "oem:qdcm:mode_2"

.field private static final TYPE_ZERO:Ljava/lang/String; = "oem:qdcm:mode_0"


# instance fields
.field private M_TYPE_STRING:Ljava/lang/String;

.field private localSocket:Landroid/net/LocalSocket;

.field private mBetterStatus:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "oem_finger_lockscreen"

    sput-object v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    .line 45
    const-string v0, "oem_finger_check_oneplus_account"

    sput-object v0, Lcom/oneplus/settings/receiver/SettingsReceiver;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    const-string v0, "oem:qdcm:mode_1"

    iput-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    .line 318
    new-instance v0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/receiver/SettingsReceiver$2;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V

    iput-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/receiver/SettingsReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/receiver/SettingsReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/receiver/SettingsReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 43
    iget v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/receiver/SettingsReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/receiver/SettingsReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setEyemodeValue()V

    return-void
.end method

.method private closeEysCareModeAction()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 272
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string v1, "disable_eyecare_keys"

    const/16 v2, 0x7e0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 273
    iget-object v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_better_status"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    .line 275
    iget-object v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    iget-object v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_eyecare_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    return-void
.end method

.method private doEysCareModeAction(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x190

    const/16 v7, 0x12c

    const/16 v6, 0xc8

    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 281
    const-string v2, "eyecare_enable"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    .local v0, "mEyecareEnable":Z
    if-eqz v0, :cond_6

    .line 283
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->showNotification()V

    .line 284
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_eyecare_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_eyecare_progress_status"

    const/16 v4, 0x258

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, "progress":I
    if-ltz v1, :cond_1

    if-ge v1, v5, :cond_1

    .line 289
    const-string v2, "oem:qdcm:mode_5"

    iput-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    .end local v1    # "progress":I
    :cond_0
    :goto_0
    return-void

    .line 291
    .restart local v1    # "progress":I
    :cond_1
    if-lt v1, v5, :cond_2

    if-ge v1, v6, :cond_2

    .line 292
    const-string v2, "oem:qdcm:mode_6"

    iput-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 293
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 294
    :cond_2
    if-lt v1, v6, :cond_3

    if-ge v1, v7, :cond_3

    .line 295
    const-string v2, "oem:qdcm:mode_7"

    iput-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 296
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 297
    :cond_3
    if-lt v1, v7, :cond_4

    if-ge v1, v8, :cond_4

    .line 298
    const-string v2, "oem:qdcm:mode_8"

    iput-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 299
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 300
    :cond_4
    if-lt v1, v8, :cond_5

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_5

    .line 301
    const-string v2, "oem:qdcm:mode_9"

    iput-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 302
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 303
    :cond_5
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    const/16 v2, 0x258

    if-gt v1, v2, :cond_0

    .line 304
    const-string v2, "oem:qdcm:mode_10"

    iput-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 305
    iget-object v2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 308
    .end local v1    # "progress":I
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->closeEysCareModeAction()V

    goto :goto_0
.end method

.method private setEyemodeValue()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.op_eyecare_zero.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "oem:qdcm:mode_0"

    iput-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v0, "oem:qdcm:mode_1"

    iput-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method private showNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 412
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 413
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f040092

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 414
    .local v5, "views":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.oem.intent.action.OP_EYS_CARE_MODE_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v1, "eysCareModeIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 417
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const v6, 0x7f120124

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 419
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-array v7, v11, [J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f02005f

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 429
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 430
    .local v3, "notify":Landroid/app/Notification;
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 431
    const-string v6, "disable_eyecare_keys"

    const/16 v7, 0x7e0

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v7, v3, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 432
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    .line 104
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_oneplus_modified_devicename"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "modified":Ljava/lang/String;
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_oneplus_devicename"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "mDeviceName":Ljava/lang/String;
    if-nez v10, :cond_a

    if-eqz v5, :cond_0

    const-string v12, "oneplus"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "ONE E1001"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "ONE E1003"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "ONE E1005"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 114
    :cond_0
    const-string v12, "ro.display.series"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_oneplus_devicename"

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_oneplus_modified_devicename"

    const-string v14, "1"

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    :cond_1
    :goto_0
    const-string v12, "com.android.server.WifiManager.action.SHUT_DOWN_HOTSPOT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 130
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/android/settings_exlib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 133
    :cond_2
    const-string v12, "com.oem.intent.action.OP_EYS_CARE_MODE_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 134
    const-string v12, "guojing"

    const-string v13, "1111111111111111"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->closeEysCareModeAction()V

    .line 138
    :cond_3
    const-string v12, "com.oem.intent.action.OP_EYS_CARE_MODE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 139
    const-string v12, "guojing"

    const-string v13, "222222222222222222"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->doEysCareModeAction(Landroid/content/Intent;)V

    .line 143
    :cond_4
    const-string v12, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "oem.threeStageKey.support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_three_key_define"

    const/4 v14, 0x3

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 154
    .local v7, "mStatus":I
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v8, "mThreeIntent":Landroid/content/Intent;
    const-string v12, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v12, "switch_state"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    .end local v7    # "mStatus":I
    .end local v8    # "mThreeIntent":Landroid/content/Intent;
    :cond_5
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_eyecare_enable"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 161
    .local v3, "eyeCareStatus":I
    const/4 v12, 0x1

    if-ne v3, v12, :cond_10

    .line 163
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_eyecare_progress_status"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 166
    .local v11, "progress":I
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->showNotification()V

    .line 168
    if-ltz v11, :cond_b

    const/16 v12, 0x64

    if-ge v11, v12, :cond_b

    .line 169
    const-string v12, "oem:qdcm:mode_5"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    .line 206
    .end local v11    # "progress":I
    :cond_6
    :goto_1
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/oneplus/settings/receiver/SettingsReceiver$1;

    invoke-direct {v13, p0}, Lcom/oneplus/settings/receiver/SettingsReceiver$1;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 248
    .end local v3    # "eyeCareStatus":I
    :cond_7
    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 249
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 250
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 251
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 252
    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 257
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_8
    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 260
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    const-string v13, "wifip2p"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 262
    .local v9, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v9, :cond_9

    .line 263
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    .line 265
    .local v4, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    const/4 v12, 0x0

    invoke-virtual {v9, v4, v5, v12}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 268
    .end local v4    # "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .end local v9    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_9
    return-void

    .line 121
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x20

    if-le v12, v13, :cond_1

    .line 122
    const/4 v12, 0x0

    const/16 v13, 0x1f

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 123
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_oneplus_devicename"

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 170
    .restart local v3    # "eyeCareStatus":I
    .restart local v11    # "progress":I
    :cond_b
    const/16 v12, 0x64

    if-lt v11, v12, :cond_c

    const/16 v12, 0xc8

    if-ge v11, v12, :cond_c

    .line 171
    const-string v12, "oem:qdcm:mode_6"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_c
    const/16 v12, 0xc8

    if-lt v11, v12, :cond_d

    const/16 v12, 0x12c

    if-ge v11, v12, :cond_d

    .line 173
    const-string v12, "oem:qdcm:mode_7"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 174
    :cond_d
    const/16 v12, 0x12c

    if-lt v11, v12, :cond_e

    const/16 v12, 0x190

    if-ge v11, v12, :cond_e

    .line 175
    const-string v12, "oem:qdcm:mode_8"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    :cond_e
    const/16 v12, 0x190

    if-lt v11, v12, :cond_f

    const/16 v12, 0x1f4

    if-ge v11, v12, :cond_f

    .line 177
    const-string v12, "oem:qdcm:mode_9"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 178
    :cond_f
    const/16 v12, 0x1f4

    if-lt v11, v12, :cond_6

    const/16 v12, 0x258

    if-gt v11, v12, :cond_6

    .line 179
    const-string v12, "oem:qdcm:mode_10"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 184
    .end local v11    # "progress":I
    :cond_10
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_better_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    .line 186
    iget-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 187
    .local v6, "mNotificationManager":Landroid/app/NotificationManager;
    const-string v12, "disable_eyecare_keys"

    const/16 v13, 0x7e0

    invoke-virtual {v6, v12, v13}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 189
    iget v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I

    packed-switch v12, :pswitch_data_0

    .line 200
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setEyemodeValue()V

    goto/16 :goto_1

    .line 191
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setEyemodeValue()V

    goto/16 :goto_1

    .line 194
    :pswitch_1
    const-string v12, "oem:qdcm:mode_2"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 197
    :pswitch_2
    const-string v12, "oem:qdcm:mode_3"

    iput-object v12, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
