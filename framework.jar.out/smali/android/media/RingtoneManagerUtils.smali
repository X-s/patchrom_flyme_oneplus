.class public Landroid/media/RingtoneManagerUtils;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"


# static fields
.field private static DBG:Z = false

.field private static final DBG_LOGV:Z

.field private static MANAGED_RING_PATH:[Ljava/lang/String; = null

.field private static RINGPATH_FROM_TYPE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtoneManagerUtils"

.field private static final TYPE_SMS:I = 0x64


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    .line 77
    const-string/jumbo v0, "persist.debug.ringtone.all"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG_LOGV:Z

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 87
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 88
    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 89
    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, ""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 91
    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 86
    sput-object v0, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    .line 98
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 96
    sput-object v0, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtone_uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "pkgName":Ljava/lang/String;
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "confirmExternalPermission: check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 263
    .local v0, "isGranted":Z
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {p0, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 265
    const/4 v0, 0x1

    .line 267
    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No permission of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_2
    :goto_0
    return v0

    .line 269
    :cond_3
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "confirmExternalPermission: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] is not external uri."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getExternalPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "externalPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 281
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "externalPath":Ljava/lang/String;
    return-object v0
.end method

.method public static getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "strRingtoneTitle"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 111
    if-lt p1, v9, :cond_0

    if-gt p1, v7, :cond_0

    new-array v5, v9, [I

    const/16 v6, 0xf

    aput v6, v5, v8

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v4, v8

    const-string/jumbo v5, "oos_ring_ringtones_"

    aput-object v5, v4, v9

    const-string/jumbo v5, "oos_ring_notifications_"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string/jumbo v5, ""

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string/jumbo v5, "oos_ring_alarms_"

    aput-object v5, v4, v7

    .line 113
    .local v4, "strRingtoneType":[Ljava/lang/String;
    aget-object v5, v4, p1

    const-string/jumbo v6, ""

    if-eq v5, v6, :cond_0

    if-eqz p2, :cond_0

    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, "strOOS":Ljava/lang/String;
    const/4 v0, 0x0

    .line 116
    .local v0, "actualTitle":Ljava/lang/String;
    const v5, 0x10403e6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 119
    .local v1, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v1, v8, v8}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "actualTitle":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 125
    .end local v0    # "actualTitle":Ljava/lang/String;
    .end local v1    # "actualUri":Landroid/net/Uri;
    .local v3, "strOOS":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, "_"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, "resId":I
    if-lez v2, :cond_2

    .line 131
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 132
    if-eqz v0, :cond_0

    .line 134
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v8

    const v6, 0x10403e7

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 141
    .end local v2    # "resId":I
    .end local v3    # "strOOS":Ljava/lang/String;
    .end local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 122
    .local v0, "actualTitle":Ljava/lang/String;
    .local v3, "strOOS":Ljava/lang/String;
    .restart local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .local v3, "strOOS":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v0    # "actualTitle":Ljava/lang/String;
    .restart local v2    # "resId":I
    :cond_2
    sget-boolean v5, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "RingtoneManagerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getRingtoneAlias: resource not found - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 289
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 290
    const-string/jumbo v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string/jumbo v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 300
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    .line 301
    const-string/jumbo v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string/jumbo v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static ringtoneAudioIsSupported(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "isSupported":Z
    if-eqz p0, :cond_0

    .line 314
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, "fileType":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x13

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    .line 321
    .end local v0    # "fileType":I
    .end local v1    # "isSupported":Z
    :cond_0
    :goto_0
    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneAudioIsSupported: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v1

    .line 318
    .restart local v0    # "fileType":I
    .restart local v1    # "isSupported":Z
    :cond_1
    invoke-static {v0}, Landroid/media/MediaFile;->isLegacyAudioFileType(I)Z

    move-result v1

    .local v1, "isSupported":Z
    goto :goto_0

    .line 321
    .end local v0    # "fileType":I
    .end local v1    # "isSupported":Z
    :cond_2
    const-string/jumbo v2, "not "

    goto :goto_1
.end method

.method private static ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "isExisted":Z
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 337
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCheckFileExists: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "ringFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    const/4 v0, 0x1

    .line 343
    .end local v2    # "ringFile":Ljava/io/File;
    :cond_1
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v3, :cond_2

    const-string/jumbo v4, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCheckFileExists: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string/jumbo v3, "existed"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_2
    return v0

    .line 343
    :cond_3
    const-string/jumbo v3, "gone"

    goto :goto_0
.end method

.method private static ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v7, 0x0

    .line 355
    .local v7, "strRingMime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 356
    .local v5, "mediaExtractor":Landroid/media/MediaExtractor;
    const/4 v0, 0x0

    .line 358
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v6, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_1
    const-string/jumbo v9, "r"

    invoke-virtual {p0, p1, v9}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 360
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 362
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 363
    invoke-virtual {v6, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 364
    .local v3, "format":Landroid/media/MediaFormat;
    const-string/jumbo v9, "mime"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, "trackMime":Ljava/lang/String;
    const-string/jumbo v9, "RingtoneManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ringtoneCheckMimeType: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-eqz v8, :cond_4

    const-string/jumbo v9, "audio/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_4

    .line 368
    move-object v7, v8

    .line 377
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v7    # "strRingMime":Ljava/lang/String;
    .end local v8    # "trackMime":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 378
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 380
    :cond_1
    if-eqz v0, :cond_2

    .line 382
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v5, v6

    .line 389
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_3
    :goto_2
    return-object v7

    .line 362
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "format":Landroid/media/MediaFormat;
    .restart local v4    # "i":I
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v7    # "strRingMime":Ljava/lang/String;
    .restart local v8    # "trackMime":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v7    # "strRingMime":Ljava/lang/String;
    .end local v8    # "trackMime":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v9, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v7    # "strRingMime":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 375
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v2, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v9, "ringtoneCheckMimeType"

    invoke-static {v9, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    if-eqz v5, :cond_5

    .line 378
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 380
    :cond_5
    if-eqz v0, :cond_3

    .line 382
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 383
    :catch_2
    move-exception v1

    .line 384
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v9, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 377
    :goto_4
    if-eqz v5, :cond_6

    .line 378
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 380
    :cond_6
    if-eqz v0, :cond_7

    .line 382
    :try_start_5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 376
    :cond_7
    :goto_5
    throw v9

    .line 383
    :catch_3
    move-exception v1

    .line 384
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v10, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v5, "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_4

    .line 373
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_4
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_3
.end method

.method private static ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v3, 0x1

    .line 426
    .local v3, "isAlive":Z
    if-eqz p0, :cond_1

    .line 427
    const/4 v0, 0x0

    .line 430
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string/jumbo v4, "r"

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 438
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    if-nez v3, :cond_0

    .line 440
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v3

    .line 443
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "isAlive":Z
    :cond_0
    :goto_0
    sget-boolean v4, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v5, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCheckValid1: file_uri["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_3

    const-string/jumbo v4, "alive"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    return v3

    .line 435
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "isAlive":Z
    :catch_0
    move-exception v1

    .line 436
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "ringtoneCheckValid error"

    invoke-static {v4, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    if-nez v3, :cond_0

    .line 440
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v3

    .local v3, "isAlive":Z
    goto :goto_0

    .line 431
    .end local v1    # "ex":Ljava/lang/Exception;
    .local v3, "isAlive":Z
    :catch_1
    move-exception v2

    .line 433
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string/jumbo v4, "ringtoneCheckValid File Not Found"

    invoke-static {v4, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    const/4 v3, 0x0

    .line 438
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    if-nez v3, :cond_0

    .line 440
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v3

    .local v3, "isAlive":Z
    goto :goto_0

    .line 437
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .local v3, "isAlive":Z
    :catchall_0
    move-exception v4

    .line 438
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    if-nez v3, :cond_2

    .line 440
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v3

    .line 437
    .end local v3    # "isAlive":Z
    :cond_2
    throw v4

    .line 443
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_3
    const-string/jumbo v4, "gone"

    goto :goto_1
.end method

.method public static ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 398
    const/4 v2, 0x1

    .line 400
    .local v2, "isAlive":Z
    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v3}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    .line 400
    if-eqz v3, :cond_1

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3

    .line 400
    if-eqz v3, :cond_1

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 405
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 408
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 412
    .local v2, "isAlive":Z
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 416
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v2    # "isAlive":Z
    :cond_1
    :goto_0
    return v2

    .line 409
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .local v2, "isAlive":Z
    :catch_0
    move-exception v1

    .line 410
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "ringtoneCheckValid"

    invoke-static {v3, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_0

    .line 411
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 412
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 411
    throw v3
.end method

.method public static ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 461
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v16, p2

    .line 462
    .local v16, "ringtone_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v10

    .line 463
    .local v10, "externalPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 464
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_0

    .line 465
    const-string/jumbo v3, "RingtoneManagerUtils"

    const-string/jumbo v5, "Fail to acquire provider client. Skip the backup function in ringtoneCopyFrom3rdParty."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object p2

    .line 469
    :cond_0
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: pkg["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], ringType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], uri["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v5, v3, v6

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x64

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 473
    const/16 p1, 0x2

    .line 477
    :cond_2
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string/jumbo v3, "title"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string/jumbo v3, "_display_name"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string/jumbo v3, "mime_type"

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 479
    .local v4, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    .line 480
    .local v19, "strID":Ljava/lang/String;
    const/4 v8, 0x0

    .line 481
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 483
    .local v12, "newfile":Ljava/io/File;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 484
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_e

    .end local v12    # "newfile":Ljava/io/File;
    :cond_3
    :goto_0
    move-object v13, v12

    .line 485
    .local v13, "newfile":Ljava/io/File;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 487
    const-string/jumbo v3, "_data"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 488
    .local v22, "strRingPath":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 489
    .local v23, "strRingTitle":Ljava/lang/String;
    const-string/jumbo v3, "_display_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 490
    .local v18, "strDisplayName":Ljava/lang/String;
    const-string/jumbo v3, "mime_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 492
    .local v21, "strRingMime":Ljava/lang/String;
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' came from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_4
    const-string/jumbo v3, "audio/*"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 496
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 499
    :cond_5
    invoke-static/range {v21 .. v21}, Landroid/media/RingtoneManagerUtils;->ringtoneAudioIsSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 500
    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported mime type. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    const/4 v3, 0x0

    .line 596
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 597
    if-eqz v2, :cond_6

    .line 598
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 501
    :cond_6
    return-object v3

    .line 506
    :cond_7
    :try_start_2
    invoke-static/range {v22 .. v22}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static/range {v22 .. v22}, Landroid/media/RingtoneManagerUtils;->ringtoneIsManagedBySystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "."

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_a

    .line 507
    :cond_8
    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: ringtone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] will be handled by \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 596
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 597
    if-eqz v2, :cond_9

    .line 598
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 508
    :cond_9
    return-object v16

    .line 510
    :cond_a
    :try_start_3
    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: system will handle the backup event for ringtone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v5, 0x10

    const/4 v6, 0x0

    aput v5, v3, v6

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "from3rdParty_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 518
    .local v17, "strComposerName":Ljava/lang/String;
    const-string/jumbo v3, "."

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 521
    .local v24, "sub":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 522
    .local v20, "strNewTonePath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v14, "oldfile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 526
    .end local v13    # "newfile":Ljava/io/File;
    .local v12, "newfile":Ljava/io/File;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 527
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: remove the existed file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_b
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 529
    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 529
    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    :cond_c
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 535
    .local v25, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string/jumbo v3, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string/jumbo v3, "_display_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string/jumbo v3, "media_type"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string/jumbo v3, "composer"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_10

    .line 547
    const-string/jumbo v3, "is_ringtone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 555
    :goto_1
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 556
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: backup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to new file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_d
    invoke-static {v14, v12}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 558
    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: The customized ringtone from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] was saved as: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 561
    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 562
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: new ringtone_uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 596
    .end local v12    # "newfile":Ljava/io/File;
    .end local v14    # "oldfile":Ljava/io/File;
    .end local v17    # "strComposerName":Ljava/lang/String;
    .end local v18    # "strDisplayName":Ljava/lang/String;
    .end local v20    # "strNewTonePath":Ljava/lang/String;
    .end local v21    # "strRingMime":Ljava/lang/String;
    .end local v22    # "strRingPath":Ljava/lang/String;
    .end local v23    # "strRingTitle":Ljava/lang/String;
    .end local v24    # "sub":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    :cond_e
    :goto_2
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 597
    if-eqz v2, :cond_f

    .line 598
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 601
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_f
    :goto_3
    return-object v16

    .line 548
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "newfile":Ljava/io/File;
    .restart local v14    # "oldfile":Ljava/io/File;
    .restart local v17    # "strComposerName":Ljava/lang/String;
    .restart local v18    # "strDisplayName":Ljava/lang/String;
    .restart local v20    # "strNewTonePath":Ljava/lang/String;
    .restart local v21    # "strRingMime":Ljava/lang/String;
    .restart local v22    # "strRingPath":Ljava/lang/String;
    .restart local v23    # "strRingTitle":Ljava/lang/String;
    .restart local v24    # "sub":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_10
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 549
    :try_start_5
    const-string/jumbo v3, "is_notification"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 576
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "newfile":Ljava/io/File;
    .end local v14    # "oldfile":Ljava/io/File;
    .end local v17    # "strComposerName":Ljava/lang/String;
    .end local v18    # "strDisplayName":Ljava/lang/String;
    .end local v20    # "strNewTonePath":Ljava/lang/String;
    .end local v21    # "strRingMime":Ljava/lang/String;
    .end local v22    # "strRingPath":Ljava/lang/String;
    .end local v23    # "strRingTitle":Ljava/lang/String;
    .end local v24    # "sub":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 577
    .local v9, "ex":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    const-string/jumbo v3, "ringtoneCopyFrom3rdParty"

    invoke-static {v3, v9}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 578
    move-object/from16 v16, p2

    .line 579
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 580
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 581
    .local v11, "newFilePath":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 582
    if-eqz v11, :cond_11

    .line 583
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/media/RingtoneManagerUtils$2;

    invoke-direct {v5, v2, v11}, Landroid/media/RingtoneManagerUtils$2;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 596
    .end local v11    # "newFilePath":Ljava/lang/String;
    :cond_11
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 597
    if-eqz v2, :cond_f

    .line 598
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 551
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "newfile":Ljava/io/File;
    .restart local v14    # "oldfile":Ljava/io/File;
    .restart local v17    # "strComposerName":Ljava/lang/String;
    .restart local v18    # "strDisplayName":Ljava/lang/String;
    .restart local v20    # "strNewTonePath":Ljava/lang/String;
    .restart local v21    # "strRingMime":Ljava/lang/String;
    .restart local v22    # "strRingPath":Ljava/lang/String;
    .restart local v23    # "strRingTitle":Ljava/lang/String;
    .restart local v24    # "sub":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_12
    :try_start_7
    const-string/jumbo v3, "is_alarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 595
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "newfile":Ljava/io/File;
    .end local v14    # "oldfile":Ljava/io/File;
    .end local v17    # "strComposerName":Ljava/lang/String;
    .end local v18    # "strDisplayName":Ljava/lang/String;
    .end local v20    # "strNewTonePath":Ljava/lang/String;
    .end local v21    # "strRingMime":Ljava/lang/String;
    .end local v22    # "strRingPath":Ljava/lang/String;
    .end local v23    # "strRingTitle":Ljava/lang/String;
    .end local v24    # "sub":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    .line 596
    :goto_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 597
    if-eqz v2, :cond_13

    .line 598
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 595
    :cond_13
    throw v3

    .line 566
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "newfile":Ljava/io/File;
    .restart local v14    # "oldfile":Ljava/io/File;
    .restart local v17    # "strComposerName":Ljava/lang/String;
    .restart local v18    # "strDisplayName":Ljava/lang/String;
    .restart local v20    # "strNewTonePath":Ljava/lang/String;
    .restart local v21    # "strRingMime":Ljava/lang/String;
    .restart local v22    # "strRingPath":Ljava/lang/String;
    .restart local v23    # "strRingTitle":Ljava/lang/String;
    .restart local v24    # "sub":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_14
    :try_start_8
    const-string/jumbo v3, "RingtoneManagerUtils"

    const-string/jumbo v5, "ringtoneCopyFrom3rdParty: Copied file failed. Use the original rintone instead."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 568
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 570
    :cond_15
    move-object/from16 v16, p2

    goto/16 :goto_0

    .line 595
    .end local v12    # "newfile":Ljava/io/File;
    .end local v14    # "oldfile":Ljava/io/File;
    .end local v17    # "strComposerName":Ljava/lang/String;
    .end local v18    # "strDisplayName":Ljava/lang/String;
    .end local v20    # "strNewTonePath":Ljava/lang/String;
    .end local v21    # "strRingMime":Ljava/lang/String;
    .end local v22    # "strRingPath":Ljava/lang/String;
    .end local v23    # "strRingTitle":Ljava/lang/String;
    .end local v24    # "sub":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    .restart local v13    # "newfile":Ljava/io/File;
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13    # "newfile":Ljava/io/File;
    .restart local v12    # "newfile":Ljava/io/File;
    goto :goto_5

    .line 576
    .end local v12    # "newfile":Ljava/io/File;
    .restart local v13    # "newfile":Ljava/io/File;
    :catch_1
    move-exception v9

    .restart local v9    # "ex":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "newfile":Ljava/io/File;
    .restart local v12    # "newfile":Ljava/io/File;
    goto :goto_4

    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v12    # "newfile":Ljava/io/File;
    .restart local v13    # "newfile":Ljava/io/File;
    .restart local v18    # "strDisplayName":Ljava/lang/String;
    .restart local v21    # "strRingMime":Ljava/lang/String;
    .restart local v22    # "strRingPath":Ljava/lang/String;
    .restart local v23    # "strRingTitle":Ljava/lang/String;
    :cond_16
    move-object v12, v13

    .end local v13    # "newfile":Ljava/io/File;
    .restart local v12    # "newfile":Ljava/io/File;
    goto/16 :goto_0

    .end local v12    # "newfile":Ljava/io/File;
    .end local v18    # "strDisplayName":Ljava/lang/String;
    .end local v21    # "strRingMime":Ljava/lang/String;
    .end local v22    # "strRingPath":Ljava/lang/String;
    .end local v23    # "strRingTitle":Ljava/lang/String;
    .restart local v13    # "newfile":Ljava/io/File;
    :cond_17
    move-object v12, v13

    .end local v13    # "newfile":Ljava/io/File;
    .restart local v12    # "newfile":Ljava/io/File;
    goto/16 :goto_2
.end method

.method private static ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 644
    move-object v8, p1

    .line 645
    .local v8, "original_uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 646
    .local v10, "strID":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    const/4 v6, 0x0

    .line 648
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 649
    .local v10, "strID":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v13

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v4

    const-string/jumbo v0, "composer"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 650
    .local v2, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v13

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 651
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 653
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 655
    .local v12, "strRingPath":Ljava/lang/String;
    const-string/jumbo v0, "composer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 656
    .local v9, "strComposerName":Ljava/lang/String;
    invoke-static {v12}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    const-string/jumbo v0, "from3rdParty_"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const-string/jumbo v0, "_"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 658
    .local v11, "strOriginalID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://media/external/audio/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 659
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneGetOriginalUri: orig_Uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 662
    .end local v9    # "strComposerName":Ljava/lang/String;
    .end local v11    # "strOriginalID":Ljava/lang/String;
    .end local v12    # "strRingPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 663
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneGetOriginalUri "

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    const/4 v8, 0x0

    .line 666
    .local v8, "original_uri":Landroid/net/Uri;
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 672
    .end local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v8    # "original_uri":Landroid/net/Uri;
    .end local v10    # "strID":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneGetOriginalUri: file_uri["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] is from ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_2
    return-object v8

    .line 666
    .restart local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .local v8, "original_uri":Landroid/net/Uri;
    .restart local v10    # "strID":Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 665
    :catchall_0
    move-exception v0

    .line 666
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 665
    throw v0

    .line 669
    :cond_4
    const/4 v8, 0x0

    .local v8, "original_uri":Landroid/net/Uri;
    goto :goto_1
.end method

.method private static ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 610
    const/4 v8, 0x0

    .line 611
    .local v8, "ringPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 612
    .local v9, "strID":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v11

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v4

    .line 614
    .local v2, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 615
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 616
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 618
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 620
    .local v10, "strRingPath":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 621
    move-object v8, v10

    .line 628
    .end local v8    # "ringPath":Ljava/lang/String;
    .end local v10    # "strRingPath":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 632
    .end local v2    # "RINGTONE_COLUMN":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneGetPath: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] is located under "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_3
    return-object v8

    .line 625
    .restart local v2    # "RINGTONE_COLUMN":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "ringPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 626
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneGetPath"

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 627
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 628
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 627
    throw v0
.end method

.method private static ringtoneIsExternal(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "ringtone_uri"    # Landroid/net/Uri;

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "isExternal":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    const/4 v0, 0x1

    .line 685
    :cond_0
    return v0
.end method

.method private static ringtoneIsFromDefaultPath(Ljava/lang/String;)Z
    .locals 6
    .param p0, "strRingPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 693
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "externalPath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 695
    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "strCheckPath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 698
    const/4 v3, 0x1

    return v3

    .line 694
    .end local v2    # "strCheckPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_1
    return v5
.end method

.method private static ringtoneIsManagedBySystem(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "isManaged":Z
    if-eqz p0, :cond_4

    .line 712
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 713
    const/4 v1, 0x0

    .line 722
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 723
    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneIsManagedBySystem: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] will be managed by system."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_1
    :goto_1
    return v1

    .line 715
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 716
    sget-object v2, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 717
    const/4 v1, 0x1

    .line 718
    goto :goto_0

    .line 715
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 726
    .end local v0    # "i":I
    :cond_4
    const/4 v1, 0x1

    .line 727
    const-string/jumbo v2, "RingtoneManagerUtils"

    const-string/jumbo v3, "ringtoneIsManagedBySystem: ringPath is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "sound_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 739
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    const-string/jumbo v9, "ro.config."

    .line 742
    .local v9, "RO_PREFIX":Ljava/lang/String;
    const/16 v20, 0x0

    .line 744
    .local v20, "settingKey":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v21

    .line 745
    .local v21, "type":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 746
    .local v10, "actualDefaultSoundUri":Landroid/net/Uri;
    move-object/from16 v18, p3

    .line 747
    .local v18, "originalDefaultUri":Landroid/net/Uri;
    move-object/from16 v13, p3

    .line 749
    .local v13, "defaultUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 750
    .local v19, "ringerType":Ljava/lang/String;
    and-int/lit8 v2, v21, 0x1

    if-eqz v2, :cond_1

    .line 751
    const-string/jumbo v19, "is_ringtone"

    .line 753
    .end local v19    # "ringerType":Ljava/lang/String;
    :cond_1
    and-int/lit8 v2, v21, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, v21, 0x8

    if-eqz v2, :cond_3

    .line 754
    :cond_2
    const-string/jumbo v19, "is_notification"

    .line 756
    :cond_3
    and-int/lit8 v2, v21, 0x4

    if-eqz v2, :cond_4

    .line 757
    const-string/jumbo v19, "is_alarm"

    .line 760
    :cond_4
    if-eqz v19, :cond_9

    .line 761
    const-string/jumbo v2, "ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 762
    const-string/jumbo v20, "ringtone"

    .line 767
    .local v20, "settingKey":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 768
    .local v12, "defaultRingtoneName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 769
    .local v15, "fileName":Ljava/lang/String;
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_5
    const/4 v11, 0x0

    .line 771
    .local v11, "c":Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 772
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "=1 and Lower("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "_display_name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ")=?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 774
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 771
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 775
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 777
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 778
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 779
    .local v16, "id":J
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 780
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_6
    if-eqz p3, :cond_8

    if-eqz v10, :cond_8

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 783
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: Reset system default ringtone["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .end local v16    # "id":J
    :cond_8
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 795
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "defaultRingtoneName":Ljava/lang/String;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v20    # "settingKey":Ljava/lang/String;
    :cond_9
    :goto_1
    return-object v13

    .line 764
    .local v20, "settingKey":Ljava/lang/String;
    :cond_a
    move-object/from16 v20, p2

    .local v20, "settingKey":Ljava/lang/String;
    goto/16 :goto_0

    .line 788
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 789
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "ringtoneRestoreFromDefault"

    invoke-static {v2, v14}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 790
    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 791
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 790
    throw v2
.end method

.method private static ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;

    .prologue
    .line 807
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    .line 808
    const-string/jumbo v5, "ringtone"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 809
    const-string/jumbo v5, "notification_sound"

    const/4 v6, 0x1

    aput-object v5, v0, v6

    .line 810
    const-string/jumbo v5, "mms_notification"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    .line 811
    const-string/jumbo v5, "alarm_alert"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    .line 814
    .local v0, "DEVICE_RINGTONES":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 815
    .local v4, "strId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 816
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 817
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 818
    aget-object v5, v0, v2

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, "ringtoneSetting":Ljava/lang/String;
    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 820
    aget-object v5, v0, v2

    return-object v5

    .line 817
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    .end local v2    # "i":I
    .end local v3    # "ringtoneSetting":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "ringtone"

    return-object v5
.end method

.method private static ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    .line 834
    .local v0, "isAlive":Z
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 835
    if-eqz v0, :cond_1

    .line 836
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 837
    .local v2, "original_uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    .line 838
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 840
    .local v3, "strBkpRingPath":Ljava/lang/String;
    invoke-static {p0, v2}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 841
    const-string/jumbo v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneValidation: Removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v1, "oldfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    const-string/jumbo v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneValidation: Removing the backup ringtone in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 847
    :cond_0
    const/4 v0, 0x0

    .line 851
    .end local v0    # "isAlive":Z
    .end local v1    # "oldfile":Ljava/io/File;
    .end local v2    # "original_uri":Landroid/net/Uri;
    .end local v3    # "strBkpRingPath":Ljava/lang/String;
    :cond_1
    sget-boolean v4, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v5, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneValidation: file_uri["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_3

    const-string/jumbo v4, "alive"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_2
    return v0

    .line 851
    :cond_3
    const-string/jumbo v4, "gone"

    goto :goto_0
.end method

.method public static validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 149
    const/4 v0, 0x0

    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 150
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_3

    .line 151
    const/4 v2, 0x1

    .line 154
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v1

    .line 155
    :cond_1
    const-string/jumbo v2, "RingtoneManagerUtils"

    const-string/jumbo v3, "validForProvider: false"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v2, 0x0

    return v2

    .line 154
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 151
    :cond_2
    return v2

    .line 154
    :cond_3
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_1
    if-eqz v3, :cond_1

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_2
    move-exception v3

    goto :goto_1

    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :catch_3
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    :goto_3
    if-eqz v3, :cond_7

    :try_start_7
    throw v3

    :catch_4
    move-exception v4

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_3

    :cond_6
    if-eq v3, v4, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_1
    move-exception v2

    goto :goto_2
.end method

.method public static validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;
    .param p2, "sound_type"    # Ljava/lang/String;

    .prologue
    .line 171
    move-object v9, p1

    .line 172
    .local v9, "validUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 174
    :goto_0
    if-eqz p1, :cond_d

    if-eqz p0, :cond_d

    const-string/jumbo v10, "content"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 176
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_1

    .line 177
    const-string/jumbo v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fail to acquire provider client. Skip validForSound for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object p1

    .line 172
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_0
    const/4 v8, 0x0

    .local v8, "scheme":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v8    # "scheme":Ljava/lang/String;
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_1
    :try_start_0
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "validForSound from ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]: sound_uri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", sound_type("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    const-string/jumbo v10, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 185
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v10

    invoke-static {p0, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 187
    .local v0, "actualSoundUri":Landroid/net/Uri;
    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v1, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v1, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 188
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Valid ringtone("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_3
    const-string/jumbo v10, "mms_notification"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 190
    const-string/jumbo v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Return actualSoundUri for type["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v10, :cond_4

    .line 192
    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, " === Stack Dump Start === "

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, " === Stack Dump End === "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_4
    if-eqz v1, :cond_5

    .line 249
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 195
    :cond_5
    return-object v0

    .line 248
    :cond_6
    if-eqz v1, :cond_7

    .line 249
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 198
    :cond_7
    return-object p1

    .line 200
    :cond_8
    move-object v9, v0

    .line 204
    .end local v0    # "actualSoundUri":Landroid/net/Uri;
    :cond_9
    :try_start_1
    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v9, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 205
    invoke-static {v1, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "ringtonePath":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 207
    invoke-static {v5}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 208
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v4, "ringFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_a

    .line 211
    invoke-static {v1, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 212
    .local v3, "original_uri":Landroid/net/Uri;
    if-eqz v3, :cond_a

    if-eq v3, v9, :cond_a

    .line 213
    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, "validForSound: The backup ringtone was gone. Will use the original one instead."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object v9, v3

    .line 215
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_a

    const-string/jumbo v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "validForSound: validUri was changed to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v3    # "original_uri":Landroid/net/Uri;
    .end local v4    # "ringFile":Ljava/io/File;
    :cond_a
    invoke-static {v1, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 222
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_b

    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, "validForSound: Sound was gone."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_b
    if-nez p2, :cond_e

    invoke-static {p0, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "ringtone_type":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v1, v6, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 225
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/16 v11, 0x10

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eq p1, v9, :cond_c

    .line 226
    const-string/jumbo v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 227
    move-object v7, p1

    .line 229
    .local v7, "ringtone_uri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Landroid/media/RingtoneManagerUtils$1;

    invoke-direct {v11, v1, p1}, Landroid/media/RingtoneManagerUtils$1;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .end local v5    # "ringtonePath":Ljava/lang/String;
    .end local v6    # "ringtone_type":Ljava/lang/String;
    .end local v7    # "ringtone_uri":Landroid/net/Uri;
    :cond_c
    if-eqz v1, :cond_d

    .line 249
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 253
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_d
    :goto_2
    return-object v9

    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v5    # "ringtonePath":Ljava/lang/String;
    :cond_e
    move-object v6, p2

    .line 223
    goto :goto_1

    .line 245
    .end local v5    # "ringtonePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 246
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "validForSound"

    invoke-static {v10, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    if-eqz v1, :cond_d

    .line 249
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 247
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 248
    if-eqz v1, :cond_f

    .line 249
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 247
    :cond_f
    throw v10
.end method
