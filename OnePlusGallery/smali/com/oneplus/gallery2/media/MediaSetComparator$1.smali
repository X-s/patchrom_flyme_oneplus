.class final Lcom/oneplus/gallery2/media/MediaSetComparator$1;
.super Lcom/oneplus/gallery2/media/MediaSetComparator;
.source "MediaSetComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSetComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>([Lcom/oneplus/base/PropertyKey;)V
    .locals 0

    .prologue
    .line 18
    .local p1, "x0":[Lcom/oneplus/base/PropertyKey;, "[Lcom/oneplus/base/PropertyKey<*>;"
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;-><init>([Lcom/oneplus/base/PropertyKey;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I
    .locals 7
    .param p1, "lhs"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "rhs"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 25
    .local v1, "leftType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 26
    .local v4, "rightType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 28
    # getter for: Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT_MEDIA_SET_ORDER:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaSetComparator;->access$000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 29
    .local v0, "leftIndex":I
    # getter for: Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT_MEDIA_SET_ORDER:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaSetComparator;->access$000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 30
    .local v3, "rightIndex":I
    if-ltz v0, :cond_3

    .line 32
    if-gez v3, :cond_1

    .line 33
    const/4 v2, -0x1

    .line 53
    .end local v0    # "leftIndex":I
    .end local v3    # "rightIndex":I
    :cond_0
    :goto_0
    return v2

    .line 34
    .restart local v0    # "leftIndex":I
    .restart local v3    # "rightIndex":I
    :cond_1
    sub-int v2, v0, v3

    .line 35
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 43
    .end local v0    # "leftIndex":I
    .end local v2    # "result":I
    .end local v3    # "rightIndex":I
    :cond_2
    # invokes: Lcom/oneplus/gallery2/media/MediaSetComparator;->compareMediaAddedTimeDesc(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaSetComparator;->access$100(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I

    move-result v2

    .line 44
    .restart local v2    # "result":I
    if-nez v2, :cond_0

    .line 48
    # invokes: Lcom/oneplus/gallery2/media/MediaSetComparator;->compareNamesAsc(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaSetComparator;->access$200(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I

    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sub-int v2, v5, v6

    goto :goto_0

    .line 38
    .end local v2    # "result":I
    .restart local v0    # "leftIndex":I
    .restart local v3    # "rightIndex":I
    :cond_3
    if-ltz v3, :cond_2

    .line 39
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/oneplus/gallery2/media/MediaSet;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery2/media/MediaSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaSetComparator$1;->compare(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I

    move-result v0

    return v0
.end method
