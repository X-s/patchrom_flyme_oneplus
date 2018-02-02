.class public Lcom/oneplus/camera/media/ImagePlane;
.super Ljava/lang/Object;
.source "ImagePlane.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final m_Data:[B

.field private final m_PixelStride:I

.field private final m_RowStride:I


# direct methods
.method public constructor <init>(Landroid/media/Image$Plane;)V
    .locals 2
    .param p1, "plane"    # Landroid/media/Image$Plane;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/oneplus/camera/media/ImagePlane;->m_Data:[B

    .line 26
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/media/ImagePlane;->m_PixelStride:I

    .line 27
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/media/ImagePlane;->m_RowStride:I

    .line 28
    iget-object v1, p0, Lcom/oneplus/camera/media/ImagePlane;->m_Data:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "pixelStride"    # I
    .param p3, "rowStride"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oneplus/camera/media/ImagePlane;->m_Data:[B

    .line 41
    iput p2, p0, Lcom/oneplus/camera/media/ImagePlane;->m_PixelStride:I

    .line 42
    iput p3, p0, Lcom/oneplus/camera/media/ImagePlane;->m_RowStride:I

    .line 38
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/camera/media/ImagePlane;
    .locals 4

    .prologue
    .line 52
    new-instance v1, Lcom/oneplus/camera/media/ImagePlane;

    iget-object v0, p0, Lcom/oneplus/camera/media/ImagePlane;->m_Data:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v2, p0, Lcom/oneplus/camera/media/ImagePlane;->m_PixelStride:I

    iget v3, p0, Lcom/oneplus/camera/media/ImagePlane;->m_RowStride:I

    invoke-direct {v1, v0, v2, v3}, Lcom/oneplus/camera/media/ImagePlane;-><init>([BII)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ImagePlane;->clone()Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v0

    return-object v0
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/camera/media/ImagePlane;->m_Data:[B

    return-object v0
.end method

.method public final getPixelStride()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/oneplus/camera/media/ImagePlane;->m_PixelStride:I

    return v0
.end method

.method public final getRowStride()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/oneplus/camera/media/ImagePlane;->m_RowStride:I

    return v0
.end method
