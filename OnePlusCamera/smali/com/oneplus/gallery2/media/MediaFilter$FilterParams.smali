.class public Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;
.super Ljava/lang/Object;
.source "MediaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterParams"
.end annotation


# instance fields
.field public final keywordPatterns:[Ljava/util/regex/Pattern;

.field public final keywords:[Ljava/lang/String;

.field public final timeConditions:[Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 44
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->keywords:[Ljava/lang/String;

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->keywords:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->keywordPatterns:[Ljava/util/regex/Pattern;

    .line 46
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->keywords:[Ljava/lang/String;

    array-length v0, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->keywordPatterns:[Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->keywords:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->createPattern(Ljava/lang/CharSequence;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->keywords:[Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    if-nez p2, :cond_2

    .line 53
    new-array v0, v3, [Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->timeConditions:[Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;

    .line 54
    :goto_2
    return-void

    .line 51
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;->timeConditions:[Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;

    goto :goto_2
.end method

.method private static createPattern(Ljava/lang/CharSequence;)Ljava/util/regex/Pattern;
    .locals 5

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, ".*"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 63
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 64
    sparse-switch v3, :sswitch_data_0

    .line 89
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, ".*"

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 70
    :sswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 87
    :sswitch_2
    const/16 v4, 0x5c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const-string/jumbo v0, ".*"

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x24 -> :sswitch_2
        0x26 -> :sswitch_2
        0x27 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2a -> :sswitch_0
        0x2b -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_2
        0x3f -> :sswitch_1
        0x5b -> :sswitch_2
        0x5c -> :sswitch_2
        0x5d -> :sswitch_2
        0x5e -> :sswitch_2
        0x7b -> :sswitch_2
        0x7d -> :sswitch_2
    .end sparse-switch
.end method
