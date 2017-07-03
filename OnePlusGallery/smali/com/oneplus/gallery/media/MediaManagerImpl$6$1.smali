.class Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$6;->onContentChanged(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$6;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$6;J)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$6;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$6;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQuery() - Id: "

    iget-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$6$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$6;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    .line 296
    :cond_0
    return-void
.end method
