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

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    const-string/jumbo v0, "DeleteGroupedMedia"

    const/4 v1, 0x0

    .line 125
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

.method static synthetic access$0(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    return-object v0
.end method


# virtual methods
.method protected onClose(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->flags:I

    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 134
    :goto_0
    if-nez v0, :cond_1

    .line 138
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCompletedHandles:I

    if-gtz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 144
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 133
    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->access$1(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V

    .line 149
    :cond_2
    :goto_2
    return-void

    .line 140
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClose() - Some of sub media has been deleted, cannot cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->this$0:Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    iget v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->flags:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCancelled(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_2
.end method
