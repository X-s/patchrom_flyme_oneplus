.class final Lcom/oneplus/media/IsoBaseMediaMetadata;
.super Lcom/oneplus/base/BasicBaseObject;
.source "IsoBaseMediaMetadata.java"

# interfaces
.implements Lcom/oneplus/media/VideoMetadata;


# instance fields
.field private m_ContinueReading:Z

.field private m_MovieHeader:Lcom/oneplus/media/IsoBaseMediaMovieHeader;

.field private m_VideoTrackHeader:Lcom/oneplus/media/IsoBaseMediaTrackHeader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 11
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    .line 19
    const/4 v1, 0x0

    .local v1, "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_0
    new-instance v2, Lcom/oneplus/media/IsoBaseMediaReader;

    invoke-direct {v2, p1}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 21
    .end local v1    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .local v2, "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 23
    invoke-virtual {v2}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v4

    const v5, 0x6d6f6f76

    if-ne v4, v5, :cond_0

    .line 25
    const/4 v0, 0x0

    .local v0, "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;

    move-result-object v0

    .line 27
    .local v0, "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 29
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 32
    :sswitch_0
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readMvhdBox([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 43
    .end local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_2
    :goto_2
    if-eqz v5, :cond_b

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 47
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    :goto_4
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    :cond_3
    :goto_5
    if-eqz v6, :cond_f

    throw v6

    .line 36
    .restart local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :sswitch_1
    const/4 v3, 0x0

    .local v3, "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_8
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;

    move-result-object v3

    .line 38
    .local v3, "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    invoke-direct {p0, v3}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readTrakBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 39
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_4
    move-object v4, v6

    :goto_6
    if-eqz v4, :cond_1

    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 43
    .end local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .end local v3    # "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_2
    move-exception v4

    move-object v5, v6

    goto :goto_1

    .line 39
    .restart local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v3    # "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_2
    move-exception v4

    goto :goto_6

    .end local v3    # "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_3
    move-exception v4

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_7
    if-eqz v3, :cond_5

    :try_start_c
    invoke-virtual {v3}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_5
    :goto_8
    if-eqz v5, :cond_7

    :try_start_d
    throw v5

    :catch_4
    move-exception v7

    if-nez v5, :cond_6

    move-object v5, v7

    goto :goto_8

    :cond_6
    if-eq v5, v7, :cond_5

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_7
    throw v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 43
    :cond_8
    if-eqz v0, :cond_9

    :try_start_e
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_9
    move-object v4, v6

    :goto_9
    if-eqz v4, :cond_c

    :try_start_f
    throw v4

    .line 47
    .end local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .local v1, "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    goto :goto_4

    .line 43
    .end local v1    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_5
    move-exception v4

    goto :goto_9

    .end local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_6
    move-exception v7

    if-nez v5, :cond_a

    move-object v5, v7

    goto :goto_2

    :cond_a
    if-eq v5, v7, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_b
    throw v4
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 47
    :cond_c
    if-eqz v2, :cond_d

    :try_start_10
    invoke-virtual {v2}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :cond_d
    :goto_a
    if-eqz v6, :cond_10

    throw v6

    :catch_7
    move-exception v6

    goto :goto_a

    .end local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_8
    move-exception v5

    if-nez v6, :cond_e

    move-object v6, v5

    goto :goto_5

    :cond_e
    if-eq v6, v5, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_f
    throw v4

    .line 17
    .restart local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_10
    return-void

    .line 47
    .end local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .local v1, "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_5
    move-exception v4

    goto :goto_4

    :catch_9
    move-exception v4

    goto :goto_3

    .line 39
    .end local v1    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v2    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_6
    move-exception v4

    move-object v5, v6

    goto :goto_7

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        0x6d766864 -> :sswitch_0
        0x7472616b -> :sswitch_1
    .end sparse-switch
.end method

.method private readMdiaBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    .locals 5
    .param p1, "reader"    # Lcom/oneplus/media/IsoBaseMediaReader;

    .prologue
    const/4 v2, 0x0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v1

    const v3, 0x6d696e66

    if-ne v1, v3, :cond_0

    .line 58
    const/4 v0, 0x0

    .local v0, "minfReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;

    move-result-object v0

    .line 60
    .local v0, "minfReader":Lcom/oneplus/media/IsoBaseMediaReader;
    invoke-direct {p0, v0}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readMinfBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "minfReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v1

    .line 52
    :cond_5
    return-void

    .line 61
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private readMinfBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    .locals 6
    .param p1, "reader"    # Lcom/oneplus/media/IsoBaseMediaReader;

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "isVideo":Z
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 74
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 80
    :sswitch_0
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    .local v1, "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;

    move-result-object v1

    .line 84
    .local v1, "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    invoke-direct {p0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readStblBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    throw v2

    .line 77
    .end local v1    # "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :sswitch_1
    const/4 v0, 0x1

    .line 78
    goto :goto_0

    .line 85
    .restart local v1    # "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v1    # "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v2

    .line 90
    :cond_5
    if-eqz v0, :cond_6

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    .line 69
    :goto_4
    return-void

    .line 93
    :cond_6
    iput-object v3, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_VideoTrackHeader:Lcom/oneplus/media/IsoBaseMediaTrackHeader;

    goto :goto_4

    .line 85
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x7374626c -> :sswitch_0
        0x766d6864 -> :sswitch_1
    .end sparse-switch
.end method

.method private readMvhdBox([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 100
    new-instance v0, Lcom/oneplus/media/IsoBaseMediaMovieHeader;

    invoke-direct {v0, p1}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;-><init>([B)V

    iput-object v0, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_MovieHeader:Lcom/oneplus/media/IsoBaseMediaMovieHeader;

    .line 101
    sget-object v0, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_DATE_TIME_ORIGINAL:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_MovieHeader:Lcom/oneplus/media/IsoBaseMediaMovieHeader;

    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->getCreationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_DURATION:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_MovieHeader:Lcom/oneplus/media/IsoBaseMediaMovieHeader;

    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method private readStblBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    .locals 2
    .param p1, "reader"    # Lcom/oneplus/media/IsoBaseMediaReader;

    .prologue
    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v0

    const v1, 0x73747364

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readStsdBox([B)V

    .line 107
    :cond_1
    return-void
.end method

.method private readStsdBox([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const v10, 0xff00

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 124
    array-length v6, p1

    if-ge v6, v8, :cond_0

    .line 125
    return-void

    .line 126
    :cond_0
    const/4 v6, 0x4

    invoke-static {p1, v6}, Lcom/oneplus/media/IsoBaseMediaBox;->getUInteger([BI)J

    move-result-wide v0

    .line 127
    .local v0, "entryCount":J
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-gtz v6, :cond_1

    .line 128
    return-void

    .line 131
    :cond_1
    const/4 v3, 0x0

    .local v3, "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_0
    new-instance v4, Lcom/oneplus/media/IsoBaseMediaReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    array-length v8, p1

    add-int/lit8 v8, v8, -0x8

    const/16 v9, 0x8

    invoke-direct {v6, p1, v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v4, v6}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    .local v4, "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_1
    invoke-virtual {v4}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    .end local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    move-result v6

    if-eqz v6, :cond_2

    .line 135
    invoke-virtual {v4}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object p1

    .line 136
    array-length v6, p1

    const/16 v8, 0x20

    if-lt v6, v8, :cond_2

    .line 138
    const/16 v6, 0x18

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v10

    const/16 v8, 0x19

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int v5, v6, v8

    .line 139
    .local v5, "width":I
    const/16 v6, 0x1a

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v10

    const/16 v8, 0x1b

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int v2, v6, v8

    .line 140
    .local v2, "height":I
    sget-object v6, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 141
    sget-object v6, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 144
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_2
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    if-eqz v7, :cond_7

    throw v7

    :catch_0
    move-exception v7

    goto :goto_0

    .end local v4    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_1
    move-exception v6

    .end local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :goto_1
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_2
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    throw v7

    :catch_2
    move-exception v8

    if-nez v7, :cond_5

    move-object v7, v8

    goto :goto_3

    :cond_5
    if-eq v7, v8, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v6

    .line 121
    .restart local v4    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_7
    return-void

    .line 144
    .end local v4    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_1
    move-exception v6

    goto :goto_2

    .end local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v4    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    .local v3, "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    goto :goto_2

    .end local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v4    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    goto :goto_1
.end method

.method private readTkhdBox([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 151
    new-instance v0, Lcom/oneplus/media/IsoBaseMediaTrackHeader;

    invoke-direct {v0, p1}, Lcom/oneplus/media/IsoBaseMediaTrackHeader;-><init>([B)V

    iput-object v0, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_VideoTrackHeader:Lcom/oneplus/media/IsoBaseMediaTrackHeader;

    .line 152
    sget-object v0, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_VideoTrackHeader:Lcom/oneplus/media/IsoBaseMediaTrackHeader;

    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaTrackHeader;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_VideoTrackHeader:Lcom/oneplus/media/IsoBaseMediaTrackHeader;

    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaTrackHeader;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_VideoTrackHeader:Lcom/oneplus/media/IsoBaseMediaTrackHeader;

    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaTrackHeader;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private readTrakBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    .locals 5
    .param p1, "reader"    # Lcom/oneplus/media/IsoBaseMediaReader;

    .prologue
    const/4 v2, 0x0

    .line 162
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 171
    :sswitch_0
    const/4 v0, 0x0

    .local v0, "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;

    move-result-object v0

    .line 173
    .local v0, "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    invoke-direct {p0, v0}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readMdiaBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    throw v1

    .line 167
    .end local v0    # "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :sswitch_1
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readTkhdBox([B)V

    goto :goto_0

    .line 174
    .restart local v0    # "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_0
    move-exception v1

    goto :goto_1

    .end local v0    # "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v1

    .line 160
    :cond_5
    return-void

    .line 174
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x6d646961 -> :sswitch_0
        0x746b6864 -> :sswitch_1
    .end sparse-switch
.end method
