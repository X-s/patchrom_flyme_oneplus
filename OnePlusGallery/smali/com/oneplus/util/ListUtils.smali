.class public final Lcom/oneplus/util/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
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
    .line 28
    array-length v2, p0

    .line 29
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 32
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 31
    :cond_0
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 85
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "target":Ljava/lang/Comparable;, "TT;"
    if-nez p0, :cond_1

    .line 86
    const/4 v2, 0x0

    .line 109
    :cond_0
    :goto_0
    return-object v2

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, "candicate":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    move-object v2, v0

    .line 109
    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 91
    .local v2, "obj":Ljava/lang/Comparable;, "TT;"
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 92
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 94
    if-gez v3, :cond_6

    .line 96
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_ABOVE_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-ne p2, v4, :cond_4

    .line 88
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 98
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3

    .line 99
    :cond_5
    move-object v0, v2

    .line 100
    goto :goto_2

    .line 103
    :cond_6
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_BELOW_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-eq p2, v4, :cond_3

    .line 105
    if-eqz v0, :cond_7

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    .line 106
    :cond_7
    move-object v0, v2

    goto :goto_2
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
    .line 123
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_1

    .line 124
    const/4 v2, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 126
    .local v0, "candicate":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .end local v0    # "candicate":Ljava/lang/Object;, "TT;"
    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    move-object v2, v0

    .line 147
    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 130
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 132
    if-gez v3, :cond_6

    .line 134
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_ABOVE_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-ne p3, v4, :cond_4

    .line 126
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 136
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {p2, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3

    .line 137
    :cond_5
    move-object v0, v2

    .line 138
    .restart local v0    # "candicate":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 141
    .end local v0    # "candicate":Ljava/lang/Object;, "TT;"
    :cond_6
    sget-object v4, Lcom/oneplus/util/SearchMode;->NEAREST_BELOW_OR_EQUALS:Lcom/oneplus/util/SearchMode;

    if-eq p3, v4, :cond_3

    .line 143
    if-eqz v0, :cond_7

    invoke-interface {p2, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    .line 144
    :cond_7
    move-object v0, v2

    .restart local v0    # "candicate":Ljava/lang/Object;, "TT;"
    goto :goto_2
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

    .line 64
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "lastObj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 71
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

    .line 44
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v2

    .line 46
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 49
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "lastObj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 52
    :cond_2
    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static sumOfIntList(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 159
    const/4 v1, 0x0

    .line 163
    :cond_0
    return v1

    .line 160
    :cond_1
    const/4 v1, 0x0

    .line 161
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 162
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toStringSet(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 179
    :cond_0
    return-object v1

    .line 176
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 178
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
