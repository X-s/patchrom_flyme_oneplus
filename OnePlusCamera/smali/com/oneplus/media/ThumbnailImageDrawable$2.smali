.class Lcom/oneplus/media/ThumbnailImageDrawable$2;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ThumbnailImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/media/ThumbnailImageDrawable;->checkBitmap()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/media/ThumbnailImageDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/media/ThumbnailImageDrawable;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/media/ThumbnailImageDrawable$2;->this$0:Lcom/oneplus/media/ThumbnailImageDrawable;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable$2;->this$0:Lcom/oneplus/media/ThumbnailImageDrawable;

    # getter for: Lcom/oneplus/media/ThumbnailImageDrawable;->m_ThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/oneplus/media/ThumbnailImageDrawable;->access$200(Lcom/oneplus/media/ThumbnailImageDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable$2;->this$0:Lcom/oneplus/media/ThumbnailImageDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    # setter for: Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v1}, Lcom/oneplus/media/ThumbnailImageDrawable;->access$102(Lcom/oneplus/media/ThumbnailImageDrawable;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable$2;->this$0:Lcom/oneplus/media/ThumbnailImageDrawable;

    # getter for: Lcom/oneplus/media/ThumbnailImageDrawable;->m_SmallThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/oneplus/media/ThumbnailImageDrawable;->access$100(Lcom/oneplus/media/ThumbnailImageDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/media/ThumbnailImageDrawable$2;->this$0:Lcom/oneplus/media/ThumbnailImageDrawable;

    # getter for: Lcom/oneplus/media/ThumbnailImageDrawable;->m_Alpha:I
    invoke-static {v1}, Lcom/oneplus/media/ThumbnailImageDrawable;->access$300(Lcom/oneplus/media/ThumbnailImageDrawable;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/media/ThumbnailImageDrawable$2;->this$0:Lcom/oneplus/media/ThumbnailImageDrawable;

    invoke-virtual {v0}, Lcom/oneplus/media/ThumbnailImageDrawable;->invalidateSelf()V

    .line 92
    :cond_0
    return-void
.end method
