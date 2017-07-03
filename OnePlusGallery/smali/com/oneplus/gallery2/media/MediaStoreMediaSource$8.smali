.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;
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

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 656
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    :goto_0
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x0

    .line 659
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 662
    .local v6, "contentUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$400()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_8

    .line 665
    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$400()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS_ID:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$filePath:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 667
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 669
    :cond_1
    if-eqz v7, :cond_2

    if-eqz v10, :cond_4

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 681
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 683
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v2, 0x2725

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v4, v3, v12

    aput-object v6, v3, v13

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0

    .line 669
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 674
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 676
    .local v8, "ex":Ljava/lang/Throwable;
    :try_start_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1100(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaContentUri() - Fail to query from media store, file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 680
    if-eqz v0, :cond_3

    .line 681
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 669
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 680
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 681
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    throw v1

    .line 665
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 669
    :catchall_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_3
    if-eqz v7, :cond_6

    if-eqz v2, :cond_7

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :goto_4
    :try_start_8
    throw v1

    :catch_3
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 672
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1000(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getMediaContentUri() - Fail to acquire content provider client"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 669
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    move-object v2, v10

    goto :goto_3
.end method
