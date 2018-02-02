.class Lcom/oneplus/gallery2/media/MediaUtils$4;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->getMediaFromDownloadUri(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private final synthetic val$downloadUri:Landroid/net/Uri;

.field private final synthetic val$flags:I

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field private final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$downloadUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iput p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$flags:I

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 494
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 498
    if-nez v0, :cond_1

    const-string/jumbo v0, "MediaUtils"

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getMediaFromDownloadUri() - Fail to acquire content provider client for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 517
    :goto_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v8

    new-instance v0, Lcom/oneplus/gallery2/media/MediaUtils$4$1;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$downloadUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$mimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget v7, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$flags:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/gallery2/media/MediaUtils$4$1;-><init>(Lcom/oneplus/gallery2/media/MediaUtils$4;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)V

    invoke-static {v8, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 531
    if-eqz v0, :cond_7

    .line 535
    :goto_1
    return-void

    .line 495
    :cond_0
    return-void

    .line 500
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$downloadUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v3

    .line 502
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v6

    .line 504
    :goto_2
    if-nez v3, :cond_3

    .line 511
    :goto_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v4, v2

    .line 513
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 503
    :try_start_2
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    goto :goto_2

    .line 504
    :cond_3
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v9, v6

    move-object v6, v2

    move-object v2, v9

    :goto_4
    if-eqz v2, :cond_5

    if-ne v2, v1, :cond_6

    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_0
    move-exception v1

    :goto_6
    :try_start_5
    const-string/jumbo v2, "MediaUtils"

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMediaFromDownloadUri() - Fail to query values for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 511
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-object v4, v6

    goto :goto_0

    .line 504
    :catchall_1
    move-exception v1

    if-nez v3, :cond_4

    :goto_7
    :try_start_6
    throw v1

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_4

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    .line 511
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 512
    throw v1

    :cond_5
    move-object v2, v1

    .line 504
    goto :goto_5

    :cond_6
    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :cond_7
    const-string/jumbo v0, "MediaUtils"

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getMediaFromDownloadUri() - Fail to post file path to main thread for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$4;->val$downloadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 504
    move-exception v1

    move-object v6, v2

    goto :goto_6

    :catchall_4
    move-exception v1

    move-object v2, v6

    goto :goto_4
.end method
