.class public final Lorg/jsoup/helper/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final padding:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "   "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "     "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "       "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "        "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "         "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "          "

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/helper/StringUtil;->padding:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs in(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "needle"    # Ljava/lang/String;
    .param p1, "haystack"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 134
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 138
    :goto_1
    return v1

    .line 134
    :cond_0
    aget-object v0, p1, v2

    .line 135
    .local v0, "hay":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const/4 v1, 0x1

    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lorg/jsoup/helper/StringUtil;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 94
    const/4 v2, 0x1

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isWhitespace(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 103
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "strings"    # Ljava/util/Collection;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/helper/StringUtil;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strings"    # Ljava/util/Iterator;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 31
    const-string v1, ""

    .line 42
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "start":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 110
    .local v3, "lastWasWhite":Z
    const/4 v4, 0x0

    .line 112
    .local v4, "modified":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 130
    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 114
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 115
    .local v0, "c":I
    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 116
    if-eqz v3, :cond_2

    .line 117
    const/4 v4, 0x1

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_2
    if-eq v0, v7, :cond_3

    .line 121
    const/4 v4, 0x1

    .line 122
    :cond_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    const/4 v3, 0x1

    .line 124
    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 127
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static padding(I)Ljava/lang/String;
    .locals 4
    .param p0, "width"    # I

    .prologue
    .line 51
    if-gez p0, :cond_0

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "width must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    sget-object v2, Lorg/jsoup/helper/StringUtil;->padding:[Ljava/lang/String;

    array-length v2, v2

    if-ge p0, v2, :cond_1

    .line 55
    sget-object v2, Lorg/jsoup/helper/StringUtil;->padding:[Ljava/lang/String;

    aget-object v2, v2, p0

    .line 60
    :goto_0
    return-object v2

    .line 57
    :cond_1
    new-array v1, p0, [C

    .line 58
    .local v1, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p0, :cond_2

    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 59
    :cond_2
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
