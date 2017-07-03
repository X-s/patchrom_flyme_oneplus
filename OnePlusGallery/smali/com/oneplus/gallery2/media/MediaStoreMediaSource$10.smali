.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;
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

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v8, 0x2724

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 836
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 859
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 839
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 841
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1200(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "insertIntoMediaStore() - Fail to get content provider client"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    aput-object v7, v6, v3

    invoke-static {v5, v8, v4, v4, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 847
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 848
    .local v2, "resutUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v6, 0x2724

    if-eqz v2, :cond_2

    :goto_1
    const/4 v4, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v5, v6, v3, v4, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :cond_2
    move v3, v4

    .line 848
    goto :goto_1

    .line 850
    .end local v2    # "resutUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 852
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1300(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "insertIntoMediaStore() - Fail to delete"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 853
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v4, 0x2724

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
.end method
