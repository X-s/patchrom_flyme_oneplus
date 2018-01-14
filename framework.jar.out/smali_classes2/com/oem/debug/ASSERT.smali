.class public Lcom/oem/debug/ASSERT;
.super Ljava/lang/Object;
.source "ASSERT.java"


# static fields
.field private static final ASSERT_CACHE_PATH:Ljava/lang/String; = "/cache/assertlog"

.field private static final ASSERT_PANIC_PROP:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final ASSERT_STATE:Ljava/lang/String; = "persist.sys.assert.enable"

.field private static final FILTEDPROC_PROP:Ljava/lang/String; = "persist.assert.filtedproc"

.field private static final IS_EMPTY:I = 0x1

.field private static final IS_GZIPPED:I = 0x4

.field private static final IS_TEXT:I = 0x2

.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "java.lang.ASSERT"

.field private static mFunctionProxy:Lcom/oem/debug/OemAssertTip;

.field private static final rt:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ASSERT(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public static ASSERT(Z)V
    .locals 0
    .param p0, "condition"    # Z

    .prologue
    .line 70
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->assertTrue(Z)V

    .line 69
    return-void
.end method

.method public static ASSERTEXCEPTION(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method private static assertEquals(BB)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;BB)V

    .line 309
    return-void
.end method

.method private static assertEquals(CC)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;CC)V

    .line 324
    return-void
.end method

.method private static assertEquals(DDD)V
    .locals 8
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .prologue
    .line 237
    const/4 v1, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;DDD)V

    .line 236
    return-void
.end method

.method private static assertEquals(FFF)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;FFF)V

    .line 263
    return-void
.end method

.method private static assertEquals(II)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;II)V

    .line 355
    return-void
.end method

.method private static assertEquals(JJ)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;JJ)V

    .line 278
    return-void
.end method

.method private static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;BB)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # B
    .param p2, "actual"    # B

    .prologue
    .line 303
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;CC)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # C
    .param p2, "actual"    # C

    .prologue
    .line 318
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;DDD)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    .line 223
    :cond_0
    return-void

    .line 226
    :cond_1
    sub-double v2, p1, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, p5

    if-gtz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 227
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    :cond_3
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .prologue
    .line 249
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    :cond_0
    :goto_1
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_2
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-lez v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static assertEquals(Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    .prologue
    .line 349
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .prologue
    .line 272
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 171
    :cond_0
    return-void

    .line 174
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    return-void

    .line 178
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 195
    :cond_0
    return-void

    .line 198
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    return-void

    .line 204
    :cond_2
    new-instance v0, Lcom/oem/debug/ASSERTComparisonCompactor;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1, p2}, Lcom/oem/debug/ASSERTComparisonCompactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;SS)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # S
    .param p2, "actual"    # S

    .prologue
    .line 334
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Z
    .param p2, "actual"    # Z

    .prologue
    .line 288
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method private static assertEquals(SS)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;SS)V

    .line 340
    return-void
.end method

.method private static assertEquals(ZZ)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertEquals(Ljava/lang/String;ZZ)V

    .line 294
    return-void
.end method

