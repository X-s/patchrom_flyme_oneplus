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
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    .line 85
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 63
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtone_uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "pkgName":Ljava/lang/String;
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmExternalPermission: check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 226
    .local v0, "isGranted":Z
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {p0, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 228
    const/4 v0, 0x1

    .line 230
    :cond_1
    if-nez v0, :cond_2

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No permission of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_2
    :goto_0
    return v0

    .line 232
    :cond_3
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmExternalPermission: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not external uri."

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
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "externalPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 244
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 245
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

    .line 100
    if-lt p1, v9, :cond_0

    if-gt p1, v7, :cond_0

    new-array v5, v9, [I

    const/16 v6, 0xf

    aput v6, v5, v8

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v8

    const-string/jumbo v5, "oos_ring_ringtones_"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const-string/jumbo v6, "oos_ring_notifications_"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, ""

    aput-object v6, v4, v5

    const-string/jumbo v5, "oos_ring_alarms_"

    aput-object v5, v4, v7

    .line 102
    .local v4, "strRingtoneType":[Ljava/lang/String;
    aget-object v5, v4, p1

    const-string v6, ""

    if-eq v5, v6, :cond_0

    if-eqz p2, :cond_0

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "strOOS":Ljava/lang/String;
    const/4 v0, 0x0

    .line 105
    .local v0, "actualTitle":Ljava/lang/String;
    const v5, 0x10403a5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v1, v8, v8}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 114
    .end local v1    # "actualUri":Landroid/net/Uri;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    const-string v7, "android"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, "resId":I
    if-lez v2, :cond_2

    .line 120
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 121
    if-eqz v0, :cond_0

    .line 123
    const v5, 0x10403a6

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 130
    .end local v0    # "actualTitle":Ljava/lang/String;
    .end local v2    # "resId":I
    .end local v3    # "strOOS":Ljava/lang/String;
    .end local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 111
    .restart local v0    # "actualTitle":Ljava/lang/String;
    .restart local v3    # "strOOS":Ljava/lang/String;
    .restart local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 126
    .restart local v2    # "resId":I
    :cond_2
    sget-boolean v5, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "RingtoneManagerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRingtoneAlias: resource not found - "

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
    .line 252
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

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
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "isSupported":Z
    if-eqz p0, :cond_0

    .line 266
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "fileType":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    .line 273
    .end local v0    # "fileType":I
    :cond_0
    :goto_0
    const-string v3, "RingtoneManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneAudioIsSupported: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v1

    .line 270
    .restart local v0    # "fileType":I
    :cond_1
    invoke-static {v0}, Landroid/media/MediaFile;->isLegacyAudioFileType(I)Z

    move-result v1

    goto :goto_0

    .line 273
    .end local v0    # "fileType":I
    :cond_2
    const-string/jumbo v2, "not "

    goto :goto_1
.end method

.method private static ringtoneCheckExtraExternalFileExisted(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 13
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 285
    const/4 v9, 0x0

    .line 286
    .local v9, "isExisted":Z
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "strID":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 288
    .local v2, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 289
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 290
    if-eqz v6, :cond_3

    .line 292
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 294
    .local v12, "strRingPath":Ljava/lang/String;
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, "extPath":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "RingtoneManagerUtils"

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

    .line 297
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v10, "ringFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v9, 0x1

    .line 307
    .end local v8    # "extPath":Ljava/lang/String;
    .end local v10    # "ringFile":Ljava/io/File;
    .end local v12    # "strRingPath":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 310
    :cond_3
    :goto_0
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_4

    const-string v1, "RingtoneManagerUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneCheckExtraExternalFileExisted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_5

    const-string v0, "existed"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_4
    return v9

    .line 304
    :catch_0
    move-exception v7

    .line 305
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneCheckExtraExternalFileExisted"

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 310
    :cond_5
    const-string v0, "gone"

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
    .line 321
    const/4 v7, 0x0

    .line 322
    .local v7, "strRingMime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 323
    .local v5, "mediaExtractor":Landroid/media/MediaExtractor;
    const/4 v0, 0x0

    .line 325
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v6, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_1
    const-string/jumbo v9, "r"

    invoke-virtual {p0, p1, v9}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 329
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 330
    invoke-virtual {v6, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 331
    .local v3, "format":Landroid/media/MediaFormat;
    const-string/jumbo v9, "mime"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "trackMime":Ljava/lang/String;
    const-string v9, "RingtoneManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ringtoneCheckMimeType: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v8, :cond_3

    const-string v9, "audio/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_3

    .line 335
    move-object v7, v8

    .line 344
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v8    # "trackMime":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 345
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 347
    :cond_1
    if-eqz v0, :cond_7

    .line 349
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 356
    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_2
    :goto_1
    return-object v7

    .line 329
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v3    # "format":Landroid/media/MediaFormat;
    .restart local v4    # "i":I
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v8    # "trackMime":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v8    # "trackMime":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v9, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v5, v6

    .line 352
    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_1

    .line 340
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    :goto_2
    move-object v2, v9

    .line 342
    .local v2, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v9, "ringtoneCheckMimeType"

    invoke-static {v9, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    if-eqz v5, :cond_4

    .line 345
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 347
    :cond_4
    if-eqz v0, :cond_2

    .line 349
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 350
    :catch_2
    move-exception v1

    .line 351
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v9, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v5, :cond_5

    .line 345
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 347
    :cond_5
    if-eqz v0, :cond_6

    .line 349
    :try_start_5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 352
    :cond_6
    :goto_5
    throw v9

    .line 350
    :catch_3
    move-exception v1

    .line 351
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "ringtoneCheckMimeType Exception on fd closing"

    invoke-static {v10, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 340
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    :goto_6
    move-object v2, v9

    goto :goto_3

    .line 344
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_4

    .line 340
    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_5
    move-exception v9

    move-object v5, v6

    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_6

    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_6
    move-exception v9

    move-object v5, v6

    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_2

    .end local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_7
    move-object v5, v6

    .end local v6    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v5    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_1
.end method

.method private static ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v2, 0x1

    .line 391
    .local v2, "isAlive":Z
    if-eqz p0, :cond_2

    .line 392
    const/4 v0, 0x0

    .line 395
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string/jumbo v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 402
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 409
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckExtraExternalFileExisted(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v2

    .line 411
    :cond_1
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_2

    const-string v4, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCheckValid: file_uri["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_4

    const-string v3, "alive"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_2
    return v2

    .line 403
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ringtoneCheckValid Exception on fd closing"

    invoke-static {v3, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 396
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v3, "ringtoneCheckValid"

    invoke-static {v3, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    const/4 v2, 0x0

    .line 400
    if-eqz v0, :cond_0

    .line 402
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 403
    :catch_2
    move-exception v1

    .line 404
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ringtoneCheckValid Exception on fd closing"

    invoke-static {v3, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 400
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 402
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 405
    :cond_3
    :goto_3
    throw v3

    .line 403
    :catch_3
    move-exception v1

    .line 404
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "ringtoneCheckValid Exception on fd closing"

    invoke-static {v4, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 411
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const-string v3, "gone"

    goto :goto_1

    .line 396
    :catch_4
    move-exception v3

    move-object v1, v3

    goto :goto_2
.end method

.method public static ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 365
    const/4 v2, 0x1

    .line 367
    .local v2, "isAlive":Z
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v3}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 370
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 373
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 377
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 381
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_1
    :goto_0
    return v2

    .line 374
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v1

    .line 375
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "ringtoneCheckValid"

    invoke-static {v3, v1}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
.end method

.method public static ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 429
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v16, p2

    .line 430
    .local v16, "ringtone_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, "externalPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 432
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_1

    .line 433
    const-string v3, "RingtoneManagerUtils"

    const-string v5, "Fail to acquire provider client. Skip the backup function in ringtoneCopyFrom3rdParty."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v16

    .line 569
    :cond_0
    :goto_0
    return-object v3

    .line 437
    :cond_1
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: pkg["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], ringType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], uri["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x64

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 441
    const/16 p1, 0x2

    .line 445
    :cond_3
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "title"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "_display_name"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "mime_type"

    aput-object v5, v4, v3

    .line 447
    .local v4, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    .line 448
    .local v19, "strID":Ljava/lang/String;
    const/4 v8, 0x0

    .line 449
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 451
    .local v12, "newfile":Ljava/io/File;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

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

    .line 452
    if-eqz v8, :cond_d

    move-object v13, v12

    .line 453
    .end local v12    # "newfile":Ljava/io/File;
    .local v13, "newfile":Ljava/io/File;
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 455
    const-string v3, "_data"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 456
    .local v22, "strRingPath":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 457
    .local v23, "strRingTitle":Ljava/lang/String;
    const-string v3, "_display_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 458
    .local v18, "strDisplayName":Ljava/lang/String;
    const-string/jumbo v3, "mime_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 460
    .local v21, "strRingMime":Ljava/lang/String;
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' came from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_4
    const-string v3, "audio/*"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 464
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 467
    :cond_5
    invoke-static/range {v21 .. v21}, Landroid/media/RingtoneManagerUtils;->ringtoneAudioIsSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 468
    const-string v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported mime type. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 469
    const/4 v3, 0x0

    .line 564
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 565
    if-eqz v2, :cond_0

    .line 566
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 474
    :cond_6
    :try_start_2
    invoke-static/range {v22 .. v22}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static/range {v22 .. v22}, Landroid/media/RingtoneManagerUtils;->ringtoneIsManagedBySystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "."

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_9

    .line 475
    :cond_7
    const-string v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: ringtone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] will be handled by \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 564
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 565
    if-eqz v2, :cond_8

    .line 566
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 478
    :cond_9
    :try_start_3
    const-string v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: system will handle the backup event for ringtone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from3rdParty_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 486
    .local v17, "strComposerName":Ljava/lang/String;
    const-string v3, "."

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 489
    .local v24, "sub":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 490
    .local v20, "strNewTonePath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v14, "oldfile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 494
    .end local v13    # "newfile":Ljava/io/File;
    .restart local v12    # "newfile":Ljava/io/File;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 495
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "RingtoneManagerUtils"

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

    .line 496
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 497
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 502
    :cond_b
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v25, "values":Landroid/content/ContentValues;
    const-string v3, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v3, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v3, "_display_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string/jumbo v3, "media_type"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const-string v3, "composer"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_f

    .line 515
    const-string/jumbo v3, "is_ringtone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 523
    :goto_2
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 524
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: backup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to new file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_c
    invoke-static {v14, v12}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 526
    const-string v3, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCopyFrom3rdParty: The customized ringtone from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] was saved as: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 529
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 530
    sget-boolean v3, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "RingtoneManagerUtils"

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

    .line 564
    .end local v14    # "oldfile":Ljava/io/File;
    .end local v17    # "strComposerName":Ljava/lang/String;
    .end local v18    # "strDisplayName":Ljava/lang/String;
    .end local v20    # "strNewTonePath":Ljava/lang/String;
    .end local v21    # "strRingMime":Ljava/lang/String;
    .end local v22    # "strRingPath":Ljava/lang/String;
    .end local v23    # "strRingTitle":Ljava/lang/String;
    .end local v24    # "sub":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    :cond_d
    :goto_3
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 565
    if-eqz v2, :cond_e

    .line 566
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_e
    :goto_4
    move-object/from16 v3, v16

    .line 569
    goto/16 :goto_0

    .line 516
    .restart local v14    # "oldfile":Ljava/io/File;
    .restart local v17    # "strComposerName":Ljava/lang/String;
    .restart local v18    # "strDisplayName":Ljava/lang/String;
    .restart local v20    # "strNewTonePath":Ljava/lang/String;
    .restart local v21    # "strRingMime":Ljava/lang/String;
    .restart local v22    # "strRingPath":Ljava/lang/String;
    .restart local v23    # "strRingTitle":Ljava/lang/String;
    .restart local v24    # "sub":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_f
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 517
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

    goto/16 :goto_2

    .line 544
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

    .line 545
    .local v9, "ex":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    const-string/jumbo v3, "ringtoneCopyFrom3rdParty"

    invoke-static {v3, v9}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 546
    move-object/from16 v16, p2

    .line 547
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 548
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 549
    .local v11, "newFilePath":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 550
    if-eqz v11, :cond_10

    .line 551
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/media/RingtoneManagerUtils$2;

    invoke-direct {v5, v2, v11}, Landroid/media/RingtoneManagerUtils$2;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 564
    .end local v11    # "newFilePath":Ljava/lang/String;
    :cond_10
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 565
    if-eqz v2, :cond_e

    .line 566
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    .line 519
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v14    # "oldfile":Ljava/io/File;
    .restart local v17    # "strComposerName":Ljava/lang/String;
    .restart local v18    # "strDisplayName":Ljava/lang/String;
    .restart local v20    # "strNewTonePath":Ljava/lang/String;
    .restart local v21    # "strRingMime":Ljava/lang/String;
    .restart local v22    # "strRingPath":Ljava/lang/String;
    .restart local v23    # "strRingTitle":Ljava/lang/String;
    .restart local v24    # "sub":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_11
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

    goto/16 :goto_2

    .line 564
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

    :goto_6
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 565
    if-eqz v2, :cond_12

    .line 566
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_12
    throw v3

    .line 534
    .restart local v14    # "oldfile":Ljava/io/File;
    .restart local v17    # "strComposerName":Ljava/lang/String;
    .restart local v18    # "strDisplayName":Ljava/lang/String;
    .restart local v20    # "strNewTonePath":Ljava/lang/String;
    .restart local v21    # "strRingMime":Ljava/lang/String;
    .restart local v22    # "strRingPath":Ljava/lang/String;
    .restart local v23    # "strRingTitle":Ljava/lang/String;
    .restart local v24    # "sub":Ljava/lang/String;
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_13
    :try_start_8
    const-string v3, "RingtoneManagerUtils"

    const-string/jumbo v5, "ringtoneCopyFrom3rdParty: Copied file failed. Use the original rintone instead."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 536
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 538
    :cond_14
    move-object/from16 v16, p2

    .end local v14    # "oldfile":Ljava/io/File;
    .end local v17    # "strComposerName":Ljava/lang/String;
    .end local v20    # "strNewTonePath":Ljava/lang/String;
    .end local v24    # "sub":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    :cond_15
    :goto_7
    move-object v13, v12

    .line 542
    .end local v12    # "newfile":Ljava/io/File;
    .restart local v13    # "newfile":Ljava/io/File;
    goto/16 :goto_1

    .line 564
    .end local v18    # "strDisplayName":Ljava/lang/String;
    .end local v21    # "strRingMime":Ljava/lang/String;
    .end local v22    # "strRingPath":Ljava/lang/String;
    .end local v23    # "strRingTitle":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13    # "newfile":Ljava/io/File;
    .restart local v12    # "newfile":Ljava/io/File;
    goto :goto_6

    .line 544
    .end local v12    # "newfile":Ljava/io/File;
    .restart local v13    # "newfile":Ljava/io/File;
    :catch_1
    move-exception v9

    move-object v12, v13

    .end local v13    # "newfile":Ljava/io/File;
    .restart local v12    # "newfile":Ljava/io/File;
    goto :goto_5

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
    goto :goto_7

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
    goto/16 :goto_3
.end method

.method private static ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 612
    move-object v8, p1

    .line 613
    .local v8, "original_uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 614
    .local v10, "strID":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const/4 v6, 0x0

    .line 616
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 617
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "composer"

    aput-object v1, v2, v0

    .line 618
    .local v2, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 619
    if-eqz v6, :cond_4

    .line 621
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 622
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 623
    .local v12, "strRingPath":Ljava/lang/String;
    const-string v0, "composer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 624
    .local v9, "strComposerName":Ljava/lang/String;
    invoke-static {v12}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    const-string v0, "from3rdParty_"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const-string v0, "_"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 626
    .local v11, "strOriginalID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 627
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RingtoneManagerUtils"

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

    .line 630
    .end local v9    # "strComposerName":Ljava/lang/String;
    .end local v11    # "strOriginalID":Ljava/lang/String;
    .end local v12    # "strRingPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 631
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneGetOriginalUri "

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    const/4 v8, 0x0

    .line 634
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 640
    .end local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneGetOriginalUri: file_uri["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] is from ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    return-object v8

    .line 634
    .restart local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 637
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 578
    const/4 v8, 0x0

    .line 579
    .local v8, "ringPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 580
    .local v9, "strID":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 582
    .local v2, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 583
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 584
    if-eqz v6, :cond_2

    .line 586
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 588
    .local v10, "strRingPath":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 589
    move-object v8, v10

    .line 596
    .end local v10    # "strRingPath":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 600
    .end local v2    # "RINGTONE_COLUMN":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneGetPath: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] is located under "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_3
    return-object v8

    .line 593
    .restart local v2    # "RINGTONE_COLUMN":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 594
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ringtoneGetPath"

    invoke-static {v0, v7}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static ringtoneIsExternal(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "ringtone_uri"    # Landroid/net/Uri;

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
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

    .line 651
    const/4 v0, 0x1

    .line 653
    :cond_0
    return v0
.end method

.method private static ringtoneIsFromDefaultPath(Ljava/lang/String;)Z
    .locals 5
    .param p0, "strRingPath"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "externalPath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 663
    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "strCheckPath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    const/4 v3, 0x1

    .line 670
    .end local v2    # "strCheckPath":Ljava/lang/String;
    :goto_1
    return v3

    .line 662
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static ringtoneIsManagedBySystem(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, "isManaged":Z
    if-eqz p0, :cond_4

    .line 680
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 681
    const/4 v1, 0x0

    .line 690
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 691
    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneIsManagedBySystem: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be managed by system."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1
    :goto_1
    return v1

    .line 683
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 684
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

    .line 685
    const/4 v1, 0x1

    .line 686
    goto :goto_0

    .line 683
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 694
    .end local v0    # "i":I
    :cond_4
    const/4 v1, 0x1

    .line 695
    const-string v2, "RingtoneManagerUtils"

    const-string/jumbo v3, "ringtoneIsManagedBySystem: ringPath is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 20
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
    .line 707
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RingtoneManagerUtils"

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

    .line 709
    :cond_0
    const-string/jumbo v9, "ro.config."

    .line 710
    .local v9, "RO_PREFIX":Ljava/lang/String;
    const/16 v18, 0x0

    .line 711
    .local v18, "settingKey":Ljava/lang/String;
    move-object/from16 v12, p3

    .line 713
    .local v12, "defaultUri":Landroid/net/Uri;
    invoke-static/range {p2 .. p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v19

    .line 714
    .local v19, "type":I
    const/4 v15, 0x0

    .line 716
    .local v15, "ringerType":Ljava/lang/String;
    and-int/lit8 v2, v19, 0x1

    if-eqz v2, :cond_1

    .line 717
    const-string/jumbo v15, "is_ringtone"

    .line 720
    :cond_1
    and-int/lit8 v2, v19, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, v19, 0x3

    if-eqz v2, :cond_3

    .line 721
    :cond_2
    const-string/jumbo v15, "is_notification"

    .line 724
    :cond_3
    and-int/lit8 v2, v19, 0x4

    if-eqz v2, :cond_4

    .line 725
    const-string/jumbo v15, "is_alarm"

    .line 728
    :cond_4
    if-eqz v15, :cond_8

    .line 729
    const-string/jumbo v2, "ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 730
    const-string/jumbo v18, "ringtone"

    .line 735
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

    move-result-object v11

    .line 736
    .local v11, "defaultRingtoneName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 737
    .local v14, "fileName":Ljava/lang/String;
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_5
    const/4 v10, 0x0

    .line 739
    .local v10, "c":Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "=1 and Lower("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_display_name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")=?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 743
    if-eqz v10, :cond_8

    .line 745
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 746
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 747
    .local v16, "id":J
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 748
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    .end local v16    # "id":J
    :cond_7
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 758
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "defaultRingtoneName":Ljava/lang/String;
    .end local v14    # "fileName":Ljava/lang/String;
    :cond_8
    :goto_1
    return-object v12

    .line 732
    :cond_9
    move-object/from16 v18, p2

    goto/16 :goto_0

    .line 751
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v11    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v14    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 752
    .local v13, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "ringtoneRestoreFromDefault"

    invoke-static {v2, v13}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v13    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;

    .prologue
    .line 770
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ringtone"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "notification_sound"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "mms_notification"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "alarm_alert"

    aput-object v6, v0, v5

    .line 777
    .local v0, "DEVICE_RINGTONES":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, "strId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 779
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 780
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 781
    aget-object v5, v0, v2

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 782
    .local v3, "ringtoneSetting":Ljava/lang/String;
    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 783
    aget-object v5, v0, v2

    .line 787
    .end local v2    # "i":I
    .end local v3    # "ringtoneSetting":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 780
    .restart local v2    # "i":I
    .restart local v3    # "ringtoneSetting":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    .end local v2    # "i":I
    .end local v3    # "ringtoneSetting":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "ringtone"

    goto :goto_1
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
    .line 796
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    .line 797
    .local v0, "isAlive":Z
    invoke-static {p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 798
    if-eqz v0, :cond_1

    .line 799
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 800
    .local v2, "original_uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    .line 801
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "strBkpRingPath":Ljava/lang/String;
    invoke-static {p0, v2}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 804
    const-string v4, "RingtoneManagerUtils"

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

    .line 805
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    .local v1, "oldfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    const-string v4, "RingtoneManagerUtils"

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

    .line 808
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 810
    :cond_0
    const/4 v0, 0x0

    .line 814
    .end local v1    # "oldfile":Ljava/io/File;
    .end local v2    # "original_uri":Landroid/net/Uri;
    .end local v3    # "strBkpRingPath":Ljava/lang/String;
    :cond_1
    sget-boolean v4, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string v5, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneValidation: file_uri["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_3

    const-string v4, "alive"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_2
    return v0

    .line 814
    :cond_3
    const-string v4, "gone"

    goto :goto_0
.end method

.method public static validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;
    .param p2, "sound_type"    # Ljava/lang/String;

    .prologue
    .line 145
    move-object v8, p1

    .line 147
    .local v8, "validUri":Landroid/net/Uri;
    if-eqz v8, :cond_8

    if-eqz p0, :cond_8

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 149
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_0

    .line 150
    const-string v10, "RingtoneManagerUtils"

    const-string v11, "Fail to acquire provider client. Skip validForSound."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 216
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .end local v8    # "validUri":Landroid/net/Uri;
    .local v9, "validUri":Landroid/net/Uri;
    :goto_0
    return-object v9

    .line 155
    .end local v9    # "validUri":Landroid/net/Uri;
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v8    # "validUri":Landroid/net/Uri;
    :cond_0
    :try_start_0
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_1

    const-string v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "validForSound from ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: sound_uri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 158
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-static {v8}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v10

    invoke-static {p0, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 160
    .local v0, "actualSoundUri":Landroid/net/Uri;
    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v1, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v1, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    .line 211
    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v9, v8

    .end local v8    # "validUri":Landroid/net/Uri;
    .restart local v9    # "validUri":Landroid/net/Uri;
    goto :goto_0

    .line 163
    .end local v9    # "validUri":Landroid/net/Uri;
    .restart local v8    # "validUri":Landroid/net/Uri;
    :cond_3
    move-object v8, v0

    .line 167
    .end local v0    # "actualSoundUri":Landroid/net/Uri;
    :cond_4
    :try_start_1
    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v8, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 168
    invoke-static {v1, v8}, Landroid/media/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "ringtonePath":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 170
    invoke-static {v5}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 171
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v4, "ringFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5

    .line 174
    invoke-static {v1, v8}, Landroid/media/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 175
    .local v3, "original_uri":Landroid/net/Uri;
    if-eqz v3, :cond_5

    if-eq v3, v8, :cond_5

    .line 176
    const-string v10, "RingtoneManagerUtils"

    const-string/jumbo v11, "validForSound: The backup ringtone was gone. Will use the original one instead."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object v8, v3

    .line 178
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_5

    const-string v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "validForSound: validUri was changed to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v3    # "original_uri":Landroid/net/Uri;
    .end local v4    # "ringFile":Ljava/io/File;
    :cond_5
    invoke-static {v1, v8}, Landroid/media/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 185
    sget-boolean v10, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_6

    const-string v10, "RingtoneManagerUtils"

    const-string/jumbo v11, "validForSound: Sound was gone."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_6
    if-nez p2, :cond_9

    invoke-static {p0, v8}, Landroid/media/RingtoneManagerUtils;->ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "ringtone_type":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v1, v6, v8}, Landroid/media/RingtoneManagerUtils;->ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 188
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0x10

    aput v12, v10, v11

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eq p1, v8, :cond_7

    .line 189
    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v10}, Landroid/media/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 190
    move-object v7, p1

    .line 192
    .local v7, "ringtone_uri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Landroid/media/RingtoneManagerUtils$1;

    invoke-direct {v11, v1, v7}, Landroid/media/RingtoneManagerUtils$1;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v5    # "ringtonePath":Ljava/lang/String;
    .end local v6    # "ringtone_type":Ljava/lang/String;
    .end local v7    # "ringtone_uri":Landroid/net/Uri;
    :cond_7
    if-eqz v1, :cond_8

    .line 212
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_8
    :goto_2
    move-object v9, v8

    .line 216
    .end local v8    # "validUri":Landroid/net/Uri;
    .restart local v9    # "validUri":Landroid/net/Uri;
    goto/16 :goto_0

    .end local v9    # "validUri":Landroid/net/Uri;
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v5    # "ringtonePath":Ljava/lang/String;
    .restart local v8    # "validUri":Landroid/net/Uri;
    :cond_9
    move-object v6, p2

    .line 186
    goto :goto_1

    .line 208
    .end local v5    # "ringtonePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "validForSound"

    invoke-static {v10, v2}, Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    if-eqz v1, :cond_8

    .line 212
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 211
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_a

    .line 212
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_a
    throw v10
.end method
