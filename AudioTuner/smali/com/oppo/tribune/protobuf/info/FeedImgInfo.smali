.class public Lcom/oppo/tribune/protobuf/info/FeedImgInfo;
.super Ljava/lang/Object;
.source "FeedImgInfo.java"


# instance fields
.field private ext:Ljava/lang/String;

.field private faceXRatio:F

.field private faceYRatio:F

.field private oriHeight:I

.field private oriUrl:Ljava/lang/String;

.field private oriWidth:I

.field private xyRatio:F

.field private yxRatio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceRatioX()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->faceXRatio:F

    return v0
.end method

.method public getFaceRatioY()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->faceYRatio:F

    return v0
.end method

.method public getOriHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->oriHeight:I

    return v0
.end method

.method public getOriUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->oriUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->oriWidth:I

    return v0
.end method

.method public getXYRatio()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->xyRatio:F

    return v0
.end method

.method public getYXRatio()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->yxRatio:F

    return v0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->ext:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setOriSizeAndFacePos(IIII)V
    .locals 2
    .param p1, "oriWidth"    # I
    .param p2, "oriHeight"    # I
    .param p3, "faceX"    # I
    .param p4, "faceY"    # I

    .prologue
    const/4 v0, 0x0

    .line 25
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->oriWidth:I

    .line 26
    iput p2, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->oriHeight:I

    .line 29
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 30
    :cond_0
    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->xyRatio:F

    .line 31
    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->yxRatio:F

    .line 32
    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->faceXRatio:F

    .line 33
    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->faceYRatio:F

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_1
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->xyRatio:F

    .line 36
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->yxRatio:F

    .line 37
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->faceXRatio:F

    .line 38
    int-to-float v0, p4

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->faceYRatio:F

    goto :goto_0
.end method

.method public setOriUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "oriUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/FeedImgInfo;->oriUrl:Ljava/lang/String;

    .line 21
    return-void
.end method
