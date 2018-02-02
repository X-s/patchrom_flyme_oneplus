.class public final Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectDetectionResult"
.end annotation


# static fields
.field private static final VERSION:I = 0x1


# instance fields
.field public volatile bottom:I

.field public volatile confidence:F

.field public volatile left:I

.field public volatile objectTypeId:I

.field public volatile right:I

.field public volatile top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 616
    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    .line 622
    return-void
.end method

.method public constructor <init>(IFIIII)V
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 616
    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    .line 625
    iput p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    .line 626
    iput p2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->confidence:F

    .line 627
    iput p3, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->left:I

    .line 628
    iput p4, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->top:I

    .line 629
    iput p5, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->right:I

    .line 630
    iput p6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->bottom:I

    .line 631
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 616
    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    .line 636
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 637
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 639
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    const/4 v1, 0x2

    .line 640
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->confidence:F

    const/4 v1, 0x3

    .line 641
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->left:I

    const/4 v1, 0x4

    .line 642
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->top:I

    const/4 v1, 0x5

    .line 643
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->right:I

    const/4 v1, 0x6

    .line 644
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->bottom:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[1,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
