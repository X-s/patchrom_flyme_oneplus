.class public Lcom/oneplus/camera/io/VideoSaveTask;
.super Lcom/oneplus/camera/io/MediaSaveTask;
.source "VideoSaveTask.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_Context:Landroid/content/Context;

.field private m_FilePath:Ljava/lang/String;

.field private m_Location:Landroid/location/Location;

.field private final m_Size:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;Landroid/location/Location;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "size"    # Landroid/util/Size;
    .param p5, "location"    # Landroid/location/Location;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>(Lcom/oneplus/camera/CaptureHandle;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/VideoSaveTask;->TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_FilePath:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    .line 37
    iput-object p5, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Location:Landroid/location/Location;

    .line 38
    return-void
.end method


# virtual methods
.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_FilePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 107
    iget-object v0, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    .line 48
    iget-object v3, p0, Lcom/oneplus/camera/io/VideoSaveTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInsertToMediaStore:  filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preparedValues: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 51
    if-nez v2, :cond_0

    .line 53
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 54
    .local v1, "mSelectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data=?"

    invoke-virtual {v3, v4, p2, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    iget-object v3, p0, Lcom/oneplus/camera/io/VideoSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "onInsertToMediaStore: video already insert by other way, update it."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v1    # "mSelectionArgs":[Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    iget-object v3, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-object v2
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 67
    iget-object v4, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 71
    .local v1, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    const-string v4, "title"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v4, "description"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v4, "mime_type"

    const-string v5, "video/mp4"

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 77
    .local v2, "time":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 79
    const-string v4, "date_modified"

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string v4, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "time":J
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Location:Landroid/location/Location;

    if-eqz v4, :cond_0

    .line 85
    const-string v4, "latitude"

    iget-object v5, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 86
    const-string v4, "longitude"

    iget-object v5, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 88
    :cond_0
    const-string v4, "width"

    iget-object v5, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v4, "height"

    iget-object v5, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v4, "resolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "duration"

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v4, "_data"

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    const/4 v4, 0x1

    .line 97
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    return v4

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v4

    .line 82
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
