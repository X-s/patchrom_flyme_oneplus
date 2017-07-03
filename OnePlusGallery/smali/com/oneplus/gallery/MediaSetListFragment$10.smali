.class Lcom/oneplus/gallery/MediaSetListFragment$10;
.super Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$10;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "success"    # Z

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 225
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$10;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->removeImageInCache(Lcom/oneplus/gallery/media/MediaSet;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onDeletionProcessCompleted()V
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;->onDeletionProcessCompleted()V

    .line 236
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$10;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 237
    return-void
.end method
