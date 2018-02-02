.class Lcom/oneplus/gallery2/media/MediaComparator$2;
.super Lcom/oneplus/gallery2/media/MediaComparator;
.source "MediaComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaComparator;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 53
    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 54
    return v8

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x1

    .line 55
    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 56
    return v1

    :cond_2
    move v0, v2

    .line 55
    goto :goto_1

    .line 59
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 61
    if-nez v0, :cond_4

    .line 77
    if-nez v3, :cond_8

    .line 79
    return v2

    .line 63
    :cond_4
    if-nez v3, :cond_5

    .line 75
    return v1

    .line 65
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 66
    if-eqz v0, :cond_7

    .line 73
    :cond_6
    neg-int v0, v0

    return v0

    .line 68
    :cond_7
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v2

    .line 70
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    return v0

    .line 78
    :cond_8
    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    check-cast p2, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator$2;->compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method
