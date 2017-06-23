.class public Landroid/media/RingtoneManagerUtils;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"


# static fields
.field private static final DBG:Z

.field private static MANAGED_RING_PATH:[Ljava/lang/String; = null

.field private static RINGPATH_FROM_TYPE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtoneManagerUtils"

.field private static final TYPE_SMS:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    .line 81
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "/kugouRing/"

    aput-object v1, v0, v2

    const-string v1, "/netease/"

    aput-object v1, v0, v3

    const-string v1, "/KuwoMusic/"

    aput-object v1, v0, v4

    const-string v1, "/.ringtones/"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    return v0
.end method

.method private static getExternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "externalPath":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 191
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 192
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local v1    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_0
    return-object v0
.end method

.method public static getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "strRingtoneTitle"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 97
    if-lez p1, :cond_0

    if-ge p1, v6, :cond_0

    invoke-static {}, Landroid/util/OpFeatures;->isSupportedRingtoneAlias()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v8

    const-string/jumbo v5, "uc_ringtones_"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const-string/jumbo v6, "uc_notifications_"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "uc_alarms_"

    aput-object v6, v4, v5

    .line 99
    .local v4, "strRingtoneType":[Ljava/lang/String;
    aget-object v5, v4, p1

    const-string v6, ""

    if-eq v5, v6, :cond_0

    if-eqz p2, :cond_0

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "strH2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 102
    .local v0, "actualTitle":Ljava/lang/String;
    const v5, 0x10403ca

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v1, v8, v8}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .end local v1    # "actualUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    const-string v7, "com.hydrogen"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 114
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 115
    if-eqz v0, :cond_0

    .line 117
    const v5, 0x10403cb

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 122
    .end local v0    # "actualTitle":Ljava/lang/String;
    .end local v2    # "resId":I
    .end local v3    # "strH2":Ljava/lang/String;
    .end local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_0
    return-object p2

    .line 108
    .restart local v0    # "actualTitle":Ljava/lang/String;
    .restart local v3    # "strH2":Ljava/lang/String;
    .restart local v4    # "strRingtoneType":[Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static ringtoneCheckExtraExternalFileExisted(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 203
    const/4 v8, 0x0

    .line 204
    .local v8, "isExisted":Z
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "strID":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 206
    .local v2, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 207
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    if-eqz v6, :cond_3

    .line 210
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "strRingPath":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-static {p0}, Landroid/media/RingtoneManagerUtils;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneCheckExtraExternalFileExisted: strRingPath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v9, "ringFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v8, 0x1

    .line 224
    .end local v9    # "ringFile":Ljava/io/File;
    .end local v11    # "strRingPath":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 227
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

    if-eqz v8, :cond_5

    const-string v0, "existed"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_4
    return v8

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtoneManagerUtils"

    const-string/jumbo v1, "ringtoneCheckExtraExternalFileExisted Exception: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 227
    :cond_5
    const-string v0, "gone"

    goto :goto_1
.end method

.method private static ringtoneCheckMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 237
    const/4 v5, 0x0

    .line 238
    .local v5, "strRingMime":Ljava/lang/String;
    const/4 v3, 0x0

    .line 240
    .local v3, "mediaExtractor":Landroid/media/MediaExtractor;
    :try_start_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .local v4, "mediaExtractor":Landroid/media/MediaExtractor;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, p0, p1, v7}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 242
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 243
    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 244
    .local v1, "format":Landroid/media/MediaFormat;
    const-string/jumbo v7, "mime"

    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "trackMime":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v7, "audio/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_3

    .line 247
    move-object v5, v6

    .line 255
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v6    # "trackMime":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_5

    .line 256
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    move-object v3, v4

    .line 260
    .end local v2    # "i":I
    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_1
    :goto_1
    sget-boolean v7, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "RingtoneManagerUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ringtoneCheckMimeType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    return-object v5

    .line 242
    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v1    # "format":Landroid/media/MediaFormat;
    .restart local v2    # "i":I
    .restart local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v6    # "trackMime":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v2    # "i":I
    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .end local v6    # "trackMime":Ljava/lang/String;
    .restart local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string v7, "RingtoneManagerUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ringtoneCheckMimeType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    .line 255
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_4

    .line 256
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    throw v7

    .line 255
    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_3

    .line 251
    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_2

    .end local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v2    # "i":I
    .restart local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    :cond_5
    move-object v3, v4

    .end local v4    # "mediaExtractor":Landroid/media/MediaExtractor;
    .restart local v3    # "mediaExtractor":Landroid/media/MediaExtractor;
    goto :goto_1
