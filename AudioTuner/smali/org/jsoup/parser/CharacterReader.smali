.class Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'


# instance fields
.field private final input:Ljava/lang/String;

.field private final length:I

.field private mark:I

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 14
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 17
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 18
    const-string v0, "\r\n?"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 22
    return-void
.end method


# virtual methods
.method advance()V
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 48
    return-void
.end method

.method consume()C
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xffff

    .line 38
    .local v0, "val":C
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 39
    return v0

    .line 37
    .end local v0    # "val":C
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 152
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 153
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 155
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 140
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 141
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x41

    if-lt v0, v2, :cond_3

    const/16 v2, 0x46

    if-le v0, v2, :cond_4

    :cond_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x66

    if-gt v0, v2, :cond_0

    .line 143
    :cond_4
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 107
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 108
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    .line 110
    :cond_3
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 120
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 121
    :cond_2
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 122
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_3

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    .line 123
    :cond_4
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 128
    .end local v0    # "c":C
    :cond_5
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 129
    .restart local v0    # "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    .line 130
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_1
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 63
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 64
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 69
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 80
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 5
    .param p1, "seq"    # [C

    .prologue
    .line 85
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 87
    .local v2, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    :cond_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v3, v2, :cond_3

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 88
    :cond_1
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    .local v0, "c":C
    array-length v4, p1

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v4, :cond_2

    .line 93
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 89
    :cond_2
    aget-char v1, p1, v3

    .line 90
    .local v1, "seek":C
    if-eq v1, v0, :cond_0

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    .end local v0    # "c":C
    .end local v1    # "seek":C
    :cond_3
    const-string v3, ""

    goto :goto_1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 102
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 5
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "loScan":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "hiScan":Ljava/lang/String;
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method current()C
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mark()V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 52
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method varargs matchesAny([C)Z
    .locals 5
    .param p1, "seq"    # [C

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v2

    .line 179
    :cond_1
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, "c":C
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-char v1, p1, v3

    .line 181
    .local v1, "seek":C
    if-ne v1, v0, :cond_2

    .line 182
    const/4 v2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method matchesDigit()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 198
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method matchesLetter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 191
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method pos()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method rewindToMark()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unconsume()V
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 44
    return-void
.end method
