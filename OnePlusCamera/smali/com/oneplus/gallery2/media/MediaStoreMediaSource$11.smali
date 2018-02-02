.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMediaContentUri(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private final synthetic val$filePath:Ljava/lang/String;

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->val$filePath:Ljava/lang/String;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 707
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$7()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v0

    .line 714
    if-nez v0, :cond_2

    .line 723
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getMediaContentUri() - Fail to acquire content provider client"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 731
    :goto_0
    if-nez v0, :cond_9

    .line 734
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v1, 0x2725

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v3, v2, v8

    aput-object v6, v2, v9

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 735
    return-void

    .line 708
    :cond_1
    return-void

    .line 716
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$7()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS_ID:[Ljava/lang/String;

    const-string/jumbo v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->val$filePath:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-result-object v3

    .line 718
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v2, v6

    .line 720
    :goto_2
    if-nez v3, :cond_4

    :goto_3
    move-object v6, v2

    goto :goto_0

    .line 719
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$11()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    goto :goto_2

    .line 720
    :cond_4
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v10, v6

    move-object v6, v2

    move-object v2, v10

    :goto_4
    if-eqz v2, :cond_6

    if-ne v2, v1, :cond_7

    :goto_5
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 724
    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 727
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMediaContentUri() - Fail to query from media store, file path : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;->val$filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 731
    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 720
    :catchall_1
    move-exception v1

    if-nez v3, :cond_5

    :goto_7
    :try_start_7
    throw v1

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_4

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    .line 732
    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 731
    :goto_8
    if-nez v1, :cond_8

    .line 733
    :goto_9
    throw v0

    :cond_6
    move-object v2, v1

    .line 720
    goto :goto_5

    :cond_7
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    .line 732
    :cond_8
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object v1, v6

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_8

    .line 724
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_6

    move-exception v1

    move-object v6, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    .line 720
    :catchall_6
    move-exception v1

    move-object v2, v6

    goto :goto_4
.end method
