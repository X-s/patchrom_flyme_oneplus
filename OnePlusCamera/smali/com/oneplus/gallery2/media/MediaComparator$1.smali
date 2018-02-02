.class Lcom/oneplus/gallery2/media/MediaComparator$1;
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
    .line 13
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

    .line 19
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .line 20
    instance-of v3, p2, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .line 22
    if-nez v0, :cond_4

    .line 24
    :cond_0
    if-eqz v0, :cond_5

    .line 27
    :cond_1
    if-nez v0, :cond_6

    .line 38
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 40
    if-nez v0, :cond_a

    .line 51
    if-nez v2, :cond_c

    .line 55
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator$1;->ID_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 22
    :cond_4
    if-nez v3, :cond_0

    .line 23
    return v8

    .line 24
    :cond_5
    if-eqz v3, :cond_1

    .line 25
    return v1

    .line 27
    :cond_6
    if-eqz v3, :cond_2

    move-object v0, p2

    .line 30
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getAddedTime()J

    move-result-wide v4

    move-object v0, p1

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getAddedTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 31
    cmp-long v0, v4, v6

    if-ltz v0, :cond_7

    move v0, v1

    :goto_0
    if-nez v0, :cond_8

    .line 32
    return v8

    :cond_7
    move v0, v2

    .line 31
    goto :goto_0

    :cond_8
    const-wide/16 v6, 0x1

    .line 33
    cmp-long v0, v4, v6

    if-gtz v0, :cond_9

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 34
    return v1

    :cond_9
    move v0, v2

    .line 33
    goto :goto_1

    .line 42
    :cond_a
    if-nez v2, :cond_b

    .line 49
    return v1

    .line 44
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    neg-int v0, v0

    return v0

    .line 52
    :cond_c
    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    check-cast p2, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator$1;->compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method
