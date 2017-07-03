.class final Lcom/oneplus/gallery2/media/MediaComparator$2;
.super Lcom/oneplus/gallery2/media/MediaComparator;
.source "MediaComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaComparator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I
    .locals 12
    .param p1, "lhs"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "rhs"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 52
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v8

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 53
    .local v0, "diff":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    .line 54
    const/4 v7, -0x1

    .line 79
    :goto_0
    return v7

    .line 55
    :cond_0
    const-wide/16 v8, 0x1

    cmp-long v7, v0, v8

    if-lez v7, :cond_1

    .line 56
    const/4 v7, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "pathL":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "pathR":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 63
    if-eqz v4, :cond_3

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    .line 66
    .local v5, "ret":I
    if-nez v5, :cond_2

    .line 68
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "lhsId":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "rhsId":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    .line 71
    invoke-virtual {v2, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    goto :goto_0

    .line 73
    .end local v2    # "lhsId":Ljava/lang/String;
    .end local v6    # "rhsId":Ljava/lang/String;
    :cond_2
    neg-int v7, v5

    goto :goto_0

    .line 75
    .end local v5    # "ret":I
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 77
    :cond_4
    if-eqz v4, :cond_5

    .line 78
    const/4 v7, -0x1

    goto :goto_0

    .line 79
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery2/media/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator$2;->compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method
