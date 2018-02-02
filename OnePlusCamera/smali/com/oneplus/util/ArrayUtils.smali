.class public Lcom/oneplus/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([JJ)Z
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/oneplus/util/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 14
    const/4 v0, 0x0

    return v0

    .line 15
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/oneplus/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static indexOf([JJ)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    const/4 v4, -0x1

    .line 41
    if-nez p0, :cond_0

    .line 42
    return v4

    .line 43
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 45
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    .line 46
    return v0

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_2
    return v4
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v2, -0x1

    .line 60
    if-nez p0, :cond_0

    .line 61
    return v2

    .line 62
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    .line 64
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    :cond_1
    aget-object v1, p0, v0

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 66
    :cond_2
    return v0

    .line 62
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_4
    return v2
.end method
