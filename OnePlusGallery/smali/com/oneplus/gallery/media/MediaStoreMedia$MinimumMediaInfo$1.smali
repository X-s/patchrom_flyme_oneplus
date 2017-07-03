.class final Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo$1;
.super Ljava/lang/Object;
.source "MediaStoreMedia.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
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
        "Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;)I
    .locals 10
    .param p1, "x"    # Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    .param p2, "y"    # Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 73
    iget-wide v4, p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->takenTime:J

    iget-wide v6, p2, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->takenTime:J

    sub-long v0, v4, v6

    .line 74
    .local v0, "timeDiff":J
    cmp-long v4, v0, v8

    if-gez v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    cmp-long v4, v0, v8

    if-lez v4, :cond_2

    move v2, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v4, p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 80
    iget-object v3, p2, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 81
    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    iget-object v3, p2, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    .line 84
    :cond_3
    iget-object v2, p2, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo$1;->compare(Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;)I

    move-result v0

    return v0
.end method
