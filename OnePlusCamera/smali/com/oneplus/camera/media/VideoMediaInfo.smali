.class public Lcom/oneplus/camera/media/VideoMediaInfo;
.super Lcom/oneplus/camera/media/MediaInfo;
.source "VideoMediaInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_ActualHeight:I

.field private final m_ActualWidth:I

.field private final m_Duration:J

.field private final m_Location:Landroid/location/Location;

.field private final m_TakenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oneplus/camera/media/VideoMediaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/media/VideoMediaInfo;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 44
    if-eqz p2, :cond_3

    .line 46
    const-string/jumbo v13, "duration"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v15}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Duration:J

    .line 47
    const-string/jumbo v13, "datetaken"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v15}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_TakenTime:J

    .line 56
    :goto_0
    invoke-super/range {p0 .. p0}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v3

    .local v3, "actualWidth":I
    invoke-super/range {p0 .. p0}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v2

    .line 57
    .local v2, "actualHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/media/VideoMediaInfo;->hasFilePath()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 59
    const/4 v10, 0x0

    .line 62
    .local v10, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v11, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v11}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v10    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v11, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/media/VideoMediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 64
    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "rotation":Ljava/lang/String;
    const/16 v13, 0x12

    invoke-virtual {v11, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    const/16 v13, 0x13

    invoke-virtual {v11, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 67
    if-eqz v12, :cond_0

    .line 69
    const-string/jumbo v13, "90"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-eqz v13, :cond_4

    .line 74
    :goto_1
    move v5, v2

    .line 75
    .local v5, "newWidth":I
    move v2, v3

    .line 76
    move v3, v5

    .line 86
    .end local v5    # "newWidth":I
    :cond_0
    if-eqz v11, :cond_1

    .line 87
    invoke-virtual {v11}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 92
    .end local v11    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v12    # "rotation":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string/jumbo v13, "latitude"

    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v15}, Lcom/oneplus/database/CursorUtils;->getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v6

    .line 93
    .local v6, "latitude":D
    const-string/jumbo v13, "longitude"

    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v15}, Lcom/oneplus/database/CursorUtils;->getDouble(Landroid/database/Cursor;Ljava/lang/String;D)D

    move-result-wide v8

    .line 94
    .local v8, "longitude":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 102
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Location:Landroid/location/Location;

    .line 104
    :goto_3
    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualWidth:I

    .line 105
    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualHeight:I

    .line 38
    return-void

    .line 51
    .end local v2    # "actualHeight":I
    .end local v3    # "actualWidth":I
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    :cond_3
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Duration:J

    .line 52
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_TakenTime:J

    goto/16 :goto_0

    .line 69
    .restart local v2    # "actualHeight":I
    .restart local v3    # "actualWidth":I
    .restart local v11    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v12    # "rotation":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v13, "270"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    .line 83
    .end local v11    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v12    # "rotation":Ljava/lang/String;
    .restart local v10    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v4

    .line 86
    .end local v10    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v4, "ex":Ljava/lang/Throwable;
    :goto_4
    if-eqz v10, :cond_1

    .line 87
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    .line 85
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v13

    .line 86
    .end local v10    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_5
    if-eqz v10, :cond_5

    .line 87
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 85
    :cond_5
    throw v13

    .line 95
    .restart local v6    # "latitude":D
    .restart local v8    # "longitude":D
    :cond_6
    const-wide/16 v14, 0x0

    cmpl-double v13, v6, v14

    if-eqz v13, :cond_2

    const-wide/16 v14, 0x0

    cmpl-double v13, v8, v14

    if-eqz v13, :cond_2

    .line 97
    new-instance v13, Landroid/location/Location;

    sget-object v14, Lcom/oneplus/camera/media/VideoMediaInfo;->TAG:Ljava/lang/String;

    invoke-direct {v13, v14}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Location:Landroid/location/Location;

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Location:Landroid/location/Location;

    invoke-virtual {v13, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Location:Landroid/location/Location;

    invoke-virtual {v13, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_3

    .line 85
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .restart local v11    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v10, "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_5

    .line 83
    .end local v10    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v11    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v4

    .restart local v4    # "ex":Ljava/lang/Throwable;
    move-object v10, v11

    .end local v11    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v10    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_4
.end method


# virtual methods
.method public getDetails(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/oneplus/camera/media/MediaInfo;->getDetails(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 115
    .local v0, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 119
    .restart local v0    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Location:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v1, "Location"

    iget-object v2, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Location:Landroid/location/Location;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualHeight:I

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_TakenTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualWidth:I

    return v0
.end method
