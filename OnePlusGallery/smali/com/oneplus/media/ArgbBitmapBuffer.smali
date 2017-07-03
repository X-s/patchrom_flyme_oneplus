.class public Lcom/oneplus/media/ArgbBitmapBuffer;
.super Lcom/oneplus/media/BitmapBuffer;
.source "ArgbBitmapBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/media/BitmapBuffer",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/BitmapBuffer;-><init>(II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapBuffer;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    return-void
.end method


# virtual methods
.method public copyFromBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/oneplus/media/ArgbBitmapBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 38
    return-void
.end method

.method public copyToBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oneplus/media/ArgbBitmapBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 46
    return-void
.end method

.method protected bridge synthetic createBuffer(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/media/ArgbBitmapBuffer;->createBuffer(II)[I

    move-result-object v0

    return-object v0
.end method

.method protected createBuffer(II)[I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 53
    mul-int v0, p1, p2

    new-array v0, v0, [I

    return-object v0
.end method
