.class final Lcom/oneplus/camera/media/DefaultVideoResolutionSelector$1;
.super Ljava/lang/Object;
.source "DefaultVideoResolutionSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/camera/media/Resolution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/Resolution;)I
    .locals 5
    .param p1, "x"    # Lcom/oneplus/camera/media/Resolution;
    .param p2, "y"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p2}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 37
    .local v1, "sizeDiff":I
    if-eqz v1, :cond_0

    .line 38
    return v1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v2

    invoke-virtual {p2}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v3

    sub-int v0, v2, v3

    .line 40
    .local v0, "fpsDiff":I
    if-eqz v0, :cond_1

    .line 41
    return v0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->hashCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/oneplus/camera/media/Resolution;->hashCode()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lcom/oneplus/camera/media/Resolution;

    .end local p1    # "x":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/camera/media/Resolution;

    .end local p2    # "y":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector$1;->compare(Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/Resolution;)I

    move-result v0

    return v0
.end method
