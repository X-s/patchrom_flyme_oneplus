.class public final Lcom/adobe/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/16 v9, 0x3a

    const/16 v8, 0x2d

    const/4 v7, 0x5

    const/4 v1, 0x0

    .line 89
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 91
    new-instance v4, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v4, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4, v1}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    const/16 v3, 0x54

    if-ne v0, v3, :cond_3

    :goto_0
    move v0, v2

    .line 99
    :goto_1
    if-eqz v0, :cond_8

    .line 155
    invoke-interface {p1, v2}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 156
    invoke-interface {p1, v2}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    .line 159
    :cond_0
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x54

    if-eq v3, v5, :cond_13

    .line 163
    if-eqz v0, :cond_14

    :goto_2
    const-string/jumbo v0, "Invalid hour in date string"

    const/16 v3, 0x17

    .line 171
    invoke-virtual {v4, v0, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 172
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-ne v3, v9, :cond_15

    .line 176
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setHour(I)V

    .line 179
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string/jumbo v0, "Invalid minute in date string"

    const/16 v3, 0x3b

    .line 183
    invoke-virtual {v4, v0, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 184
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 189
    :cond_1
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setMinute(I)V

    .line 191
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-eq v0, v9, :cond_17

    .line 228
    :cond_2
    :goto_3
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1e

    .line 232
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v1

    move v2, v1

    .line 263
    :goto_4
    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 264
    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v2, ""

    invoke-direct {v1, v0, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 267
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 273
    return-object p1

    .line 96
    :cond_3
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_6

    .line 97
    :cond_4
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->length()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_7

    :cond_5
    move v0, v1

    .line 94
    goto :goto_1

    .line 96
    :cond_6
    invoke-virtual {v4, v2}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    if-ne v0, v9, :cond_4

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x2

    .line 97
    invoke-virtual {v4, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    if-ne v0, v9, :cond_5

    goto/16 :goto_0

    .line 101
    :cond_8
    invoke-virtual {v4, v1}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v3

    if-eq v3, v8, :cond_c

    :goto_5
    const-string/jumbo v3, "Invalid year in date string"

    const/16 v5, 0x270f

    .line 108
    invoke-virtual {v4, v3, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    .line 109
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 114
    :cond_9
    invoke-virtual {v4, v1}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v5

    if-eq v5, v8, :cond_e

    .line 118
    :goto_6
    invoke-interface {p1, v3}, Lcom/adobe/xmp/XMPDateTime;->setYear(I)V

    .line 119
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 123
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string/jumbo v3, "Invalid month in date string"

    const/16 v5, 0xc

    .line 127
    invoke-virtual {v4, v3, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    .line 128
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v5

    if-nez v5, :cond_10

    .line 132
    :cond_a
    invoke-interface {p1, v3}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 133
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 137
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string/jumbo v3, "Invalid day in date string"

    const/16 v5, 0x1f

    .line 141
    invoke-virtual {v4, v3, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    .line 142
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12

    .line 146
    :cond_b
    invoke-interface {p1, v3}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    .line 147
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    return-object p1

    .line 103
    :cond_c
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    goto :goto_5

    .line 109
    :cond_d
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    if-eq v5, v8, :cond_9

    .line 111
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after year"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 116
    :cond_e
    neg-int v3, v3

    goto :goto_6

    .line 121
    :cond_f
    return-object p1

    .line 128
    :cond_10
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    if-eq v5, v8, :cond_a

    .line 130
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after month"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 135
    :cond_11
    return-object p1

    .line 142
    :cond_12
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_b

    .line 144
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after day"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 161
    :cond_13
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    goto/16 :goto_2

    .line 165
    :cond_14
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, missing \'T\' after date"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 174
    :cond_15
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after hour"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 185
    :cond_16
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-eq v3, v9, :cond_1

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_1

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_1

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-eq v3, v8, :cond_1

    .line 187
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after minute"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 193
    :cond_17
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string/jumbo v0, "Invalid whole seconds in date string"

    const/16 v3, 0x3b

    .line 194
    invoke-virtual {v4, v0, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 195
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 201
    :cond_18
    invoke-interface {p1, v0}, Lcom/adobe/xmp/XMPDateTime;->setSecond(I)V

    .line 202
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 204
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 205
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v0

    const-string/jumbo v3, "Invalid fractional seconds in date string"

    const v5, 0x3b9ac9ff

    .line 206
    invoke-virtual {v4, v3, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    .line 207
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_1b

    .line 212
    :cond_19
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v5

    sub-int v0, v5, v0

    :goto_7
    const/16 v5, 0x9

    .line 213
    if-le v0, v5, :cond_1d

    .line 215
    div-int/lit8 v3, v3, 0xa

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 195
    :cond_1a
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_18

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_18

    .line 196
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_18

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-eq v3, v8, :cond_18

    .line 198
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after whole seconds"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 207
    :cond_1b
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_19

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v5

    if-eq v5, v8, :cond_19

    .line 209
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after fractional second"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 219
    :cond_1c
    mul-int/lit8 v3, v3, 0xa

    .line 217
    add-int/lit8 v0, v0, 0x1

    :cond_1d
    const/16 v5, 0x9

    if-lt v0, v5, :cond_1c

    .line 221
    invoke-interface {p1, v3}, Lcom/adobe/xmp/XMPDateTime;->setNanoSecond(I)V

    goto/16 :goto_3

    .line 230
    :cond_1e
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    move v0, v1

    move v2, v1

    .line 231
    goto/16 :goto_4

    .line 234
    :cond_1f
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_21

    .line 238
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v0

    if-eq v0, v8, :cond_20

    .line 244
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_20
    const/4 v2, -0x1

    .line 248
    :cond_21
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string/jumbo v0, "Invalid time zone hour in date string"

    const/16 v1, 0x17

    .line 250
    invoke-virtual {v4, v0, v1}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v0

    .line 251
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-ne v1, v9, :cond_22

    .line 256
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string/jumbo v1, "Invalid time zone minute in date string"

    const/16 v3, 0x3b

    .line 259
    invoke-virtual {v4, v1, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_4

    .line 253
    :cond_22
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, after time zone hour"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 269
    :cond_23
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid date string, extra chars at end"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0x36ee80

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "0000"

    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 315
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "\'-\'00"

    .line 322
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 323
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v2

    if-eqz v2, :cond_5

    .line 340
    :cond_0
    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "00"

    .line 341
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 342
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    :cond_1
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const-string/jumbo v4, ":00.#########"

    .line 351
    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :goto_0
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-nez v2, :cond_7

    .line 377
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 334
    :cond_5
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v2

    if-nez v2, :cond_0

    .line 335
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-nez v2, :cond_0

    .line 336
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-nez v2, :cond_0

    .line 337
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 347
    :cond_6
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 359
    :cond_7
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 360
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 361
    if-eqz v2, :cond_8

    .line 368
    div-int v3, v2, v8

    .line 369
    rem-int/2addr v2, v8

    const v4, 0xea60

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const-string/jumbo v4, "+00;-00"

    .line 370
    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 371
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ":00"

    .line 372
    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 373
    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 364
    :cond_8
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
