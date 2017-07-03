.class final Lcom/oneplus/media/BitmapPool$BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/BitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitmapInfo"
.end annotation


# instance fields
.field public volatile bitmap:Landroid/graphics/Bitmap;

.field public final decodingHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/media/BitmapPool$DecodingHandle;",
            ">;"
        }
    .end annotation
.end field

.field public volatile isDecoding:Z

.field public volatile isValid:Z

.field public volatile maxTargetHeight:I

.field public volatile maxTargetlWidth:I

.field public final mediaType:I

.field public volatile next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field public volatile previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field public volatile renainingDecodingTime:J

.field public final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 4
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    const/4 v3, 0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    .line 161
    iput-boolean v3, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    .line 162
    iput-boolean v3, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 168
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    .line 179
    iget-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    iput-object v2, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    .line 180
    iget v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I

    iput v2, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I

    .line 181
    iget v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    iput v2, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    .line 182
    iget v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    iput v2, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 185
    return-void

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    iget-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    invoke-virtual {v2, p0}, Lcom/oneplus/media/BitmapPool$DecodingHandle;->changeBitmapInfo(Lcom/oneplus/media/BitmapPool$BitmapInfo;)Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "mediaType"    # I

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    .line 161
    iput-boolean v1, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    .line 162
    iput-boolean v1, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 168
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->renainingDecodingTime:J

    .line 173
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    .line 174
    iput p2, p0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I

    .line 175
    return-void
.end method
