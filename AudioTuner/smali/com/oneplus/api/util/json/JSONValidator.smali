.class public Lcom/oneplus/api/util/json/JSONValidator;
.super Ljava/lang/Object;
.source "JSONValidator.java"


# instance fields
.field private c:C

.field private col:I

.field private it:Ljava/text/CharacterIterator;

.field private listener:Lcom/oneplus/api/util/json/JSONErrorListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/api/util/json/JSONErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/api/util/json/JSONErrorListener;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oneplus/api/util/json/JSONValidator;->listener:Lcom/oneplus/api/util/json/JSONErrorListener;

    .line 15
    return-void
.end method

.method private aggregate(CCZ)Z
    .locals 4
    .param p1, "entryCharacter"    # C
    .param p2, "exitCharacter"    # C
    .param p3, "prefix"    # Z

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-char v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-eq v2, p1, :cond_0

    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 85
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->skipWhiteSpace()V

    .line 86
    iget-char v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-ne v2, p2, :cond_3

    .line 87
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    goto :goto_0

    .line 97
    .local v0, "start":I
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 98
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->skipWhiteSpace()V

    .line 100
    .end local v0    # "start":I
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->value()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 101
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->skipWhiteSpace()V

    .line 102
    iget-char v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_5

    .line 103
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 112
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->skipWhiteSpace()V

    .line 92
    :cond_3
    if-eqz p3, :cond_2

    .line 93
    iget v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    .line 94
    .restart local v0    # "start":I
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->string()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "string"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->skipWhiteSpace()V

    .line 96
    iget-char v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    const-string v1, "colon"

    iget v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 104
    .end local v0    # "start":I
    :cond_5
    iget-char v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-ne v2, p2, :cond_6

    .line 115
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    goto :goto_0

    .line 107
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comma or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 110
    :cond_7
    const-string v1, "value"

    iget v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method private array()Z
    .locals 3

    .prologue
    .line 75
    const/16 v0, 0x5b

    const/16 v1, 0x5d

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/api/util/json/JSONValidator;->aggregate(CCZ)Z

    move-result v0

    return v0
.end method

