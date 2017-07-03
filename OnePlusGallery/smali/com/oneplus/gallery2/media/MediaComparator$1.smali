.class final Lcom/oneplus/gallery2/media/MediaComparator$1;
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
    .line 14
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaComparator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I
    .locals 5
    .param p1, "lhs"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "rhs"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "pathL":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "pathR":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    .line 25
    .local v3, "ret":I
    if-nez v3, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "lhsId":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "rhsId":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    .line 38
    .end local v0    # "lhsId":Ljava/lang/String;
    .end local v3    # "ret":I
    .end local v4    # "rhsId":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 34
    :cond_1
    const/4 v3, -0x1

    goto :goto_0

    .line 36
    :cond_2
    if-eqz v2, :cond_3

    .line 37
    const/4 v3, 0x1

    goto :goto_0

    .line 38
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery2/media/Media;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator$1;->compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method
