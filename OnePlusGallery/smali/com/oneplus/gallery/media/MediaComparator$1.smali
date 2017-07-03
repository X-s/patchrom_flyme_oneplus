.class final Lcom/oneplus/gallery/media/MediaComparator$1;
.super Lcom/oneplus/gallery/media/MediaComparator;
.source "MediaComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/media/MediaComparator;-><init>(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaComparator$1;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)I
    .locals 10
    .param p1, "lhs"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "rhs"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 22
    instance-of v6, p1, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v6, :cond_1

    instance-of v6, p2, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v6, :cond_1

    .line 23
    check-cast p1, Lcom/oneplus/gallery/media/GroupMedia;

    .end local p1    # "lhs":Lcom/oneplus/gallery/media/Media;
    invoke-interface {p1}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v4

    check-cast p2, Lcom/oneplus/gallery/media/GroupMedia;

    .end local p2    # "rhs":Lcom/oneplus/gallery/media/Media;
    invoke-interface {p2}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 43
    :cond_0
    :goto_0
    return v4

    .line 26
    .restart local p1    # "lhs":Lcom/oneplus/gallery/media/Media;
    .restart local p2    # "rhs":Lcom/oneplus/gallery/media/Media;
    :cond_1
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v6

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 27
    .local v0, "diff":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 29
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    move v4, v5

    .line 30
    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "pathL":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "pathR":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 37
    if-eqz v3, :cond_3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    neg-int v4, v4

    goto :goto_0

    :cond_3
    move v4, v5

    .line 39
    goto :goto_0

    .line 41
    :cond_4
    if-nez v3, :cond_0

    .line 43
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/oneplus/gallery/media/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery/media/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaComparator$1;->compare(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)I

    move-result v0

    return v0
.end method
