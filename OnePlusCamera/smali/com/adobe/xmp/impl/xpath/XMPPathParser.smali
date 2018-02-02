.class public final Lcom/adobe/xmp/impl/xpath/XMPPathParser;
.super Ljava/lang/Object;
.source "XMPPathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x40

    const/16 v9, 0x3f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Parameter must not be null"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 86
    :cond_1
    if-eqz p1, :cond_0

    .line 91
    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    .line 92
    new-instance v2, Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-direct {v2}, Lcom/adobe/xmp/impl/xpath/PathPosition;-><init>()V

    .line 93
    iput-object p1, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    .line 97
    invoke-static {p0, v2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseRootNode(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;Lcom/adobe/xmp/impl/xpath/XMPPath;)V

    .line 100
    :goto_0
    iget v0, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 102
    iget v0, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 104
    invoke-static {p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->skipPathDelimiter(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;)V

    .line 106
    iget v0, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v0, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 110
    iget v0, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_3

    .line 118
    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseIndexSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    .line 122
    :goto_1
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v3

    if-eq v3, v7, :cond_4

    .line 141
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_8

    .line 161
    :cond_2
    :goto_2
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseStructSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v10, :cond_6

    .line 133
    :cond_5
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v9, :cond_7

    .line 139
    :goto_3
    iget-object v3, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v5, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    const-string/jumbo v3, "?xml:lang"

    .line 127
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 129
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Only xml:lang allowed with \'@\'"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 135
    :cond_7
    iget v3, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 136
    invoke-virtual {v0, v8}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    goto :goto_3

    .line 143
    :cond_8
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v10, :cond_a

    .line 153
    :cond_9
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_2

    .line 155
    iget v3, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    const/4 v3, 0x5

    .line 156
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    .line 157
    iget-object v3, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v5, v2, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 145
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[?xml:lang="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 148
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Only xml:lang allowed with \'@\'"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 163
    :cond_b
    return-object v1
.end method

.method private static parseIndexSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v6, 0x0

    const/16 v5, 0x5d

    const/16 v4, 0x66

    .line 238
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 240
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v2, v0, :cond_3

    .line 255
    :cond_0
    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 261
    :cond_1
    :goto_1
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 266
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_b

    .line 277
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 278
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 279
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 280
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    .line 281
    if-ne v0, v1, :cond_d

    .line 287
    :cond_2
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 288
    :goto_2
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 290
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_e

    .line 300
    :goto_3
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_2

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v3, :cond_0

    .line 243
    :goto_4
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 249
    :cond_4
    :goto_5
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x3

    invoke-direct {v0, v6, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 316
    :goto_6
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_12

    .line 318
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Missing \']\' for array index"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 243
    if-gt v0, v3, :cond_4

    .line 246
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_4

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v2, v0, :cond_6

    goto :goto_5

    .line 256
    :cond_8
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    .line 258
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto/16 :goto_0

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_8

    goto/16 :goto_1

    .line 263
    :cond_a
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_b
    const-string/jumbo v0, "[last()"

    .line 268
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 273
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x4

    invoke-direct {v0, v6, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_6

    .line 270
    :cond_c
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d
    const/16 v1, 0x22

    .line 281
    if-eq v0, v1, :cond_2

    .line 283
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid quote in array selector"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 293
    :cond_e
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_10

    .line 303
    :cond_f
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 308
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 311
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x6

    invoke-direct {v0, v6, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 294
    :cond_10
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_f

    .line 298
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto/16 :goto_3

    .line 305
    :cond_11
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "No terminating quote for array selector"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 316
    :cond_12
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5

    .line 320
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 321
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    .line 323
    return-object v0
.end method

.method private static parseRootNode(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;Lcom/adobe/xmp/impl/xpath/XMPPath;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    .line 338
    :goto_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 343
    :cond_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eq v0, v1, :cond_2

    .line 348
    iget-object v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v2, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_3

    .line 360
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 361
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 365
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 366
    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 368
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_4

    .line 376
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/AliasOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_5

    .line 385
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "/[*"

    .line 338
    iget-object v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 340
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto/16 :goto_0

    .line 345
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty initial XMPPath step"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 353
    :cond_3
    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v1, p0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 354
    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v1, v0, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 355
    invoke-virtual {p2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1

    .line 370
    :cond_4
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string/jumbo v2, "[?xml:lang=\'x-default\']"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 372
    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 373
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 374
    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1

    .line 378
    :cond_5
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string/jumbo v2, "[1]"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 380
    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 381
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 382
    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1
.end method

.method private static parseStructSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 209
    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 213
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 215
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eq v0, v1, :cond_2

    .line 221
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 223
    return-object v0

    :cond_1
    const-string/jumbo v0, "/[*"

    .line 209
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 211
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    .line 217
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty XMPPath segment"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static skipPathDelimiter(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    .line 174
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 187
    :cond_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    .line 197
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 181
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 183
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty XMPPath segment"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 191
    :cond_2
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 192
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 194
    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 192
    :cond_4
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    goto :goto_0
.end method

.method private static verifyQualName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    const/4 v1, 0x0

    const/16 v0, 0x3a

    .line 399
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 400
    if-gtz v0, :cond_1

    .line 417
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Ill-formed qualified name"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 402
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-nez v0, :cond_2

    .line 412
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unknown namespace prefix for qualified name"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 409
    :cond_2
    return-void
.end method

.method private static verifySimpleXMLName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isXMLName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 433
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Bad XML name"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x66

    const/16 v3, 0x65

    const/4 v2, 0x0

    .line 458
    if-nez p0, :cond_1

    .line 460
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Schema namespace URI is required"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 458
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_3

    .line 466
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Top level name must not be a qualifier"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 464
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2

    const/16 v0, 0x2f

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 471
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Top level name must be simple"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    const/16 v0, 0x5b

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    .line 474
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_6

    const/16 v1, 0x3a

    .line 482
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 483
    if-ltz v1, :cond_7

    .line 496
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 499
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_8

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 512
    return-object p1

    .line 477
    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unregistered schema namespace URI"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 487
    :cond_7
    invoke-static {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 504
    :cond_8
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unknown schema namespace prefix"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 508
    :cond_9
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Schema namespace URI and prefix mismatch"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
