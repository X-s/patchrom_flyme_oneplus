.class Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/Collection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$media:Ljava/util/Collection;

.field final synthetic val$sorted:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/Collection;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p3, "val$sorted"    # Z

    .prologue
    .line 194
    .local p2, "val$media":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/camera/media/MediaInfo;>;"
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->val$media:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->val$sorted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->val$media:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;->val$sorted:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->-wrap1(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/Collection;Z)V

    .line 197
    return-void
.end method
