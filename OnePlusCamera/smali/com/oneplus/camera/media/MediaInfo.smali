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

.field private final m_Width:I


# direct methods
.method protected constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p2, :cond_4

    .line 46
    if-eqz p1, :cond_3

    .line 48
    const-string v6, "_id"

    invoke-static {p2, v6, v10}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, "id":I
    if-lez v1, :cond_2

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    .line 58
    .end local v1    # "id":I
    :goto_0
    const-string v6, "_data"

    invoke-static {p2, v6}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    .line 61
    const-string v6, "_size"

    invoke-static {p2, v6, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    .line 62
    .local v2, "fileSize":J
    cmp-long v6, v2, v8

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 66
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 73
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    iput-wide v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FileSize:J

    .line 76
    const-string v6, "date_modified"

    invoke-static {p2, v6, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v4

    .line 77
    .local v4, "lastModifiedTime":J
    cmp-long v6, v4, v8

    if-gtz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 81
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 88
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_2
    iput-wide v4, p0, Lcom/oneplus/camera/media/MediaInfo;->m_LastModifiedTime:J

    .line 91
    const-string v6, "width"

    invoke-static {p2, v6, v10}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Width:I

    .line 92
    const-string v6, "height"

    invoke-static {p2, v6, v10}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Height:I

    .line 103
    .end local v2    # "fileSize":J
    .end local v4    # "lastModifiedTime":J
    :goto_3
    return-void

    .line 52
    .restart local v1    # "id":I
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    goto :goto_0

    .line 55
    .end local v1    # "id":I
    :cond_3
    iput-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    goto :goto_0

    .line 96
    :cond_4
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    .line 97
    iput-object v6, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    .line 98
    iput-wide v8, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FileSize:J

    .line 99
    iput-wide v8, p0, Lcom/oneplus/camera/media/MediaInfo;->m_LastModifiedTime:J

    .line 100
    iput v10, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Width:I

    .line 101
    iput v10, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Height:I

    goto :goto_3

    .line 85
    .restart local v2    # "fileSize":J
    .restart local v4    # "lastModifiedTime":J
    :catch_0
    move-exception v6

    goto :goto_2

    .line 70
    .end local v4    # "lastModifiedTime":J
    :catch_1
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 110
    instance-of v2, p1, Lcom/oneplus/camera/media/MediaInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    .line 113
    .local v0, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    .end local v0    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_0
    :goto_0
    return v1

    .line 115
    .restart local v0    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 121
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 133
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
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayThumbnailDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcom/oneplus/media/ThumbnailImageDrawable;

    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/ThumbnailImageDrawable;-><init>(Ljava/lang/String;Z)V

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FileSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Height:I

    return v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public abstract getTakenTime()J
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_Width:I

    return v0
.end method

.method public hasContentUri()Z
    .locals 1

    .prologue
    .line 223
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
    .line 245
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
    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 235
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 235
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isPhoto()Z
    .locals 1

    .prologue
    .line 255
    instance-of v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 265
    instance-of v0, p0, Lcom/oneplus/camera/media/VideoMediaInfo;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaInfo;->isPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const-string v1, " (Photo)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaInfo;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :cond_1
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaInfo;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    const-string v1, " (Video)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_3
    const-string v1, " (Unknown)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
