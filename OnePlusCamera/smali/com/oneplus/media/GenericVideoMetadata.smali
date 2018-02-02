.class final Lcom/oneplus/media/GenericVideoMetadata;
.super Lcom/oneplus/base/BasicBaseObject;
.source "GenericVideoMetadata.java"

# interfaces
.implements Lcom/oneplus/media/VideoMetadata;


# static fields
.field private static final TAG:Ljava/lang/String; = "GenericVideoMetadata"

.field private static final TAKEN_TIME_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/media/GenericVideoMetadata;->TAKEN_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 41
    const/4 v0, 0x0

    .line 45
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 49
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-direct {p0, v1, p2}, Lcom/oneplus/media/GenericVideoMetadata;->setup(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 39
    :cond_0
    return-void

    .line 52
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v2

    .line 53
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 52
    :cond_1
    throw v2

    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 27
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 31
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-direct {p0, v1, p1}, Lcom/oneplus/media/GenericVideoMetadata;->setup(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 21
    :cond_0
    return-void

    .line 34
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v2

    .line 35
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 34
    :cond_1
    throw v2

    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0
.end method

.method private setup(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 10
    .param p1, "retriever"    # Landroid/media/MediaMetadataRetriever;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 63
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "takenTimeStr":Ljava/lang/String;
    const/16 v6, 0x9

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "durationStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 76
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 91
    :cond_1
    :goto_1
    const/16 v6, 0x12

    :try_start_0
    invoke-virtual {p1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "widthStr":Ljava/lang/String;
    const/16 v6, 0x13

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "heightStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    .end local v2    # "heightStr":Ljava/lang/String;
    .end local v5    # "widthStr":Ljava/lang/String;
    :cond_2
    :goto_2
    const/16 v6, 0x18

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "rotation":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 109
    const-string/jumbo v6, "90"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    sget-object v6, Lcom/oneplus/media/GenericVideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    const/16 v7, 0x5a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/GenericVideoMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 60
    :cond_3
    :goto_3
    return-void

    .line 69
    .end local v3    # "rotation":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v6, Lcom/oneplus/media/GenericVideoMetadata;->PROP_DATE_TIME_ORIGINAL:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/oneplus/media/GenericVideoMetadata;->TAKEN_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/GenericVideoMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "ex":Ljava/lang/Throwable;
    const-string/jumbo v6, "GenericVideoMetadata"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to get taken time for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    :try_start_2
    sget-object v6, Lcom/oneplus/media/GenericVideoMetadata;->PROP_DURATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/GenericVideoMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 83
    :catch_1
    move-exception v1

    .line 84
    .restart local v1    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v6, "GenericVideoMetadata"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to get duration for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 94
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "heightStr":Ljava/lang/String;
    .restart local v5    # "widthStr":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 96
    sget-object v6, Lcom/oneplus/media/GenericVideoMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/GenericVideoMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 97
    sget-object v6, Lcom/oneplus/media/GenericVideoMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/GenericVideoMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 101
    .end local v2    # "heightStr":Ljava/lang/String;
    .end local v5    # "widthStr":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 102
    .restart local v1    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v6, "GenericVideoMetadata"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to get video size for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 109
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "rotation":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "180"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 115
    sget-object v6, Lcom/oneplus/media/GenericVideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    const/16 v7, 0xb4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/GenericVideoMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 109
    :cond_8
    const-string/jumbo v6, "-90"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 119
    :goto_4
    sget-object v6, Lcom/oneplus/media/GenericVideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    const/16 v7, 0x10e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/media/GenericVideoMetadata;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 109
    :cond_9
    const-string/jumbo v6, "270"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4
.end method
