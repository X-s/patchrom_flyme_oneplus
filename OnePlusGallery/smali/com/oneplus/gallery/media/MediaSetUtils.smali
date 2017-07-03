.class public final Lcom/oneplus/gallery/media/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsMedia(Lcom/oneplus/gallery/media/MediaSet;)Z
    .locals 3
    .param p0, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    sget-object v2, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p0, v2}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 23
    .local v0, "mediaCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
