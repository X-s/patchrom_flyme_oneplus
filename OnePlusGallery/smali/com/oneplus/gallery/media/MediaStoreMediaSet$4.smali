.class Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;
.super Ljava/lang/Object;
.source "MediaStoreMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;->delete(Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->val$handle:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->val$handle:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$200(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete() - Deletion has been cancelled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->val$handle:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callOnDeletionStarted()V

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$300(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete() - Start"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->val$handle:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$400(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete() - Fail to delete media set"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
