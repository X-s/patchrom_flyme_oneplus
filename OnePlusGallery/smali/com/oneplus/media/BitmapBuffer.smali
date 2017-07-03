.class public abstract Lcom/oneplus/media/BitmapBuffer;
.super Ljava/lang/Object;
.source "BitmapBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TBuffer:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile m_Data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTBuffer;"
        }
    .end annotation
.end field

.field private final m_Height:I

.field private final m_Width:I


# direct methods
.method protected constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 22
    .local p0, "this":Lcom/oneplus/media/BitmapBuffer;, "Lcom/oneplus/media/BitmapBuffer<TTBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput p1, p0, Lcom/oneplus/media/BitmapBuffer;->m_Width:I

    .line 27
    iput p2, p0, Lcom/oneplus/media/BitmapBuffer;->m_Height:I

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/media/BitmapBuffer;->createBuffer(II)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Data:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 36
    .local p0, "this":Lcom/oneplus/media/BitmapBuffer;, "Lcom/oneplus/media/BitmapBuffer<TTBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Width:I

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Height:I

    .line 40
    iget v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Width:I

    iget v1, p0, Lcom/oneplus/media/BitmapBuffer;->m_Height:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/BitmapBuffer;->createBuffer(II)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Data:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, Lcom/oneplus/media/BitmapBuffer;->copyFromBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract copyFromBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract copyToBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract createBuffer(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TTBuffer;"
        }
    .end annotation
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTBuffer;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/oneplus/media/BitmapBuffer;, "Lcom/oneplus/media/BitmapBuffer<TTBuffer;>;"
    iget-object v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/oneplus/media/BitmapBuffer;, "Lcom/oneplus/media/BitmapBuffer<TTBuffer;>;"
    iget v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/oneplus/media/BitmapBuffer;, "Lcom/oneplus/media/BitmapBuffer<TTBuffer;>;"
    iget v0, p0, Lcom/oneplus/media/BitmapBuffer;->m_Width:I

    return v0
.end method
