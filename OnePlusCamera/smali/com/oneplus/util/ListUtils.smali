.class public final Lcom/oneplus/util/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 4
    .param p0, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    array-length v2, p0

    .line 27
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 29
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static findNearestObject(Ljava/util/List;Ljava/lang/Comparable;Lcom/oneplus/util/SearchMode;)Ljava/lang/Comparable;
    .locals 5
    .param p2, "mode"    # Lcom/oneplus/util/SearchMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<TT;>;TT;",
            "Lcom/oneplus/util/SearchMode;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "target":Ljava/lang/Comparable;, "TT;"
    if-nez p0, :cond_1

    .line 84
    const/4 v2, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object v2

    .line 85
    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "candicate":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 88
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 89
    .local v2, "obj":Ljava/lang/Comparable;, "TT;"
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 90
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 92
    if-gez v3, :cond_5

    .line 94
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_ABOVE_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-ne p2, v4, :cond_3

    .line 86
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 96
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    .line 97
    :cond_4
    move-object v0, v2

    goto :goto_2

    .line 101
    :cond_5
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_BELOW_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-eq p2, v4, :cond_2

    .line 103
    if-eqz v0, :cond_6

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    .line 104
    :cond_6
    move-object v0, v2

    goto :goto_2

    .end local v2    # "obj":Ljava/lang/Comparable;, "TT;"
    .end local v3    # "result":I
    :cond_7
    move-object v2, v0

    .line 107
    goto :goto_0
.end method

.method public static findNearestObject(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/oneplus/util/SearchMode;)Ljava/lang/Object;
    .locals 5
    .param p3, "mode"    # Lcom/oneplus/util/SearchMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;",
            "Ljava/util/Comparator",
            "<TT;>;",
            "Lcom/oneplus/util/SearchMode;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_1

    .line 122
    const/4 v2, 0x0

    .line 145
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :cond_1
    const/4 v0, 0x0

    .line 124
    .local v0, "candicate":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .end local v0    # "candicate":Ljava/lang/Object;, "TT;"
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 126
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 128
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 130
    if-gez v3, :cond_5

    .line 132
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_ABOVE_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-ne p3, v4, :cond_3

    .line 124
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 134
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p2, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    .line 135
    :cond_4
    move-object v0, v2

    .restart local v0    # "candicate":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 139
    .end local v0    # "candicate":Ljava/lang/Object;, "TT;"
    :cond_5
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_BELOW_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-eq p3, v4, :cond_2

    .line 141
    if-eqz v0, :cond_6

    invoke-interface {p2, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    .line 142
    :cond_6
    move-object v0, v2

    .restart local v0    # "candicate":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .end local v0    # "candicate":Ljava/lang/Object;, "TT;"
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    .end local v3    # "result":I
    :cond_7
    move-object v2, v0

    .line 145
    goto :goto_0
.end method

.method public static isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 62
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "lastObj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 69
    :cond_2
    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLastObject(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v2

    .line 44
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 45
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 47
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "lastObj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 50
    :cond_2
    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
