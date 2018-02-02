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

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field private final synthetic val$selection:Ljava/lang/CharSequence;

.field private final synthetic val$selectionArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selection:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selectionArgs:[Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v5, 0x2724

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$4()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_1

    .line 357
    :try_start_0
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$4()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selection:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 358
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v3, 0x2724

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$4()Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v0, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 369
    :goto_0
    return-void

    .line 347
    :cond_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$5(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "deleteFromMediaStore() - Fail to get content provider client"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v2, v1, v3

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$4()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v3, v3, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 353
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 362
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$5(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "deleteFromMediaStore() - Fail to delete"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v2, 0x2724

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$4()Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 368
    throw v0
.end method
