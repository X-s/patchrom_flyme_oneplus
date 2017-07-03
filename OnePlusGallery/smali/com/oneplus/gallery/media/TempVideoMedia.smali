.class final Lcom/oneplus/gallery/media/TempVideoMedia;
.super Lcom/oneplus/gallery/media/TempMedia;
.source "TempVideoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/VideoMedia;


# instance fields
.field private final m_Duration:J

.field private final m_Height:I

.field private final m_Width:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/TempMedia;-><init>(Lcom/oneplus/gallery/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 33
    if-nez p2, :cond_0

    if-eqz p3, :cond_4

    .line 35
    :cond_0
    const/4 v9, 0x0

    .line 36
    .local v9, "mediaPlayer":Landroid/media/MediaPlayer;
    const/4 v11, 0x0

    .line 37
    .local v11, "width":I
    const/4 v8, 0x0

    .line 38
    .local v8, "height":I
    const-wide/16 v6, 0x0

    .line 41
    .local v6, "duration":J
    :try_start_0
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .local v10, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_2

    .line 43
    :try_start_1
    invoke-virtual {v10, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 46
    :goto_0
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V

    .line 47
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v11

    .line 48
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v8

    .line 49
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    int-to-long v6, v0

    .line 55
    if-eqz v10, :cond_5

    .line 56
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->release()V

    move-object v9, v10

    .line 58
    .end local v10    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_1
    :goto_1
    iput-wide v6, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Duration:J

    .line 59
    iput v11, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Width:I

    .line 60
    iput v8, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Height:I

    .line 68
    .end local v6    # "duration":J
    .end local v8    # "height":I
    .end local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v11    # "width":I
    :goto_2
    return-void

    .line 45
    .restart local v6    # "duration":J
    .restart local v8    # "height":I
    .restart local v10    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v11    # "width":I
    :cond_2
    :try_start_2
    invoke-virtual {v10, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    move-object v9, v10

    .line 55
    .end local v10    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_3
    if-eqz v9, :cond_1

    .line 56
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v9, :cond_3

    .line 56
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    :cond_3
    throw v0

    .line 64
    .end local v6    # "duration":J
    .end local v8    # "height":I
    .end local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v11    # "width":I
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Duration:J

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Width:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Height:I

    goto :goto_2

    .line 55
    .restart local v6    # "duration":J
    .restart local v8    # "height":I
    .restart local v10    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v11    # "width":I
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    goto :goto_4

    .line 51
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v10    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_5
    move-object v9, v10

    .end local v10    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v9    # "mediaPlayer":Landroid/media/MediaPlayer;
    goto :goto_1
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/oneplus/gallery/media/TempVideoMedia;->m_Width:I

    return v0
.end method

.method public isSlowMotion()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeLapse()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
