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
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 11
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    .line 19
    :try_start_0
    new-instance v1, Lcom/oneplus/media/IsoBaseMediaReader;

    invoke-direct {v1, p1}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 21
    .local v1, "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 47
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 48
    :cond_2
    return-void

    .line 23
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    const v5, 0x6d6f6f76

    if-ne v3, v5, :cond_0

    .line 25
    :try_start_4
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 27
    .local v0, "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_4
    :goto_1
    :try_start_5
    iget-boolean v3, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v3

    if-nez v3, :cond_7

    .line 43
    :cond_5
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_0
    move-exception v3

    :goto_2
    if-nez v4, :cond_c

    :goto_3
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 47
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V

    :cond_6
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .end local v1    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :goto_4
    if-nez v4, :cond_e

    :goto_5
    throw v3

    .line 29
    .restart local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    .restart local v1    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_7
    :try_start_9
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 32
    :sswitch_0
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readMvhdBox([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    .line 43
    :catchall_3
    move-exception v3

    if-eqz v0, :cond_8

    :try_start_a
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V

    :cond_8
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_2

    .line 36
    :sswitch_1
    :try_start_b
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result-object v2

    .line 38
    .local v2, "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_c
    invoke-direct {p0, v2}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readTrakBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 39
    if-eqz v2, :cond_4

    :try_start_d
    invoke-virtual {v2}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_1

    .end local v2    # "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_5
    move-exception v3

    if-nez v4, :cond_a

    :goto_6
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .restart local v2    # "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_6
    move-exception v4

    if-eqz v2, :cond_9

    :try_start_f
    invoke-virtual {v2}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V

    :cond_9
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .end local v2    # "trakReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_a
    if-eq v4, v3, :cond_b

    :try_start_10
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_b
    move-object v3, v4

    goto :goto_6

    .line 43
    .end local v0    # "movieBoxReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_c
    if-eq v4, v3, :cond_d

    :try_start_11
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_d
    move-object v3, v4

    goto :goto_3

    .line 47
    .end local v1    # "rootReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_e
    if-eq v4, v3, :cond_f

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    move-object v3, v4

    goto :goto_5

    :catchall_7
    move-exception v3

    goto :goto_4

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x6d766864 -> :sswitch_0
        0x7472616b -> :sswitch_1
    .end sparse-switch
.end method

.method private readMdiaBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    .locals 3
    .param p1, "reader"    # Lcom/oneplus/media/IsoBaseMediaReader;

    .prologue
    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v1

    const v2, 0x6d696e66

    if-ne v1, v2, :cond_0

    .line 58
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 60
    .local v0, "minfReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readMinfBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "minfReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_0
    move-exception v1

    if-nez v2, :cond_4

    :goto_1
    throw v1

    .restart local v0    # "minfReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V

    :cond_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "minfReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_4
    if-eq v2, v1, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method private readMinfBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    .locals 4
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

    if-nez v2, :cond_1

    .line 90
    if-eqz v0, :cond_5

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    .line 94
    :goto_1
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 80
    :sswitch_0
    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 84
    .local v1, "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readStblBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_0
    move-exception v2

    if-nez v3, :cond_3

    :goto_2
    throw v2

    .line 77
    :sswitch_1
    const/4 v0, 0x1

    .line 78
    goto :goto_0

    .line 85
    .restart local v1    # "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "stblReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_3
    if-eq v3, v2, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object v2, v3

    goto :goto_2

    .line 93
    :cond_5
    iput-object v3, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_VideoTrackHeader:Lcom/oneplus/media/IsoBaseMediaTrackHeader;

    goto :goto_1

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

    .line 103
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

    if-nez v0, :cond_1

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v0

    const v1, 0x73747364

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readStsdBox([B)V

    goto :goto_0
.end method

.method private readStsdBox([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const v9, 0xff00

    const/16 v6, 0x8

    .line 124
    array-length v5, p1

    if-ge v5, v6, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v5, 0x4

    invoke-static {p1, v5}, Lcom/oneplus/media/IsoBaseMediaBox;->getUInteger([BI)J

    move-result-wide v0

    .line 127
    .local v0, "entryCount":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 131
    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Lcom/oneplus/media/IsoBaseMediaReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/16 v7, 0x8

    array-length v8, p1

    add-int/lit8 v8, v8, -0x8

    invoke-direct {v5, p1, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v3, v5}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v3, "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_1
    invoke-virtual {v3}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    invoke-virtual {v3}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object p1

    .line 136
    array-length v5, p1

    const/16 v7, 0x20

    if-lt v5, v7, :cond_2

    .line 138
    const/16 v5, 0x18

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v9

    const/16 v7, 0x19

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v4, v5, v7

    .line 139
    .local v4, "width":I
    const/16 v5, 0x1a

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v9

    const/16 v7, 0x1b

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v2, v5, v7

    .line 140
    .local v2, "height":I
    sget-object v5, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 141
    sget-object v5, Lcom/oneplus/media/IsoBaseMediaMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/oneplus/media/IsoBaseMediaMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_2
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_0
    move-exception v5

    :goto_1
    if-nez v6, :cond_4

    :goto_2
    throw v5

    .restart local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V

    :cond_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    goto :goto_1

    .end local v3    # "reader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_4
    if-eq v6, v5, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object v5, v6

    goto :goto_2
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

    .line 156
    return-void
.end method

.method private readTrakBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    .locals 3
    .param p1, "reader"    # Lcom/oneplus/media/IsoBaseMediaReader;

    .prologue
    .line 162
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/media/IsoBaseMediaMetadata;->m_ContinueReading:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->read()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    :cond_1
    return-void

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->currentBoxType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 171
    :sswitch_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 173
    .local v0, "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readMdiaBox(Lcom/oneplus/media/IsoBaseMediaReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_0
    move-exception v1

    if-nez v2, :cond_4

    :goto_1
    throw v1

    .line 167
    :sswitch_1
    invoke-virtual {p1}, Lcom/oneplus/media/IsoBaseMediaReader;->getBoxData()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/media/IsoBaseMediaMetadata;->readTkhdBox([B)V

    goto :goto_0

    .line 174
    .restart local v0    # "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Lcom/oneplus/media/IsoBaseMediaReader;->close()V

    :cond_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "mdiaReader":Lcom/oneplus/media/IsoBaseMediaReader;
    :cond_4
    if-eq v2, v1, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object v1, v2

    goto :goto_1

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x6d646961 -> :sswitch_0
        0x746b6864 -> :sswitch_1
    .end sparse-switch
.end method
