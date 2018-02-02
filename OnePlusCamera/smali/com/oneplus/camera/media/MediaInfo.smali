.class public abstract Lcom/oneplus/camera/media/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# static fields
.field public static final DETAILS_LOCATION:Ljava/lang/String; = "Location"


# instance fields
.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_FileSize:J

.field private final m_Height:I

.field private final m_LastModifiedTime:J

.field private final m_MediaType:Lcom/oneplus/camera/media/MediaType;

.field private final m_OneplusFlag:I

.field private final m_Width:I


# direct methods
.method protected constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-eqz p2, :cond_7

    .line 50
    const/4 v11, 0x0

    .line 51
    .local v11, "onePlusFlag":I
    if-eqz p1, :cond_3

    .line 53
    const-string/jumbo v12, "_id"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    .line 54
    .local v6, "id":I
    if-lez v6, :cond_2

    .line 56
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    .line 59
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->getMediaListFromGallery()Landroid/util/SparseIntArray;

    move-result-object v7

    .line 60
    .local v7, "mediaList":Landroid/util/SparseIntArray;
    const/4 v12, 0x0

    invoke-virtual {v7, v6, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 69
    .end local v6    # "id":I
    .end local v7    # "mediaList":Landroid/util/SparseIntArray;
    :goto_0
    const-string/jumbo v12, "_data"

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    .line 72
    const-string/jumbo v12, "mime_type"

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "mediaType":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 75
    const-string/jumbo v12, "image/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 76
    sget-object v12, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    .line 86
    :goto_1
    const-string/jumbo v12, "_size"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v14, v15}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v4

    .line 87
    .local v4, "fileSize":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gtz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 91
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 98
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FileSize:J

    .line 101
    const-string/jumbo v12, "date_modified"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v14, v15}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v8

    .line 102
    .local v8, "lastModifiedTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gtz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 106
    :try_start_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    .line 113
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/oneplus/camera/media/MediaInfo;->m_LastModifiedTime:J

    .line 116
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oneplus/camera/media/MediaInfo;->m_OneplusFlag:I

    .line 119
    const-string/jumbo v12, "width"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_Width:I

    .line 120
    const-string/jumbo v12, "height"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_Height:I

    .line 45
    .end local v4    # "fileSize":J
    .end local v8    # "lastModifiedTime":J
    .end local v10    # "mediaType":Ljava/lang/String;
    .end local v11    # "onePlusFlag":I
    :goto_4
    return-void

    .line 63
    .restart local v6    # "id":I
    .restart local v11    # "onePlusFlag":I
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 66
    .end local v6    # "id":I
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 77
    .restart local v10    # "mediaType":Ljava/lang/String;
    :cond_4
    const-string/jumbo v12, "video/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 78
    sget-object v12, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    goto/16 :goto_1

    .line 80
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    goto/16 :goto_1

    .line 83
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    goto/16 :goto_1

    .line 124
    .end local v10    # "mediaType":Ljava/lang/String;
    .end local v11    # "onePlusFlag":I
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    .line 125
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    .line 126
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FileSize:J

    .line 127
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_LastModifiedTime:J

    .line 128
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    .line 129
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_Width:I

    .line 130
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_Height:I

    .line 131
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oneplus/camera/media/MediaInfo;->m_OneplusFlag:I

    goto :goto_4

    .line 111
    .restart local v4    # "fileSize":J
    .restart local v8    # "lastModifiedTime":J
    .restart local v10    # "mediaType":Ljava/lang/String;
    .restart local v11    # "onePlusFlag":I
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Throwable;
    goto :goto_3

    .line 96
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v8    # "lastModifiedTime":J
    :catch_1
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 140
    instance-of v1, p1, Lcom/oneplus/camera/media/MediaInfo;

    if-eqz v1, :cond_6

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    .line 143
    .local v0, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 146
    return v3

    .line 144
    :cond_1
    return v3

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    iget-object v2, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 150
    return v3

    .line 148
    :cond_4
    return v3

    .line 151
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 153
    .end local v0    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_6
    return v3
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
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
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayThumbnailDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 187
    .local v0, "mediaType":I
    :goto_0
    new-instance v1, Lcom/oneplus/media/ThumbnailImageDrawable;

    iget-object v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/oneplus/media/ThumbnailImageDrawable;-><init>(Ljava/lang/String;IZ)V

    return-object v1

    .line 186
    .end local v0    # "mediaType":I
    :cond_0
    const/4 v0, 0x3

    .restart local v0    # "mediaType":I
    goto :goto_0

    .line 189
    .end local v0    # "mediaType":I
    :cond_1
    return-object v2
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FileSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Height:I

    return v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public getMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method public getOnePlusFlag()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_OneplusFlag:I

    return v0
.end method

.method public abstract getTakenTime()J
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Width:I

    return v0
.end method

.method public hasContentUri()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFilePath()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 285
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPhoto()Z
    .locals 1

    .prologue
    .line 305
    instance-of v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 315
    instance-of v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaInfo;->isPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    const-string/jumbo v1, " (Photo)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :cond_1
    const-string/jumbo v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaInfo;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    const-string/jumbo v1, " (Video)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :cond_3
    const-string/jumbo v1, " (Unknown)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
