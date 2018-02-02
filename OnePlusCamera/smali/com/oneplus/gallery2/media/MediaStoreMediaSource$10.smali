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

.field private final synthetic val$contentUri:Landroid/net/Uri;

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$values:Landroid/content/ContentValues;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v5, 0x2724

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 891
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 894
    if-eqz v2, :cond_1

    .line 902
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 903
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v5, 0x2724

    if-nez v3, :cond_2

    :goto_0
    const/4 v1, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v0, v1, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 914
    :goto_1
    return-void

    .line 892
    :cond_0
    return-void

    .line 896
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$5(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "insertIntoMediaStore() - Fail to get content provider client"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    aput-object v4, v3, v1

    invoke-static {v2, v5, v0, v0, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 898
    return-void

    :cond_2
    move v0, v1

    .line 903
    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 907
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$5(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "insertIntoMediaStore() - Fail to delete"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 908
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/16 v1, 0x2724

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$handle:Lcom/oneplus/base/CallbackHandle;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;->val$contentUri:Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-static {v0, v1, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 913
    throw v0
.end method
