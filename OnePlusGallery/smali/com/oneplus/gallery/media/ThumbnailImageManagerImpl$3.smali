.class Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$3;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$3;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$3;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    invoke-static {v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$300(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    .line 95
    .local v0, "task":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->run()V

    .line 97
    :cond_0
    return-void
.end method