.method private error(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "col"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->listener:Lcom/oneplus/api/util/json/JSONErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->listener:Lcom/oneplus/api/util/json/JSONErrorListener;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/api/util/json/JSONErrorListener;->error(Ljava/lang/String;I)V

    .line 212
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private escape()Z
    .locals 3

    .prologue
    .line 181
    iget v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    add-int/lit8 v0, v1, -0x1

    .line 182
    .local v0, "start":I
    const-string v1, "\\\"/bfnrtu"

    iget-char v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 183
    const-string v1, "escape sequence \\\",\\\\,\\/,\\b,\\f,\\n,\\r,\\t or \\uxxxx"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    .line 191
    :goto_0
    return v1

    .line 185
    :cond_0
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/api/util/json/JSONValidator;->ishex(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/api/util/json/JSONValidator;->ishex(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/api/util/json/JSONValidator;->ishex(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/api/util/json/JSONValidator;->ishex(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    :cond_1
    const-string v1, "unicode escape sequence \\uxxxx"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 191
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private ishex(C)Z
    .locals 2
    .param p1, "d"    # C

    .prologue
    .line 195
    const-string v0, "0123456789abcdefABCDEF"

    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private literal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "ci":Ljava/text/CharacterIterator;
    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    move-result v3

    .line 58
    .local v3, "t":C
    iget-char v4, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-eq v4, v3, :cond_1

    const/4 v1, 0x0

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    iget v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    .line 61
    .local v2, "start":I
    const/4 v1, 0x1

    .line 62
    .local v1, "ret":Z
    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    :goto_1
    const v4, 0xffff

    if-eq v3, v4, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    move-result v4

    if-eq v3, v4, :cond_3

    .line 64
    const/4 v1, 0x0

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 70
    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "literal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    goto :goto_0

    .line 62
    :cond_3
    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    goto :goto_1
.end method

.method private nextCharacter()C
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->it:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    iput-char v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    .line 200
    iget v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    .line 201
    iget-char v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    return v0
.end method

.method private number()Z
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 120
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    .line 154
    :goto_0
    return v1

    .line 121
    :cond_0
    iget v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    .line 123
    .local v0, "start":I
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 125
    :cond_1
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 133
    :cond_2
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_6

    .line 134
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 135
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    :goto_1
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    goto :goto_1

    .line 127
    :cond_3
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    :goto_2
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    goto :goto_2

    .line 130
    :cond_4
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 138
    :cond_5
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 142
    :cond_6
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_7

    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_b

    .line 143
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 144
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_8

    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-ne v1, v3, :cond_9

    .line 145
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 147
    :cond_9
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 148
    :goto_3
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    goto :goto_3

    .line 150
    :cond_a
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v1

    goto/16 :goto_0

    .line 154
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private object()Z
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0x7b

    const/16 v1, 0x7d

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/api/util/json/JSONValidator;->aggregate(CCZ)Z

    move-result v0

    return v0
.end method

.method private skipWhiteSpace()V
    .locals 1

    .prologue
    .line 205
    :goto_0
    iget-char v0, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method private string()Z
    .locals 6

    .prologue
    const/16 v5, 0x22

    const/4 v2, 0x0

    .line 158
    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-eq v3, v5, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    iget v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    .line 161
    .local v1, "start":I
    const/4 v0, 0x0

    .line 163
    .local v0, "escaped":Z
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    :goto_1
    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const v4, 0xffff

    if-eq v3, v4, :cond_5

    .line 164
    if-nez v0, :cond_3

    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 165
    const/4 v0, 0x1

    .line 163
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    goto :goto_1

    .line 166
    :cond_3
    if-eqz v0, :cond_4

    .line 167
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->escape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const/4 v0, 0x0

    goto :goto_2

    .line 171
    :cond_4
    iget-char v3, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    if-ne v3, v5, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->nextCharacter()C

    .line 173
    const/4 v2, 0x1

    goto :goto_0

    .line 177
    :cond_5
    const-string v2, "quoted string"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method private valid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 26
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    .local v0, "ret":Z
    new-instance v2, Ljava/text/StringCharacterIterator;

    invoke-direct {v2, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->it:Ljava/text/CharacterIterator;

    .line 30
    iget-object v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->it:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result v2

    iput-char v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    .line 31
    iput v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    .line 32
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->value()Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    const-string v2, "value"

    invoke-direct {p0, v2, v1}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 35
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->skipWhiteSpace()V

    .line 36
    iget-char v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->c:C

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 37
    const-string v1, "end"

    iget v2, p0, Lcom/oneplus/api/util/json/JSONValidator;->col:I

    invoke-direct {p0, v1, v2}, Lcom/oneplus/api/util/json/JSONValidator;->error(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private value()Z
    .locals 1

    .prologue
    .line 45
    const-string v0, "true"

    invoke-direct {p0, v0}, Lcom/oneplus/api/util/json/JSONValidator;->literal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-direct {p0, v0}, Lcom/oneplus/api/util/json/JSONValidator;->literal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/oneplus/api/util/json/JSONValidator;->literal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->string()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->number()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->object()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONValidator;->array()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->listener:Lcom/oneplus/api/util/json/JSONErrorListener;

    invoke-interface {v1, p1}, Lcom/oneplus/api/util/json/JSONErrorListener;->start(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/oneplus/api/util/json/JSONValidator;->valid(Ljava/lang/String;)Z

    move-result v0

    .line 21
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/oneplus/api/util/json/JSONValidator;->listener:Lcom/oneplus/api/util/json/JSONErrorListener;

    invoke-interface {v1}, Lcom/oneplus/api/util/json/JSONErrorListener;->end()V

    .line 22
    return v0
.end method
