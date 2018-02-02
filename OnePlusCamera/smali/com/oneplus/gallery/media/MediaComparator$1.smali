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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    instance-of v0, p1, Lcom/oneplus/gallery/media/GroupMedia;

    if-nez v0, :cond_1

    .line 26
    :cond_0
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 27
    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 28
    return v8

    .line 22
    :cond_1
    instance-of v0, p2, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lcom/oneplus/gallery/media/GroupMedia;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/oneplus/gallery/media/GroupMedia;

    invoke-interface {p2}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    move v0, v2

    .line 27
    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x1

    .line 29
    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 30
    return v1

    :cond_4
    move v0, v2

    .line 29
    goto :goto_1

    .line 33
    :cond_5
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 35
    if-nez v0, :cond_6

    .line 41
    if-nez v3, :cond_8

    .line 43
    return v2

    .line 37
    :cond_6
    if-nez v3, :cond_7

    .line 39
    return v1

    .line 38
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    return v0

    .line 42
    :cond_8
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
