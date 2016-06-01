.class public Lcom/oneplus/camera/media/VideoMediaInfo;
.super Lcom/oneplus/camera/media/MediaInfo;
.source "VideoMediaInfo.java"


# instance fields
.field private final m_ActualHeight:I

.field private final m_ActualWidth:I

.field private final m_Duration:J

.field private final m_TakenTime:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v8, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 33
    if-eqz p2, :cond_3

    .line 35
    const-string v6, "duration"

    invoke-static {p2, v6, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Duration:J

    .line 36
    const-string v6, "datetaken"

    invoke-static {p2, v6, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_TakenTime:J

    .line 45
    :goto_0
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v1

    .local v1, "actualWidth":I
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v0

    .line 46
    .local v0, "actualHeight":I
    invoke-virtual {p0}, Lcom/oneplus/camera/media/VideoMediaInfo;->hasFilePath()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 48
    const/4 v3, 0x0

    .line 51
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/camera/media/VideoMediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 53
    const/16 v6, 0x18

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "rotation":Ljava/lang/String;
    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 55
    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    if-eqz v5, :cond_1

    .line 58
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 75
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 79
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v5    # "rotation":Ljava/lang/String;
    :cond_2
    :goto_3
    iput v1, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualWidth:I

    .line 80
    iput v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualHeight:I

    .line 81
    return-void

    .line 40
    .end local v0    # "actualHeight":I
    .end local v1    # "actualWidth":I
    :cond_3
    iput-wide v8, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Duration:J

    .line 41
    iput-wide v8, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_TakenTime:J

    goto :goto_0

    .line 58
    .restart local v0    # "actualHeight":I
    .restart local v1    # "actualWidth":I
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "rotation":Ljava/lang/String;
    :sswitch_0
    :try_start_2
    const-string v7, "90"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "270"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .line 63
    :pswitch_0
    move v2, v0

    .line 64
    .local v2, "newWidth":I
    move v0, v1

    .line 65
    move v1, v2

    .line 66
    goto :goto_2

    .line 71
    .end local v2    # "newWidth":I
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v5    # "rotation":Ljava/lang/String;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v6

    .line 75
    :goto_4
    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    .line 75
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_4

    .line 76
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_4
    throw v6

    .line 75
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_5

    .line 71
    .end local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_4

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x717 -> :sswitch_0
        0xc28b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_Duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualHeight:I

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_TakenTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;->m_ActualWidth:I

    return v0
.end method
