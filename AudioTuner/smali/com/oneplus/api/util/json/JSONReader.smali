.class public abstract Lcom/oneplus/api/util/json/JSONReader;
.super Ljava/lang/Object;
.source "JSONReader.java"


# static fields
.field private static final ARRAY_END:Ljava/lang/Object;

.field private static final COLON:Ljava/lang/Object;

.field private static final COMMA:Ljava/lang/Object;

.field public static final CURRENT:I = 0x1

.field public static final FIRST:I = 0x0

.field public static final NEXT:I = 0x2

.field private static final OBJECT_END:Ljava/lang/Object;

.field private static escapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private c:C

.field private it:Ljava/text/CharacterIterator;

.field private token:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x2f

    const/16 v2, 0x22

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/api/util/json/JSONReader;->OBJECT_END:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/api/util/json/JSONReader;->ARRAY_END:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/api/util/json/JSONReader;->COLON:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/api/util/json/JSONReader;->COMMA:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/api/util/json/JSONReader;->buf:Ljava/lang/StringBuffer;

    return-void
.end method

.method private add()V
    .locals 1

    .prologue
    .line 206
    iget-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    invoke-direct {p0, v0}, Lcom/oneplus/api/util/json/JSONReader;->add(C)V

    .line 207
    return-void
.end method

.method private add(C)V
    .locals 1
    .param p1, "cc"    # C

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONReader;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    .line 203
    return-void
.end method

.method private addDigits()I
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x0

    .local v0, "ret":I
    :goto_0
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->add()V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return v0
.end method

.method private array()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/api/util/json/JSONReader;->ARRAY_END:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/api/util/json/JSONReader;->COMMA:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_1
    return-object v0
.end method

.method private next()C
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    .line 46
    iget-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    return v0
.end method

.method private number()Ljava/lang/Object;
    .locals 6

    .prologue
    const/16 v5, 0x2d

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "length":I
    const/4 v0, 0x0

    .line 144
    .local v0, "isFloatingPoint":Z
    iget-object v3, p0, Lcom/oneplus/api/util/json/JSONReader;->buf:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 146
    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    if-ne v3, v5, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->add()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->addDigits()I

    move-result v3

    add-int/2addr v1, v3

    .line 150
    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->add()V

    .line 152
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->addDigits()I

    move-result v3

    add-int/2addr v1, v3

    .line 153
    const/4 v0, 0x1

    .line 155
    :cond_1
    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v4, 0x45

    if-ne v3, v4, :cond_5

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->add()V

    .line 157
    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_3

    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    if-ne v3, v5, :cond_4

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->add()V

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->addDigits()I

    .line 161
    const/4 v0, 0x1

    .line 164
    :cond_5
    iget-object v3, p0, Lcom/oneplus/api/util/json/JSONReader;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "s":Ljava/lang/String;
    if-eqz v0, :cond_7

    const/16 v3, 0x11

    if-ge v1, v3, :cond_6

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_6
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v3, 0x13

    if-ge v1, v3, :cond_8

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private object()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "key":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/api/util/json/JSONReader;->OBJECT_END:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    sget-object v3, Lcom/oneplus/api/util/json/JSONReader;->OBJECT_END:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/api/util/json/JSONReader;->COMMA:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    return-object v1
.end method

.method private read()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->skipWhiteSpace()V

    .line 81
    iget-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    .line 82
    .local v0, "ch":C
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    .line 83
    sparse-switch v0, :sswitch_data_0

    .line 104
    iget-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->previous()C

    move-result v1

    iput-char v1, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    .line 105
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->number()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    .line 110
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    return-object v1

    .line 84
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->string()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 85
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->array()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 86
    :sswitch_2
    sget-object v1, Lcom/oneplus/api/util/json/JSONReader;->ARRAY_END:Ljava/lang/Object;

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 87
    :sswitch_3
    sget-object v1, Lcom/oneplus/api/util/json/JSONReader;->COMMA:Ljava/lang/Object;

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 88
    :sswitch_4
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->object()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 89
    :sswitch_5
    sget-object v1, Lcom/oneplus/api/util/json/JSONReader;->OBJECT_END:Ljava/lang/Object;

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 90
    :sswitch_6
    sget-object v1, Lcom/oneplus/api/util/json/JSONReader;->COLON:Ljava/lang/Object;

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 92
    :sswitch_7
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    .line 93
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 96
    :sswitch_8
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    .line 97
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 100
    :sswitch_9
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->token:Ljava/lang/Object;

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2c -> :sswitch_3
        0x3a -> :sswitch_6
        0x5b -> :sswitch_1
        0x5d -> :sswitch_2
        0x66 -> :sswitch_8
        0x6e -> :sswitch_9
        0x74 -> :sswitch_7
        0x7b -> :sswitch_4
        0x7d -> :sswitch_5
    .end sparse-switch
.end method

.method private skipWhiteSpace()V
    .locals 1

    .prologue
    .line 50
    :goto_0
    iget-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method private string()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->buf:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 180
    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    .line 181
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    .line 183
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->unicode()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/api/util/json/JSONReader;->add(C)V

    goto :goto_0

    .line 186
    :cond_1
    sget-object v1, Lcom/oneplus/api/util/json/JSONReader;->escapes:Ljava/util/Map;

    iget-char v2, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 188
    check-cast v0, Ljava/lang/Character;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/api/util/json/JSONReader;->add(C)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->add()V

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    .line 197
    iget-object v1, p0, Lcom/oneplus/api/util/json/JSONReader;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unicode()C
    .locals 4

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->next()C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 211
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :sswitch_0
    shl-int/lit8 v2, v1, 0x4

    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x30

    .line 216
    goto :goto_1

    .line 218
    :sswitch_1
    shl-int/lit8 v2, v1, 0x4

    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x6b

    .line 219
    goto :goto_1

    .line 221
    :sswitch_2
    shl-int/lit8 v2, v1, 0x4

    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x4b

    goto :goto_1

    .line 225
    :cond_0
    int-to-char v2, v1

    return v2

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/api/util/json/JSONReader;->read(Ljava/text/CharacterIterator;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/text/CharacterIterator;)Ljava/lang/Object;
    .locals 1
    .param p1, "it"    # Ljava/text/CharacterIterator;

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/api/util/json/JSONReader;->read(Ljava/text/CharacterIterator;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/text/CharacterIterator;I)Ljava/lang/Object;
    .locals 1
    .param p1, "ci"    # Ljava/text/CharacterIterator;
    .param p2, "start"    # I

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/api/util/json/JSONReader;->it:Ljava/text/CharacterIterator;

    .line 57
    packed-switch p2, :pswitch_data_0

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;->read()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONReader;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/api/util/json/JSONReader;->c:C

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
