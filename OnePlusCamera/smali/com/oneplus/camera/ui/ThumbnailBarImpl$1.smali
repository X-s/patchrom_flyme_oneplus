.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$000(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # invokes: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->addThumbnailView(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$100(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)V

    .line 88
    return-void
.end method
