.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->insertIntoMediaStore(Lcom/oneplus/gallery2/media/MediaType;Landroid/content/ContentValues;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private final synthetic val$contentUri:Landroid/net/Uri;

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$values:Landroid/content/ContentValues;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v3, 0x2724

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 925
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_1

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v9

    .line 937
    if-eqz v9, :cond_2

    .line 960
    :try_start_1
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 961
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$7()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v1

    move-object v2, v1

    .line 968
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v4, 0x2724

    if-nez v2, :cond_a

    move v1, v7

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v3, v4, v1, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 977
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 979
    :goto_2
    return-void

    .line 926
    :cond_0
    return-void

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "insertIntoMediaStore() - Fail to get content provider client"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$contentUri:Landroid/net/Uri;

    aput-object v2, v1, v8

    invoke-static {v0, v3, v7, v7, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 932
    return-void

    .line 940
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$values:Landroid/content/ContentValues;

    const-string/jumbo v2, "_data"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v2, v9

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "_data=?"

    const/4 v1, 0x1

    .line 943
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$values:Landroid/content/ContentValues;

    const-string/jumbo v5, "_data"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 944
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v1

    .line 945
    if-eq v1, v8, :cond_4

    move-object v2, v9

    goto :goto_0

    .line 947
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$7()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS_ID:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 949
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v9

    .line 951
    :goto_3
    if-nez v2, :cond_6

    :goto_4
    move-object v2, v1

    goto :goto_0

    .line 950
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$11()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    goto :goto_3

    .line 951
    :cond_6
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v2, v6

    :goto_5
    if-eqz v2, :cond_8

    if-ne v2, v1, :cond_9

    :goto_6
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 969
    :catch_0
    move-exception v1

    .line 972
    :try_start_8
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "insertIntoMediaStore() - Fail to delete"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 973
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v2, 0x2724

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$contentUri:Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 977
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_2

    .line 951
    :catchall_1
    move-exception v1

    if-nez v2, :cond_7

    :goto_7
    :try_start_9
    throw v1

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_5

    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    .line 977
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 978
    throw v1

    :cond_8
    move-object v2, v1

    .line 951
    goto :goto_6

    :cond_9
    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 962
    :catch_1
    move-exception v1

    .line 965
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "insertIntoMediaStore() - Cannot change to file uri"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v2, v9

    goto/16 :goto_0

    :cond_a
    move v1, v8

    .line 968
    goto/16 :goto_1
.end method
