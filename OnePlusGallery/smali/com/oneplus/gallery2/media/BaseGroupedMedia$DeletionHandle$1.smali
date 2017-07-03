.class Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;
.super Lcom/oneplus/gallery2/media/Media$DeletionCallback;
.source "BaseGroupedMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCancelled(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    iget v1, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCancelledHandles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCancelledHandles:I

    .line 108
    return-void
.end method

.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "success"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    iget v1, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCompletedHandles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCompletedHandles:I

    .line 114
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    iget v0, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCompletedHandles:I

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    iget v1, v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCancelledHandles:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;->this$1:Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    .line 119
    :cond_0
    return-void
.end method
