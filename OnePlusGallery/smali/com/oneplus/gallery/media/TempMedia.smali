.class abstract Lcom/oneplus/gallery/media/TempMedia;
.super Ljava/lang/Object;
.source "TempMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/Media;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/TempMedia$2;,
        Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TempMedia"


# instance fields
.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_Handler:Landroid/os/Handler;

.field private final m_MediaType:Lcom/oneplus/gallery/media/MediaType;

.field private final m_MimeType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "type"    # Lcom/oneplus/gallery/media/MediaType;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-nez p5, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iput-object p5, p0, Lcom/oneplus/gallery/media/TempMedia;->m_Handler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/oneplus/gallery/media/TempMedia;->m_MediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 100
    iput-object p4, p0, Lcom/oneplus/gallery/media/TempMedia;->m_MimeType:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/oneplus/gallery/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    .line 102
    iput-object p3, p0, Lcom/oneplus/gallery/media/TempMedia;->m_FilePath:Ljava/lang/String;

    .line 103
    return-void
.end method

.method static create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)Lcom/oneplus/gallery/media/TempMedia;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery/media/TempMedia;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/oneplus/gallery/media/TempMedia;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/oneplus/gallery/media/TempMedia;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 132
    const/16 v17, 0x0

    .line 133
    .local v17, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    if-eqz p3, :cond_0

    .line 135
    const-string v2, "image/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    sget-object v17, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    .line 145
    :cond_0
    :goto_0
    if-nez v17, :cond_2

    .line 147
    const/4 v15, 0x0

    .line 148
    .local v15, "fileName":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 149
    invoke-static/range {p2 .. p2}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 196
    :cond_1
    :goto_1
    if-nez v17, :cond_2

    .line 198
    invoke-static {v15}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 199
    sget-object v17, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    .line 211
    .end local v15    # "fileName":Ljava/lang/String;
    :cond_2
    :goto_2
    sget-object v2, Lcom/oneplus/gallery/media/TempMedia$2;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 218
    const/4 v5, 0x0

    :goto_3
    return-object v5

    .line 137
    :cond_3
    const-string v2, "video/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    sget-object v17, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    goto :goto_0

    .line 141
    :cond_4
    const-string v2, "TempMedia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create() - Unsupported MIME type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v5, 0x0

    goto :goto_3

    .line 150
    .restart local v15    # "fileName":Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_a

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 154
    invoke-static/range {p0 .. p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "image"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    sget-object v17, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    goto :goto_1

    .line 158
    :cond_6
    const-string v2, "video"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    sget-object v17, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    goto :goto_1

    .line 160
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/oneplus/gallery/media/TempMedia;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const/4 v13, 0x0

    .line 166
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 167
    .local v16, "id":Ljava/lang/String;
    const-string v2, "content://downloads/public_downloads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, "uri":Landroid/net/Uri;
    const-string v11, "_data"

    .line 169
    .local v11, "column":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v2

    .line 171
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 172
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    const-string v2, "_data"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 175
    .local v12, "column_index":I
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    const-string v2, "TempMedia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create() - query success,file name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v12    # "column_index":I
    :cond_8
    if-eqz v13, :cond_1

    .line 186
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 179
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v11    # "column":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 181
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "TempMedia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create() - query fail,e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v13, :cond_1

    .line 186
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 185
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_9

    .line 186
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 193
    .end local v13    # "cursor":Landroid/database/Cursor;
    :cond_a
    const-string v2, "TempMedia"

    const-string v5, "create() - No file path or content URI to check format"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 200
    :cond_b
    invoke-static {v15}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 201
    sget-object v17, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    goto/16 :goto_2

    .line 204
    :cond_c
    const-string v2, "TempMedia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create() - Unsupported file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 214
    .end local v15    # "fileName":Ljava/lang/String;
    :pswitch_0
    new-instance v5, Lcom/oneplus/gallery/media/TempPhotoMedia;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/media/TempPhotoMedia;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_3

    .line 216
    :pswitch_1
    new-instance v5, Lcom/oneplus/gallery/media/TempVideoMedia;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/media/TempVideoMedia;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_3

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 374
    const-string v0, "TempMedia"

    const-string v1, "isDownloadsDocument() - uri is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "callback"    # Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 238
    const-string v2, "TempMedia"

    const-string v3, "getDetails() - No call-back"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 243
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;-><init>(Lcom/oneplus/gallery/media/TempMedia;Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)V

    .line 246
    .local v0, "handle":Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;
    new-instance v1, Lcom/oneplus/gallery/media/TempMedia$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery/media/TempMedia$1;-><init>(Lcom/oneplus/gallery/media/TempMedia;Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;)V

    .line 268
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v1, v0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->task:Landroid/os/AsyncTask;

    .line 269
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected getDetails()Lcom/oneplus/gallery/media/MediaDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 294
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 334
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia;->m_MediaType:Lcom/oneplus/gallery/media/MediaType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public isDependencyThread()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocumentUri()Z
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia;->m_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Temp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", File = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/TempMedia;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Temp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
