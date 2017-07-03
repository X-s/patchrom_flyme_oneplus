.class Lcom/oneplus/media/BitmapPoolDrawable$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "BitmapPoolDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/media/BitmapPoolDrawable;->checkBitmap()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/media/BitmapPoolDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/media/BitmapPoolDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/media/BitmapPoolDrawable$1;->this$0:Lcom/oneplus/media/BitmapPoolDrawable;

    .line 65
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
    .line 71
    if-eqz p3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable$1;->this$0:Lcom/oneplus/media/BitmapPoolDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/media/BitmapPoolDrawable;->access$0(Lcom/oneplus/media/BitmapPoolDrawable;Z)V

    .line 74
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable$1;->this$0:Lcom/oneplus/media/BitmapPoolDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/oneplus/media/BitmapPoolDrawable;->access$1(Lcom/oneplus/media/BitmapPoolDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable$1;->this$0:Lcom/oneplus/media/BitmapPoolDrawable;

    # getter for: Lcom/oneplus/media/BitmapPoolDrawable;->m_InternalDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/oneplus/media/BitmapPoolDrawable;->access$2(Lcom/oneplus/media/BitmapPoolDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/media/BitmapPoolDrawable$1;->this$0:Lcom/oneplus/media/BitmapPoolDrawable;

    # getter for: Lcom/oneplus/media/BitmapPoolDrawable;->m_Alpha:I
    invoke-static {v1}, Lcom/oneplus/media/BitmapPoolDrawable;->access$3(Lcom/oneplus/media/BitmapPoolDrawable;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/media/BitmapPoolDrawable$1;->this$0:Lcom/oneplus/media/BitmapPoolDrawable;

    invoke-virtual {v0}, Lcom/oneplus/media/BitmapPoolDrawable;->invalidateSelf()V

    .line 78
    :cond_0
    return-void
.end method
