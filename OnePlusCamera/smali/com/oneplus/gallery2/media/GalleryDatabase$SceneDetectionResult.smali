.class public final Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SceneDetectionResult"
.end annotation


# static fields
.field private static final VERSION:I = 0x1


# instance fields
.field public volatile confidence:F

.field public volatile sceneId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 667
    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    .line 671
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 667
    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    .line 674
    iput p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    .line 675
    iput p2, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->confidence:F

    .line 676
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 667
    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    .line 681
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 682
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 684
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    const/4 v1, 0x2

    .line 685
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->confidence:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[1,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
