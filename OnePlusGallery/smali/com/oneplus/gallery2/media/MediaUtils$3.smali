.class final Lcom/oneplus/gallery2/media/MediaUtils$3;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->getMediaFromDownloadUri(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field final synthetic val$downloadUri:Landroid/net/Uri;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iput p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 407
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 410
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v8, 0x0

    .line 411
    .local v8, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 415
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    .line 417
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 429
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_2
    move-object v9, v8

    .line 430
    .local v9, "finalFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaUtils$3$1;

    invoke-direct {v2, p0, v9}, Lcom/oneplus/gallery2/media/MediaUtils$3$1;-><init>(Lcom/oneplus/gallery2/media/MediaUtils$3;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    const-string v1, "MediaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaFromDownloadUri() - Fail to post file path to main thread for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    .end local v9    # "finalFilePath":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 418
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 420
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_4
    const-string v1, "MediaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaFromDownloadUri() - Fail to query values for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 417
    .end local v7    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 424
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v1

    .line 413
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 417
    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v2, :cond_6

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :goto_4
    :try_start_8
    throw v1

    :catch_3
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 428
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_7
    const-string v1, "MediaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaFromDownloadUri() - Fail to acquire content provider client for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 417
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    move-object v2, v11

    goto :goto_3
.end method
