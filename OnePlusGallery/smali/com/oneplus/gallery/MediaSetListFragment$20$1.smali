.class Lcom/oneplus/gallery/MediaSetListFragment$20$1;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment$20;->onCacheImageLoaded(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/gallery/ListChangeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

.field final synthetic val$mediaList:Lcom/oneplus/gallery/media/MediaList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment$20;Lcom/oneplus/gallery/media/MediaList;)V
    .locals 0

    .prologue
    .line 2553
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 2553
    check-cast p3, Lcom/oneplus/gallery/ListChangeEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 9
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2559
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/ListChangeEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v8

    .line 2563
    .local v8, "mediaListSize":I
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$targetMediaCount:I

    if-ne v8, v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$targetGridCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2566
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-object v1, v1, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-boolean v3, v3, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$isUrgent:Z

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-boolean v4, v4, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$needToNotifyAdapter:Z

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->decodeSingleCoverImage(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6400(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V

    .line 2571
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 2573
    :cond_0
    return-void

    .line 2568
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$20;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget v1, v1, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$targetGridCount:I

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget v2, v2, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$targetMediaCount:I

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget v3, v3, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$gridPerRow:I

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-object v4, v4, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-boolean v6, v6, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$isUrgent:Z

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment$20$1;->this$1:Lcom/oneplus/gallery/MediaSetListFragment$20;

    iget-boolean v7, v7, Lcom/oneplus/gallery/MediaSetListFragment$20;->val$needToNotifyAdapter:Z

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->decodeGridCoverImage(IIILcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
    invoke-static/range {v0 .. v7}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6500(Lcom/oneplus/gallery/MediaSetListFragment;IIILcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V

    goto :goto_0
.end method
