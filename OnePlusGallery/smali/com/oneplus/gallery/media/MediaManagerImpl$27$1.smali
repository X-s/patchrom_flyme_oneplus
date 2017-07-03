.class Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$27;

.field final synthetic val$groupMediaList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$27;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 4054
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$27;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;->val$groupMediaList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$27;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->val$mediaList:Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;->val$groupMediaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->addMedia(Ljava/util/Collection;)V

    .line 4060
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$27;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4700(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openGroupMediaList() - End, spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$27;

    iget-wide v4, v4, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->val$time:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4061
    return-void
.end method