.end method

.method private static ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 270
    const/4 v2, 0x1

    .line 271
    .local v2, "isAlive":Z
    const/4 v1, 0x0

    .line 272
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 274
    .local v3, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    .line 281
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 288
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckExtraExternalFileExisted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 290
    :cond_1
    sget-boolean v4, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string v5, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCheckValid: file_uri["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_4

    const-string v4, "alive"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_2
    return v2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "RingtoneManagerUtils"

    const-string/jumbo v5, "ringtoneCheckValid IOException: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtoneCheckValid Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    const/4 v2, 0x0

    .line 279
    if-eqz v1, :cond_0

    .line 281
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 282
    :catch_2
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "RingtoneManagerUtils"

    const-string/jumbo v5, "ringtoneCheckValid IOException: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 281
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 284
    :cond_3
    :goto_3
    throw v4

    .line 282
    :catch_3
    move-exception v0

    .line 283
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "RingtoneManagerUtils"

    const-string/jumbo v6, "ringtoneCheckValid IOException: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const-string v4, "gone"

    goto :goto_1

    .line 275
    :catch_4
    move-exception v4

    move-object v0, v4

    goto :goto_2
.end method

.method public static ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 307
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v14, p2

    .line 308
    .local v14, "ringtone_uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 310
    .local v10, "isManagedby3rdParty":Z
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCopyFrom3rdParty: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 314
    const/16 p1, 0x2

    .line 318
    :cond_1
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "mime_type"

    aput-object v3, v4, v2

    .line 320
    .local v4, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    .line 321
    .local v17, "strID":Ljava/lang/String;
    const/4 v8, 0x0

    .line 323
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 324
    if-eqz v8, :cond_d

    .line 326
    :cond_2
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 327
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 329
    .local v20, "strRingPath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v14

    .line 414
    .end local v20    # "strRingPath":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 333
    .restart local v20    # "strRingPath":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v2, "title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 334
    .local v21, "strRingTitle":Ljava/lang/String;
    const-string v2, "_display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 335
    .local v16, "strDisplayName":Ljava/lang/String;
    const-string/jumbo v2, "mime_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 338
    .local v19, "strRingMime":Ljava/lang/String;
    const-string v2, "audio/*"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    invoke-static/range {v20 .. v20}, Landroid/media/RingtoneManagerUtils;->ringtoneIsManagedByPath(Ljava/lang/String;)Z

    move-result v10

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 343
    :cond_4
    if-eqz v19, :cond_5

    invoke-static/range {v19 .. v19}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_6

    .line 344
    :cond_5
    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported mime type. ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    const/4 v2, 0x0

    .line 411
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 349
    :cond_6
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from3rdParty_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 353
    .local v15, "strComposerName":Ljava/lang/String;
    const-string v22, ""

    .line 354
    .local v22, "sub":Ljava/lang/String;
    const-string v2, "."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_e

    if-nez v10, :cond_e

    .line 355
    const-string v2, "."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/media/RingtoneManagerUtils;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, "strNewTonePath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v12, "oldfile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v11, "newfile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 367
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCopyFrom3rdParty: remove the existed file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    :cond_8
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 375
    .local v23, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v2, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "_display_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v2, "mime_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v2, "media_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v2, "composer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_f

    .line 386
    const-string/jumbo v2, "is_ringtone"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    :goto_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 395
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCopyFrom3rdParty: backup "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to new file = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_9
    invoke-static {v12, v11}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 400
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 401
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCopyFrom3rdParty: ringtone_uri = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", strNewTonePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_b
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtoneCopyFrom3rdParty: The customized ringtone from ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] was saved as: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    .end local v11    # "newfile":Ljava/io/File;
    .end local v12    # "oldfile":Ljava/io/File;
    .end local v15    # "strComposerName":Ljava/lang/String;
    .end local v16    # "strDisplayName":Ljava/lang/String;
    .end local v18    # "strNewTonePath":Ljava/lang/String;
    .end local v19    # "strRingMime":Ljava/lang/String;
    .end local v20    # "strRingPath":Ljava/lang/String;
    .end local v21    # "strRingTitle":Ljava/lang/String;
    .end local v22    # "sub":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_c
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_d
    :goto_2
    move-object v2, v14

    .line 414
    goto/16 :goto_0

    .line 411
    .restart local v15    # "strComposerName":Ljava/lang/String;
    .restart local v16    # "strDisplayName":Ljava/lang/String;
    .restart local v19    # "strRingMime":Ljava/lang/String;
    .restart local v20    # "strRingPath":Ljava/lang/String;
    .restart local v21    # "strRingTitle":Ljava/lang/String;
    .restart local v22    # "sub":Ljava/lang/String;
    :cond_e
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v14

    goto/16 :goto_0

    .line 387
    .restart local v11    # "newfile":Ljava/io/File;
    .restart local v12    # "oldfile":Ljava/io/File;
    .restart local v18    # "strNewTonePath":Ljava/lang/String;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 388
    :try_start_3
    const-string/jumbo v2, "is_notification"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 408
    .end local v11    # "newfile":Ljava/io/File;
    .end local v12    # "oldfile":Ljava/io/File;
    .end local v15    # "strComposerName":Ljava/lang/String;
    .end local v16    # "strDisplayName":Ljava/lang/String;
    .end local v18    # "strNewTonePath":Ljava/lang/String;
    .end local v19    # "strRingMime":Ljava/lang/String;
    .end local v20    # "strRingPath":Ljava/lang/String;
    .end local v21    # "strRingTitle":Ljava/lang/String;
    .end local v22    # "sub":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 409
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "RingtoneManagerUtils"

    const-string/jumbo v3, "ringtoneCopyFrom3rdParty Exception: "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 411
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 390
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v11    # "newfile":Ljava/io/File;
    .restart local v12    # "oldfile":Ljava/io/File;
    .restart local v15    # "strComposerName":Ljava/lang/String;
    .restart local v16    # "strDisplayName":Ljava/lang/String;
    .restart local v18    # "strNewTonePath":Ljava/lang/String;
    .restart local v19    # "strRingMime":Ljava/lang/String;
    .restart local v20    # "strRingPath":Ljava/lang/String;
    .restart local v21    # "strRingTitle":Ljava/lang/String;
    .restart local v22    # "sub":Ljava/lang/String;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :cond_10
    :try_start_5
    const-string/jumbo v2, "is_alarm"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 411
    .end local v11    # "newfile":Ljava/io/File;
    .end local v12    # "oldfile":Ljava/io/File;
    .end local v15    # "strComposerName":Ljava/lang/String;
    .end local v16    # "strDisplayName":Ljava/lang/String;
    .end local v18    # "strNewTonePath":Ljava/lang/String;
    .end local v19    # "strRingMime":Ljava/lang/String;
    .end local v20    # "strRingPath":Ljava/lang/String;
    .end local v21    # "strRingTitle":Ljava/lang/String;
    .end local v22    # "sub":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static ringtoneIsExternal(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "ringtone_uri"    # Landroid/net/Uri;

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "isExternal":Z
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 427
    :cond_0
    return v0
