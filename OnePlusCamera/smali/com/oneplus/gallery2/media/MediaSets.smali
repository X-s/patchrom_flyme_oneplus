.class public final Lcom/oneplus/gallery2/media/MediaSets;
.super Ljava/lang/Object;
.source "MediaSets.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z
    .locals 1

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 33
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p0, v0}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v0

    return v0

    .line 32
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isEmpty(Ljava/lang/Integer;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    return v1
.end method
