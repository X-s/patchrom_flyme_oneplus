.class Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;
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
    .line 73
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->clearInvalidThumbnailImages()V
    invoke-static {v0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->access$000(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    .line 78
    return-void
.end method
