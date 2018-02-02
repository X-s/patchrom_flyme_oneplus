.class Lcom/oneplus/gallery/media/MediaComparator$1;
.super Lcom/oneplus/gallery/media/MediaComparator;
.source "MediaComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/media/MediaComparator;-><init>(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaComparator;)V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 22
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 23
    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 24
    return v8

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x1

    .line 25
    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 26
    return v1

    :cond_2
    move v0, v2

    .line 25
    goto :goto_1

    .line 29
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 31
    if-nez v0, :cond_4

    .line 37
    if-nez v3, :cond_6

    .line 39
    return v2

    .line 33
    :cond_4
    if-nez v3, :cond_5

    .line 35
    return v1

    .line 34
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    return v0

    .line 38
    :cond_6
    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery/media/Media;

    check-cast p2, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaComparator$1;->compare(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)I

    move-result v0

    return v0
.end method