.method private static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 152
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static assertFalse(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertFalse(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method private static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 370
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method private static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 417
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_0

    .line 418
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->failSame(Ljava/lang/String;)V

    .line 416
    :cond_0
    return-void
.end method

.method private static assertNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method private static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 386
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 385
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oem/debug/ASSERT;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    return-void
.end method

.method private static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 395
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_1

    .line 396
    :cond_0
    return-void

    .line 399
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method private static assertTrue(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 135
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oem/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method private static copy2File(Ljava/io/BufferedReader;Ljava/io/File;)Z
    .locals 6
    .param p0, "br"    # Ljava/io/BufferedReader;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 619
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 623
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .line 628
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 629
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 630
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 631
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 634
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 633
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 638
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 641
    return v5

    .line 634
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 637
    const/4 v3, 0x1

    return v3
.end method

.method private static copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 591
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 595
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v0, v4, [B

    .line 601
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 602
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 603
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 605
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v4

    .line 606
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 605
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 610
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 613
    return v5

    .line 606
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 609
    const/4 v4, 0x1

    return v4
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 567
    const/4 v2, 0x0

    .line 570
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/oem/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 575
    .local v2, "result":Z
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 582
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 574
    .restart local v1    # "in":Ljava/io/InputStream;
    .local v2, "result":Z
    :catchall_0
    move-exception v3

    .line 575
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 574
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 579
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method private static disableInterrupt()V
    .locals 3

    .prologue
    .line 490
    :try_start_0
    sget-object v1, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    const-string/jumbo v2, "/system/bin/sh /system/bin/disableinterrupt.sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 491
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 492
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static displayErrorInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 714
    const-string/jumbo v0, "persist.sys.assert.panic"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    const-string/jumbo v0, "ro.runtime.assert"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    const-string/jumbo v1, "true"

    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    return-void

    .line 719
    :cond_0
    const-string/jumbo v0, "ro.runtime.assert"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {p0}, Lcom/oem/debug/ASSERT;->displayErrorInfo_native(Ljava/lang/String;)V

    .line 713
    :cond_1
    return-void
.end method

.method private static native displayErrorInfo_native(Ljava/lang/String;)V
.end method

.method public static epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 17
    .param p0, "temp"    # Ljava/io/File;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 728
    const/4 v9, 0x0

    .line 729
    .local v9, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 730
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 731
    .local v3, "bw":Ljava/io/BufferedWriter;
    const/4 v12, 0x0

    .line 733
    .local v12, "process":Ljava/lang/String;
    invoke-static {}, Lcom/oem/debug/OemAssertTip;->getInstance()Lcom/oem/debug/OemAssertTip;

    move-result-object v15

    sput-object v15, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    .line 734
    const/4 v13, -0x1

    .line 736
    .local v13, "result":I
    if-nez p0, :cond_0

    .line 737
    const/4 v15, 0x0

    return v15

    .line 741
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 743
    .end local v9    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    and-int/lit8 v15, p2, 0x4

    if-eqz v15, :cond_1

    .line 744
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    move-object v10, v9

    .line 747
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 750
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v1    # "br":Ljava/io/BufferedReader;
    const/16 v15, 0x400

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 751
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 754
    .end local v12    # "process":Ljava/lang/String;
    .local v5, "count":I
    :goto_0
    const/16 v15, 0x400

    if-ge v5, v15, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 755
    const-string/jumbo v15, "-----"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    if-eqz v15, :cond_3

    .line 768
    .end local v11    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 771
    invoke-static {v12}, Lcom/oem/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v15

    if-eqz v15, :cond_5

    .line 772
    const/4 v15, 0x0

    return v15

    .line 759
    .restart local v11    # "line":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string/jumbo v15, "Process: "

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 760
    const-string/jumbo v15, ":"

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 763
    :cond_4
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string/jumbo v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v15

    add-int/2addr v5, v15

    goto :goto_0

    .line 767
    .end local v11    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v15

    .line 768
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 767
    throw v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 800
    .end local v5    # "count":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 801
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v10    # "is":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 803
    const/4 v15, 0x0

    return v15

    .line 775
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/oem/debug/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 776
    .local v8, "fn":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    .local v6, "dest":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 779
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    and-int/lit8 v15, p2, 0x4

    if-eqz v15, :cond_6

    .line 780
    :try_start_8
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    move-object v9, v10

    .line 783
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_6
    invoke-static {v9, v6}, Lcom/oem/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 784
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 786
    const-string/jumbo v15, "Please check "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " file for more information ..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 789
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v15, "persist.sys.assert.enable"

    const-string/jumbo v16, "true"

    invoke-static/range {v15 .. v16}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 790
    const-string/jumbo v15, "assert state is close"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :goto_2
    const/4 v15, 0x1

    return v15

    .line 792
    :cond_7
    sget-object v15, Lcom/oem/debug/ASSERT;->mFunctionProxy:Lcom/oem/debug/OemAssertTip;

    invoke-virtual {v15, v4}, Lcom/oem/debug/OemAssertTip;->requestShowAssertMessage(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v13

    goto :goto_2

    .line 800
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "dest":Ljava/io/File;
    .end local v8    # "fn":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .local v1, "br":Ljava/io/BufferedReader;
    .local v9, "is":Ljava/io/InputStream;
    .restart local v12    # "process":Ljava/lang/String;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "process":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v6    # "dest":Ljava/io/File;
    .restart local v8    # "fn":Ljava/lang/String;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static execCommand(Ljava/lang/String;)V
    .locals 6
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 529
    if-nez p0, :cond_0

    .line 530
    return-void

    .line 534
    :cond_0
    :try_start_0
    sget-object v4, Lcom/oem/debug/ASSERT;->rt:Ljava/lang/Runtime;

    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 535
    .local v3, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 536
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 535
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 550
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 553
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 528
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "process":Ljava/lang/Process;
    :goto_0
    return-void

    .line 554
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "process":Ljava/lang/Process;
    :catchall_0
    move-exception v4

    .line 555
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 554
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 557
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 560
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fail()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "e":Ljava/lang/Error;
    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public static fail(Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v8, 0x0

    .line 82
    invoke-static {}, Lcom/oem/debug/ASSERT;->getAssertEnable()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v8}, Lcom/oem/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 84
    .local v6, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 85
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 87
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "stacktrace":Ljava/lang/String;
    invoke-static {}, Lcom/oem/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "processname":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 92
    const-string/jumbo v3, "NONE"

    .line 95
    :cond_2
    invoke-static {}, Lcom/oem/debug/ASSERT;->disableInterrupt()V

    .line 97
    invoke-static {v3, v5}, Lcom/oem/debug/ASSERT;->getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "displayinfo":Ljava/lang/String;
    invoke-static {v3}, Lcom/oem/debug/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "fn":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "logfile":Ljava/io/File;
    invoke-static {v2, v0}, Lcom/oem/debug/ASSERT;->saveErrorLog(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\nPlease check"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 103
    const-string/jumbo v8, ".txt for more information ..."

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oem/debug/ASSERT;->displayErrorInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 454
    invoke-static {p0, p1, p2}, Lcom/oem/debug/ASSERT;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 442
    const-string/jumbo v0, ""

    .line 444
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "expected same:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> was not:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    const-string/jumbo v2, ">"

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private static failSame(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string/jumbo v0, ""

    .line 433
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 458
    const-string/jumbo v0, ""

    .line 460
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "expected:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> but was:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    const-string/jumbo v2, ">\n"

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAssertEnable()Z
    .locals 2

    .prologue
    .line 482
    const-string/jumbo v0, "persist.sys.assert.enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string/jumbo v1, "true"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 673
    const-string/jumbo v0, "java.lang.ASSERT."

    .line 674
    .local v0, "assertPre":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x400

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 675
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 677
    .local v7, "substr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 678
    .local v4, "istart":I
    move-object v6, p1

    .line 679
    .local v6, "st":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 681
    .local v2, "count":I
    const-string/jumbo v8, "JAVA ASSERT ERROR!!!\r\nProcess: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 684
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 686
    .local v1, "ch":C
    const/16 v8, 0xa

    if-ne v1, v8, :cond_2

    .line 687
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "substr":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 690
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string/jumbo v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 695
    const/4 v7, 0x0

    .line 683
    .local v7, "substr":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 697
    :cond_2
    add-int/lit8 v8, v2, -0x1

    if-ne v3, v8, :cond_1

    .line 698
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string/jumbo v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 704
    .end local v1    # "ch":C
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "logpath":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v8, "/cache/assertlog"

    aput-object v8, v5, v7

    .line 500
    .local v5, "path":[Ljava/lang/String;
    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v6, v5, v7

    .line 501
    .local v6, "s":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v2, "f":Ljava/io/File;
    const-string/jumbo v9, "java.lang.ASSERT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PATH IS:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 505
    :cond_0
    move-object v3, v6

    .line 511
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "logpath":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_3

    .line 512
    return-object v12

    .line 500
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "logpath":Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 515
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "logpath":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 516
    .local v1, "dt":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "df":Ljava/text/DateFormat;
    const-string/jumbo v4, ""

    .line 518
    .local v4, "now":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static native getProcessName_native()Ljava/lang/String;
.end method

.method private static native getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static isFiltedProcess(Ljava/lang/String;)Z
    .locals 6
    .param p0, "process"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "filtedproc":Ljava/lang/String;
    if-eqz p0, :cond_1

    move-object v0, p0

    .line 472
    .local v0, "crashproc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "persist.assert.filtedproc"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    .line 475
    :cond_0
    return v3

    .line 471
    .end local v0    # "crashproc":Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/oem/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "crashproc":Ljava/lang/String;
    goto :goto_0

    .line 478
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public static panicKernel()V
    .locals 2

    .prologue
    .line 708
    const-string/jumbo v0, "persist.sys.assert.panic"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/oem/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-static {}, Lcom/oem/debug/ASSERT;->panic_native()V

    .line 707
    :cond_0
    return-void
.end method

.method private static native panic_native()V
.end method

.method private static declared-synchronized saveErrorLog(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/oem/debug/ASSERT;

    monitor-enter v1

    .line 524
    :try_start_0
    invoke-static {p1, p0}, Lcom/oem/debug/ASSERT;->writeFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpstate -o "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " -t assert"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/debug/ASSERT;->execCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 523
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static writeFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .param p0, "longMsg"    # Ljava/lang/String;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 646
    const/4 v2, 0x0

    .line 648
    .local v2, "result":Z
    if-eqz p0, :cond_1

    .line 650
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 654
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 658
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    const/4 v2, 0x1

    .line 661
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 669
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v2

    .line 660
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    .line 661
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 660
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 663
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 665
    const/4 v2, 0x0

    goto :goto_0
.end method
