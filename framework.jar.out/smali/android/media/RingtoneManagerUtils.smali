.class public Landroid/media/RingtoneManagerUtils;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"


# static fields
.field private static DBG:Z = false

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

    .line 71
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 81
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 82
    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 83
    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, ""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 85
    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 80
    sput-object v0, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    .line 90
    new-array v0, v4, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 90
    sput-object v0, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtone_uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 240
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

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "isGranted":Z
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    invoke-virtual {p0, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 244
    const/4 v0, 0x1

    .line 246
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

    .line 250
    :cond_2
    :goto_0
    return v0

    .line 248
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
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "externalPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 260
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 261
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

    .line 105
    if-lt p1, v9, :cond_0

    if-gt p1, v7, :cond_0

    new-array v5, v9, [I

    const/16 v6, 0xf

    aput v6, v5, v8

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
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

    .line 107
    .local v4, "strRingtoneType":[Ljava/lang/String;
    aget-object v5, v4, p1

    const-string/jumbo v6, ""

    if-eq v5, v6, :cond_0

    if-eqz p2, :cond_0

    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, "strOOS":Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, "actualTitle":Ljava/lang/String;
    const v5, 0x10403e5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v1, v8, v8}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "actualTitle":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 119
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

    .line 122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, "resId":I
    if-lez v2, :cond_2

    .line 125
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 126
    if-eqz v0, :cond_0

    .line 128
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v8

    const v6, 0x10403e6

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 135
    .end local v2    # "resId":I
    .end local v3    # "strOOS":Ljava/lang/String;
    .end local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 116
    .local v0, "actualTitle":Ljava/lang/String;
    .local v3, "strOOS":Ljava/lang/String;
    .restart local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .local v3, "strOOS":Ljava/lang/String;
    goto :goto_0

    .line 131
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
    .line 268
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    :goto_0
    return-void

    .line 271
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
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "isSupported":Z
    if-eqz p0, :cond_0

    .line 282
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "fileType":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x13

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    .line 289
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

    .line 290
    return v1

    .line 286
    .restart local v0    # "fileType":I
    .restart local v1    # "isSupported":Z
    :cond_1
    invoke-static {v0}, Landroid/media/MediaFile;->isLegacyAudioFileType(I)Z

    move-result v1

    .local v1, "isSupported":Z
    goto :goto_0

    .line 289
    .end local v0    # "fileType":I
    .end local v1    # "isSupported":Z
    :cond_2
    const-string/jumbo v2, "not "

    goto :goto_1
.end method

.method private static ringtoneCheckExtraExternalFileExisted(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
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

    .line 301
    const/4 v9, 0x0

    .line 302
    .local v9, "isExisted":Z
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, "strID":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v13

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v4

    .line 304
    .local v2, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 305
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v11, v4, v13

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 306
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 308
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 310
    .local v12, "strRingPath":Ljava/lang/String;
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, "extPath":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneCheckExtraExternalFileExisted: strRingPath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v10, "ringFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v9, 0x1

    .line 323
    .end local v8    # "extPath":Ljava/lang/String;
    .end local v10    # "ringFile":Ljava/io/File;
    .end local v12    # "strRingPath":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    :cond_3
    :goto_0
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v1, "RingtoneManagerUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneCheckExtraExternalFileExisted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_5

    const-string/jumbo v0, "existed"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_4
    return v9

    .line 320
    :catch_0
    move-exception v7

    .line 321
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneCheckExtraExternalFileExisted"

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 322
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 323
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 322
    throw v0

    .line 326
    :cond_5
    const-string/jumbo v0, "gone"

    goto :goto_1
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
    .line 337
    const/4 v7, 0x0

    .line 338
    .local v7, "strRingMime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 339
    .local v5, "mediaExtractor":Landroid/media/MediaExtractor;
    const/4 v0, 0x0

    .line 341
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v6, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_1
    const-string/jumbo v9, "r"

    invoke-virtual {p0, p1, v9}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 343
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 345
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 346
    invoke-virtual {v6, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 347
    .local v3, "format":Landroid/media/MediaFormat;
    const-string/jumbo v9, "mime"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 348
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

    .line 350
    if-eqz v8, :cond_4

    const-string/jumbo v9, "audio/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_4

    .line 351
    move-object v7, v8

    .line 360
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v7    # "strRingMime":Ljava/lang/String;
    .end local v8    # "trackMime":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 361
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 363
    :cond_1
    if-eqz v0, :cond_2

    .line 365
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v5, v6

    .line 372
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_3
    :goto_2
    return-object v7

    .line 345
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "format":Landroid/media/MediaFormat;
    .restart local v4    # "i":I
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v7    # "strRingMime":Ljava/lang/String;
    .restart local v8    # "trackMime":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v7    # "strRingMime":Ljava/lang/String;
    .end local v8    # "trackMime":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v9, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v7    # "strRingMime":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 358
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v2, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v9, "ringtoneCheckMimeType"

    invoke-static {v9, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    if-eqz v5, :cond_5

    .line 361
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 363
    :cond_5
    if-eqz v0, :cond_3

    .line 365
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 366
    :catch_2
    move-exception v1

    .line 367
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v9, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 360
    :goto_4
    if-eqz v5, :cond_6

    .line 361
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 363
    :cond_6
    if-eqz v0, :cond_7

    .line 365
    :try_start_5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 359
    :cond_7
    :goto_5
    throw v9

    .line 366
    :catch_3
    move-exception v1

    .line 367
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v10, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v5, "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_4

    .line 356
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
    .line 406
    const/4 v3, 0x1

    .line 407
    .local v3, "isAlive":Z
    if-eqz p0, :cond_2

    .line 408
    const/4 v0, 0x0

    .line 411
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string/jumbo v4, "r"

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 416
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 418
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 424
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 425
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckExtraExternalFileExisted(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v3

    .line 427
    .end local v3    # "isAlive":Z
    :cond_1
    sget-boolean v4, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v5, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCheckValid: file_uri["

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

    .line 429
    :cond_2
    return v3

    .line 419
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "isAlive":Z
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ringtoneCheckValid Exception on fd closing"

    invoke-static {v4, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 412
    .end local v1    # "e":Ljava/io/IOException;
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "ringtoneCheckValid"

    invoke-static {v4, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    const/4 v3, 0x0

    goto :goto_0

    .line 415
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4

    .line 427
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "isAlive":Z
    :cond_3
    const-string/jumbo v4, "gone"

    goto :goto_1
.end method

.method public static ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 381
    const/4 v2, 0x1

    .line 383
    .local v2, "isAlive":Z
    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v3}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3

    .line 383
    if-eqz v3, :cond_1

    .line 385
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 386
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 389
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 393
    .local v2, "isAlive":Z
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 397
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v2    # "isAlive":Z
    :cond_1
    :goto_0
    return v2

    .line 390
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .local v2, "isAlive":Z
    :catch_0
    move-exception v1

    .line 391
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "ringtoneCheckValid"

    invoke-static {v3, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 392
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 393
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 392
    throw v3
.end method

.method public static ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 445
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v16, p2

    .line 446
    .local v16, "ringtone_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "externalPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 448
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_0

    .line 449
    const-string/jumbo v3, "RingtoneManagerUtils"

    const-string/jumbo v5, "Fail to acquire provider client. Skip the backup function in ringtoneCopyFrom3rdParty."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-object p2

    .line 453
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

    .line 456
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

    .line 457
    const/16 p1, 0x2

    .line 461
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

    .line 463
    .local v4, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    .line 464
    .local v19, "strID":Ljava/lang/String;
    const/4 v8, 0x0

    .line 465
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 467
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

    .line 468
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_e

    .end local v12    # "newfile":Ljava/io/File;
    :cond_3
    :goto_0
    move-object v13, v12

    .line 469
    .local v13, "newfile":Ljava/io/File;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 471
    const-string/jumbo v3, "_data"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 472
    .local v22, "strRingPath":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 473
    .local v23, "strRingTitle":Ljava/lang/String;
    const-string/jumbo v3, "_display_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 474
    .local v18, "strDisplayName":Ljava/lang/String;
    const-string/jumbo v3, "mime_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 476
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

    .line 479
    :cond_4
    const-string/jumbo v3, "audio/*"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 480
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 483
    :cond_5
    invoke-static/range {v21 .. v21}, Landroid/media/RingtoneManagerUtils;->ringtoneAudioIsSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 484
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

    .line 485
    const/4 v3, 0x0

    .line 580
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 581
    if-eqz v2, :cond_6

    .line 582
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 485
    :cond_6
    return-object v3

    .line 490
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

    .line 491
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

    .line 580
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 581
    if-eqz v2, :cond_9

    .line 582
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 492
    :cond_9
    return-object v16

    .line 494
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

    .line 497
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v5, 0x10

    const/4 v6, 0x0

    aput v5, v3, v6

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 499
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

    .line 502
    .local v17, "strComposerName":Ljava/lang/String;
    const-string/jumbo v3, "."

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 505
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

    .line 506
    .local v20, "strNewTonePath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v14, "oldfile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 510
    .end local v13    # "newfile":Ljava/io/File;
    .local v12, "newfile":Ljava/io/File;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 511
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

    .line 512
    :cond_b
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 513
    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 514
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

    .line 513
    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 518
    :cond_c
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 519
    .local v25, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string/jumbo v3, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string/jumbo v3, "_display_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string/jumbo v3, "media_type"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string/jumbo v3, "composer"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_10

    .line 531
    const-string/jumbo v3, "is_ringtone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 539
    :goto_1
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 540
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

    .line 541
    :cond_d
    invoke-static {v14, v12}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 542
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

    .line 543
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 545
    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 546
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

    .line 580
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

    .line 581
    if-eqz v2, :cond_f

    .line 582
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 585
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_f
    :goto_3
    return-object v16

    .line 532
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

    .line 533
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

    .line 560
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

    .line 561
    .local v9, "ex":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    const-string/jumbo v3, "ringtoneCopyFrom3rdParty"

    invoke-static {v3, v9}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 562
    move-object/from16 v16, p2

    .line 563
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 564
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 565
    .local v11, "newFilePath":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 566
    if-eqz v11, :cond_11

    .line 567
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/media/RingtoneManagerUtils$2;

    invoke-direct {v5, v2, v11}, Landroid/media/RingtoneManagerUtils$2;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 580
    .end local v11    # "newFilePath":Ljava/lang/String;
    :cond_11
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 581
    if-eqz v2, :cond_f

    .line 582
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 535
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

    .line 579
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

    .line 580
    :goto_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 581
    if-eqz v2, :cond_13

    .line 582
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 579
    :cond_13
    throw v3

    .line 550
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

    .line 551
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 552
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 554
    :cond_15
    move-object/from16 v16, p2

    goto/16 :goto_0

    .line 579
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

    .line 560
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

    .line 628
    move-object v8, p1

    .line 629
    .local v8, "original_uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 630
    .local v10, "strID":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    const/4 v6, 0x0

    .line 632
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 633
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

    .line 634
    .local v2, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v13

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 635
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 637
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 639
    .local v12, "strRingPath":Ljava/lang/String;
    const-string/jumbo v0, "composer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 640
    .local v9, "strComposerName":Ljava/lang/String;
    invoke-static {v12}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    const-string/jumbo v0, "from3rdParty_"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const-string/jumbo v0, "_"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 642
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

    .line 643
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

    .line 646
    .end local v9    # "strComposerName":Ljava/lang/String;
    .end local v11    # "strOriginalID":Ljava/lang/String;
    .end local v12    # "strRingPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 647
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneGetOriginalUri "

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    const/4 v8, 0x0

    .line 650
    .local v8, "original_uri":Landroid/net/Uri;
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 656
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

    .line 657
    :cond_2
    return-object v8

    .line 650
    .restart local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .local v8, "original_uri":Landroid/net/Uri;
    .restart local v10    # "strID":Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 649
    :catchall_0
    move-exception v0

    .line 650
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 649
    throw v0

    .line 653
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

    .line 594
    const/4 v8, 0x0

    .line 595
    .local v8, "ringPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 596
    .local v9, "strID":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v11

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v4

    .line 598
    .local v2, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 599
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 600
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 602
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 604
    .local v10, "strRingPath":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 605
    move-object v8, v10

    .line 612
    .end local v8    # "ringPath":Ljava/lang/String;
    .end local v10    # "strRingPath":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 616
    .end local v2    # "RINGTONE_COLUMN":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

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

    .line 617
    :cond_3
    return-object v8

    .line 609
    .restart local v2    # "RINGTONE_COLUMN":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "ringPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 610
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneGetPath"

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 611
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 612
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 611
    throw v0
.end method

.method private static ringtoneIsExternal(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "ringtone_uri"    # Landroid/net/Uri;

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
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

    .line 667
    const/4 v0, 0x1

    .line 669
    :cond_0
    return v0
.end method

.method private static ringtoneIsFromDefaultPath(Ljava/lang/String;)Z
    .locals 6
    .param p0, "strRingPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 677
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "externalPath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 679
    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 680
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

    .line 681
    .local v2, "strCheckPath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    const/4 v3, 0x1

    return v3

    .line 678
    .end local v2    # "strCheckPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    :cond_1
    return v5
.end method

.method private static ringtoneIsManagedBySystem(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 694
    const/4 v1, 0x0

    .line 695
    .local v1, "isManaged":Z
    if-eqz p0, :cond_4

    .line 696
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 697
    const/4 v1, 0x0

    .line 706
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 707
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

    .line 713
    :cond_1
    :goto_1
    return v1

    .line 699
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 700
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

    .line 701
    const/4 v1, 0x1

    .line 702
    goto :goto_0

    .line 699
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 710
    .end local v0    # "i":I
    :cond_4
    const/4 v1, 0x1

    .line 711
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
    .line 723
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

    .line 725
    :cond_0
    const-string/jumbo v9, "ro.config."

    .line 726
    .local v9, "RO_PREFIX":Ljava/lang/String;
    const/16 v20, 0x0

    .line 728
    .local v20, "settingKey":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v21

    .line 729
    .local v21, "type":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 730
    .local v10, "actualDefaultSoundUri":Landroid/net/Uri;
    move-object/from16 v18, p3

    .line 731
    .local v18, "originalDefaultUri":Landroid/net/Uri;
    move-object/from16 v13, p3

    .line 733
    .local v13, "defaultUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 734
    .local v19, "ringerType":Ljava/lang/String;
    and-int/lit8 v2, v21, 0x1

    if-eqz v2, :cond_1

    .line 735
    const-string/jumbo v19, "is_ringtone"

    .line 737
    .end local v19    # "ringerType":Ljava/lang/String;
    :cond_1
    and-int/lit8 v2, v21, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, v21, 0x8

    if-eqz v2, :cond_3

    .line 738
    :cond_2
    const-string/jumbo v19, "is_notification"

    .line 740
    :cond_3
    and-int/lit8 v2, v21, 0x4

    if-eqz v2, :cond_4

    .line 741
    const-string/jumbo v19, "is_alarm"

    .line 744
    :cond_4
    if-eqz v19, :cond_9

    .line 745
    const-string/jumbo v2, "ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 746
    const-string/jumbo v20, "ringtone"

    .line 751
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

    .line 752
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

    .line 753
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

    .line 754
    :cond_5
    const/4 v11, 0x0

    .line 755
    .local v11, "c":Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 756
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 757
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

    .line 758
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 755
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 759
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 761
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 762
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 763
    .local v16, "id":J
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 764
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

    .line 765
    :cond_6
    if-eqz p3, :cond_8

    if-eqz v10, :cond_8

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 767
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

    .line 768
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    .end local v16    # "id":J
    :cond_8
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 779
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "defaultRingtoneName":Ljava/lang/String;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v20    # "settingKey":Ljava/lang/String;
    :cond_9
    :goto_1
    return-object v13

    .line 748
    .local v20, "settingKey":Ljava/lang/String;
    :cond_a
    move-object/from16 v20, p2

    .local v20, "settingKey":Ljava/lang/String;
    goto/16 :goto_0

    .line 772
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 773
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "ringtoneRestoreFromDefault"

    invoke-static {v2, v14}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 774
    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 775
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 774
    throw v2
.end method

.method private static ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;

    .prologue
    .line 791
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    .line 792
    const-string/jumbo v5, "ringtone"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 793
    const-string/jumbo v5, "notification_sound"

    const/4 v6, 0x1

    aput-object v5, v0, v6

    .line 794
    const-string/jumbo v5, "mms_notification"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    .line 795
    const-string/jumbo v5, "alarm_alert"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    .line 798
    .local v0, "DEVICE_RINGTONES":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, "strId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 800
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 801
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 802
    aget-object v5, v0, v2

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
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

    .line 804
    aget-object v5, v0, v2

    return-object v5

    .line 801
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 808
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
    .line 817
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    .line 818
    .local v0, "isAlive":Z
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 819
    if-eqz v0, :cond_1

    .line 820
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 821
    .local v2, "original_uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    .line 822
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "strBkpRingPath":Ljava/lang/String;
    invoke-static {p0, v2}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 825
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

    .line 826
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    .local v1, "oldfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 828
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

    .line 829
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 831
    :cond_0
    const/4 v0, 0x0

    .line 835
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

    .line 837
    :cond_2
    return v0

    .line 835
    :cond_3
    const-string/jumbo v4, "gone"

    goto :goto_0
.end method

.method public static validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;
    .param p2, "sound_type"    # Ljava/lang/String;

    .prologue
    .line 150
    move-object v9, p1

    .line 151
    .local v9, "validUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 153
    :goto_0
    if-eqz p1, :cond_d

    if-eqz p0, :cond_d

    const-string/jumbo v10, "content"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 155
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_1

    .line 156
    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, "Fail to acquire provider client. Skip validForSound."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object p1

    .line 151
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_0
    const/4 v8, 0x0

    .local v8, "scheme":Ljava/lang/String;
    goto :goto_0

    .line 161
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

    .line 163
    :cond_2
    const-string/jumbo v10, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 164
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v10

    invoke-static {p0, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 166
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

    .line 167
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

    .line 168
    :cond_3
    const-string/jumbo v10, "mms_notification"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 169
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

    .line 170
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_4

    .line 171
    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, " === Stack Dump Start === "

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, " === Stack Dump End === "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_4
    if-eqz v1, :cond_5

    .line 228
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 174
    :cond_5
    return-object v0

    .line 227
    :cond_6
    if-eqz v1, :cond_7

    .line 228
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 177
    :cond_7
    return-object p1

    .line 179
    :cond_8
    move-object v9, v0

    .line 183
    .end local v0    # "actualSoundUri":Landroid/net/Uri;
    :cond_9
    :try_start_1
    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v9, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 184
    invoke-static {v1, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "ringtonePath":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 186
    invoke-static {v5}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 187
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v4, "ringFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_a

    .line 190
    invoke-static {v1, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 191
    .local v3, "original_uri":Landroid/net/Uri;
    if-eqz v3, :cond_a

    if-eq v3, v9, :cond_a

    .line 192
    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, "validForSound: The backup ringtone was gone. Will use the original one instead."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object v9, v3

    .line 194
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

    .line 200
    .end local v3    # "original_uri":Landroid/net/Uri;
    .end local v4    # "ringFile":Ljava/io/File;
    :cond_a
    invoke-static {v1, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 201
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_b

    const-string/jumbo v10, "RingtoneManagerUtils"

    const-string/jumbo v11, "validForSound: Sound was gone."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_b
    if-nez p2, :cond_e

    invoke-static {p0, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "ringtone_type":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v1, v6, v9}, Landroid/media/RingtoneManagerUtils;->ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 204
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/16 v11, 0x10

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eq p1, v9, :cond_c

    .line 205
    const-string/jumbo v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 206
    move-object v7, p1

    .line 208
    .local v7, "ringtone_uri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Landroid/media/RingtoneManagerUtils$1;

    invoke-direct {v11, v1, p1}, Landroid/media/RingtoneManagerUtils$1;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v5    # "ringtonePath":Ljava/lang/String;
    .end local v6    # "ringtone_type":Ljava/lang/String;
    .end local v7    # "ringtone_uri":Landroid/net/Uri;
    :cond_c
    if-eqz v1, :cond_d

    .line 228
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 232
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_d
    :goto_2
    return-object v9

    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v5    # "ringtonePath":Ljava/lang/String;
    :cond_e
    move-object v6, p2

    .line 202
    goto :goto_1

    .line 224
    .end local v5    # "ringtonePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 225
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "validForSound"

    invoke-static {v10, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    if-eqz v1, :cond_d

    .line 228
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 226
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 227
    if-eqz v1, :cond_f

    .line 228
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 226
    :cond_f
    throw v10
.end method
