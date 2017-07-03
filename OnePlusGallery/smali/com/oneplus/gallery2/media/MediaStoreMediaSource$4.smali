.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field final synthetic val$selection:Ljava/lang/CharSequence;

.field final synthetic val$selectionArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selection:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v8, 0x2724

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 336
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$400()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 339
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 341
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$500(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleteFromMediaStore() - Fail to get content provider client"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v5, v4, v6

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$400()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v8, v6, v6, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_1
    :try_start_0
    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$400()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selection:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 348
    .local v2, "result":I
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v4, 0x2724

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$400()Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v2, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 350
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 352
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$600(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleteFromMediaStore() - Fail to delete"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v4, 0x2724

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$400()Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
.end method
