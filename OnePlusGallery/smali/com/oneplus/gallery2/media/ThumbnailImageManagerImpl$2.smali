.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$2;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$2;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    .line 95
    .local v0, "contentThread":Lcom/oneplus/gallery2/MediaContentThread;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$2;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$100(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 97
    :cond_0
    return-void
.end method
