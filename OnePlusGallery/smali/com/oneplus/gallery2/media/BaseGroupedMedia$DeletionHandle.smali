.class final Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;
.super Lcom/oneplus/base/CallbackHandle;
.source "BaseGroupedMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseGroupedMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeletionHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/Media$DeletionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final flags:I

.field public numberOfCancelledHandles:I

.field public numberOfCompletedHandles:I

.field public final subDeletionHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

.field public final wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V
    .locals 2
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p3, "flags"    # I

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 125
    const-string v0, "DeleteGroupedMedia"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    .line 102
    new-instance v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle$1;-><init>(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    .line 126
    iput p3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->flags:I

    .line 127
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 133
    iget v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->flags:I

    sget v4, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 134
    .local v2, "restore":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 135
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    # invokes: Lcom/oneplus/gallery2/media/BaseGroupedMedia;->restoreFromRecycleBin(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V
    invoke-static {v3, p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->access$100(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V

    .line 149
    :cond_0
    :goto_1
    return-void

    .line 133
    .end local v2    # "restore":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    .restart local v2    # "restore":Z
    :cond_2
    iget v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCompletedHandles:I

    if-lez v3, :cond_3

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onClose() - Some of sub media has been deleted, cannot cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 144
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_2

    .line 145
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->getCallback()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    iget v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->flags:I

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCancelled(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_1
.end method
