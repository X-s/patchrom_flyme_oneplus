.class public Lcom/oneplus/settings/electroniccard/OPHutil;
.super Ljava/lang/Object;
.source "OPHutil.java"


# direct methods
.method public static varargs $m([Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .param p0, "objs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "idx":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v3, p0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    array-length v3, p0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 19
    :cond_0
    return-object v2

    .line 21
    :cond_1
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 22
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/oneplus/settings/electroniccard/OPHutil;->obj2str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    aget-object v4, p0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_2
    return-object v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlank(Ljava/lang/Object;)Z
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 44
    instance-of v4, p0, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    move-object v1, p0

    .line 45
    check-cast v1, Ljava/lang/CharSequence;

    .line 47
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "strLen":I
    if-nez v2, :cond_1

    .line 48
    .end local v2    # "strLen":I
    :cond_0
    return v3

    .line 50
    .restart local v2    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 51
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    return v5

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_3
    return v3

    .line 57
    .end local v0    # "i":I
    .end local v1    # "str":Ljava/lang/CharSequence;
    .end local v2    # "strLen":I
    :cond_4
    if-nez p0, :cond_5

    :goto_1
    return v3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/electroniccard/OPHutil;->isBlank(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method public static obj2str(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