.end method

.method private static ringtoneIsFromDefaultPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strRingPath"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 435
    sget-object v2, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/media/RingtoneManagerUtils;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "strCheckPath":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const/4 v2, 0x1

    .line 442
    .end local v1    # "strCheckPath":Ljava/lang/String;
    :goto_1
    return v2

    .line 434
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static ringtoneIsManaged(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 451
    const/4 v8, 0x0

    .line 452
    .local v8, "isManaged":Z
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "strID":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 454
    .local v2, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 455
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 456
    if-eqz v6, :cond_3

    .line 458
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 460
    .local v10, "strRingPath":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 461
    invoke-static {v10}, Landroid/media/RingtoneManagerUtils;->ringtoneIsManagedByPath(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 463
    :cond_1
    if-eqz v8, :cond_0

    .line 470
    .end local v10    # "strRingPath":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 473
    :cond_3
    :goto_0
    return v8

    .line 467
    :catch_0
    move-exception v7

    .line 468
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtoneManagerUtils"

    const-string/jumbo v1, "ringtoneIsManaged Exception: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static ringtoneIsManagedByPath(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, "isManaged":Z
    if-eqz p0, :cond_0

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/RingtoneManagerUtils;->MANAGED_RING_PATH:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    const/4 v1, 0x1

    .line 487
    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneIsManagedByPath: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is managed by 3rd party application."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 484
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static ringtoneRestoreFromDefault(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "sound_uri"    # Landroid/net/Uri;

    .prologue
    .line 501
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    const-string/jumbo v10, "ro.config."

    .line 504
    .local v10, "RO_PREFIX":Ljava/lang/String;
    const/16 v19, 0x0

    .line 505
    .local v19, "settingKey":Ljava/lang/String;
    move-object/from16 v13, p2

    .line 507
    .local v13, "defaultUri":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v21

    .line 508
    .local v21, "type":I
    const/16 v18, 0x0

    .line 510
    .local v18, "ringerType":Ljava/lang/String;
    and-int/lit8 v2, v21, 0x1

    if-eqz v2, :cond_1

    .line 511
    const-string/jumbo v18, "is_ringtone"

    .line 514
    :cond_1
    and-int/lit8 v2, v21, 0x2

    if-eqz v2, :cond_2

    .line 515
    const-string/jumbo v18, "is_notification"

    .line 518
    :cond_2
    and-int/lit8 v2, v21, 0x4

    if-eqz v2, :cond_3

    .line 519
    const-string/jumbo v18, "is_alarm"

    .line 522
    :cond_3
    if-eqz v18, :cond_7

    .line 523
    const-string/jumbo v2, "ringtone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 524
    const-string/jumbo v19, "ringtone"

    .line 529
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 530
    .local v12, "defaultRingtoneName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 531
    .local v14, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v14, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 532
    .local v20, "title":Ljava/lang/String;
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_4
    const/4 v11, 0x0

    .line 535
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1 and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 539
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 540
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 541
    .local v16, "id":J
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 542
    sget-boolean v2, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .end local v16    # "id":J
    :cond_6
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 551
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "defaultRingtoneName":Ljava/lang/String;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    :cond_7
    :goto_1
    return-object v13

    .line 526
    :cond_8
    move-object/from16 v19, p1

    goto/16 :goto_0

    .line 545
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v20    # "title":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 546
    .local v15, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "RingtoneManagerUtils"

    const-string/jumbo v3, "ringtoneRestoreFromDefault RemoteException: "

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;

    .prologue
    .line 563
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ringtone"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "notification_sound"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "mms_notification"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "alarm_alert"

    aput-object v5, v0, v4

    .line 570
    .local v0, "DEVICE_RINGTONES":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "strId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 572
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "ringtoneSetting":Ljava/lang/String;
    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    aget-object v4, v0, v1

    .line 580
    .end local v1    # "i":I
    .end local v2    # "ringtoneSetting":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 572
    .restart local v1    # "i":I
    .restart local v2    # "ringtoneSetting":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v1    # "i":I
    .end local v2    # "ringtoneSetting":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "ringtone"

    goto :goto_1
.end method

.method private static ringtoneValidation(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .prologue
    .line 588
    const/4 v8, 0x1

    .line 590
    .local v8, "isAlive":Z
    if-eqz p1, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 591
    invoke-static/range {p0 .. p1}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    .line 592
    if-eqz v8, :cond_4

    .line 593
    const/4 v6, 0x0

    .line 594
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 595
    .local v12, "strID":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "composer"

    aput-object v1, v2, v0

    .line 596
    .local v2, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 597
    if-eqz v6, :cond_4

    .line 599
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 601
    .local v14, "strRingPath":Ljava/lang/String;
    const-string v0, "composer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 602
    .local v11, "strComposerName":Ljava/lang/String;
    invoke-static {p0, v14}, Landroid/media/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v11, :cond_0

    const-string v0, "from3rdParty_"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 604
    .local v13, "strOriginalID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 605
    .local v10, "orig_Uri":Landroid/net/Uri;
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneValidation: orig_Uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    invoke-static {p0, v10}, Landroid/media/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneValidation: Removing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    .local v9, "oldfile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneValidation: Removing the backup ringtone in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_2
    const/4 v8, 0x0

    .line 622
    .end local v9    # "oldfile":Ljava/io/File;
    .end local v10    # "orig_Uri":Landroid/net/Uri;
    .end local v11    # "strComposerName":Ljava/lang/String;
    .end local v13    # "strOriginalID":Ljava/lang/String;
    .end local v14    # "strRingPath":Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 626
    .end local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "strID":Ljava/lang/String;
    :cond_4
    :goto_0
    sget-boolean v0, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_5

    const-string v1, "RingtoneManagerUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneValidation: file_uri["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v8, :cond_6

    const-string v0, "alive"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_5
    return v8

    .line 619
    .restart local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "strID":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 620
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtoneManagerUtils"

    const-string/jumbo v1, "ringtoneValidation Exception: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 626
    .end local v2    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "strID":Ljava/lang/String;
    :cond_6
    const-string v0, "gone"

    goto :goto_1
.end method

.method public static validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;
    .param p2, "sound_type"    # Ljava/lang/String;

    .prologue
    .line 135
    move-object v4, p1

    .line 136
    .local v4, "validUri":Landroid/net/Uri;
    if-eqz v4, :cond_5

    if-eqz p0, :cond_5

    .line 138
    sget-boolean v5, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "RingtoneManagerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validForSound from ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: sound_uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v5

    invoke-static {p0, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "acturl_sound_uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Landroid/media/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    .end local v0    # "acturl_sound_uri":Landroid/net/Uri;
    .end local p1    # "sound_uri":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 147
    .restart local v0    # "acturl_sound_uri":Landroid/net/Uri;
    .restart local p1    # "sound_uri":Landroid/net/Uri;
    :cond_1
    move-object v4, v0

    .line 151
    .end local v0    # "acturl_sound_uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v4}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 153
    invoke-static {p0, v4}, Landroid/media/RingtoneManagerUtils;->ringtoneIsManaged(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object p1, v4

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    invoke-static {p0, v4}, Landroid/media/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 158
    sget-boolean v5, Landroid/media/RingtoneManagerUtils;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "RingtoneManagerUtils"

    const-string/jumbo v6, "validForSound: Sound was gone."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_4
    if-nez p2, :cond_6

    invoke-static {p0, v4}, Landroid/media/RingtoneManagerUtils;->ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "ringtone_type":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v2, v4}, Landroid/media/RingtoneManagerUtils;->ringtoneRestoreFromDefault(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 161
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eq p1, v4, :cond_5

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 163
    .local v1, "resolver":Landroid/content/ContentResolver;
    move-object v3, p1

    .line 164
    .local v3, "ringtone_uri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Landroid/media/RingtoneManagerUtils$1;

    invoke-direct {v6, v1, v3}, Landroid/media/RingtoneManagerUtils$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "ringtone_type":Ljava/lang/String;
    .end local v3    # "ringtone_uri":Landroid/net/Uri;
    :cond_5
    move-object p1, v4

    .line 181
    goto :goto_0

    :cond_6
    move-object v2, p2

    .line 159
    goto :goto_1
.end method
