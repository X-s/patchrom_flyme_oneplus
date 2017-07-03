.class Lcom/oneplus/gallery/MediaDetailsDialog$2;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

.field final synthetic val$result:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaDetailsDialog;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->val$result:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "handle"    # Lcom/oneplus/base/Handle;
    .param p3, "details"    # Lcom/oneplus/gallery/media/MediaDetails;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->val$result:[Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->val$result:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->val$result:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 229
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->val$result:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->val$result:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 244
    :goto_0
    monitor-exit v1

    .line 245
    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog$2;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/MediaDetails;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
