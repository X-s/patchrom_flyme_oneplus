.class Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$2;
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
    .line 81
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$2;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$2;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$100(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$2;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$100(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$2;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$200(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    :cond_0
    return-void
.end method
