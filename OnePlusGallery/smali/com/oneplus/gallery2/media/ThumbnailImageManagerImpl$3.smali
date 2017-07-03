.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$3;
.super Lcom/oneplus/base/Handle;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->activate(I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$3;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$3;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$1100(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/base/Handle;)V

    .line 548
    return-void
.end method
