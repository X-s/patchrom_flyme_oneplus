.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x18

    .line 36
    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/16 v0, 0x63

    .line 39
    if-le p0, v0, :cond_1

    .line 40
    :cond_0
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 39
    :cond_1
    if-nez p2, :cond_3

    :goto_0
    const/16 v0, 0x9

    .line 42
    if-le p0, v0, :cond_4

    .line 43
    :cond_2
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 39
    :cond_3
    if-ge p3, v3, :cond_0

    goto :goto_0

    .line 42
    :cond_4
    if-nez p2, :cond_6

    .line 45
    :goto_1
    if-eqz p2, :cond_7

    .line 46
    :cond_5
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 42
    :cond_6
    if-ge p3, v2, :cond_2

    goto :goto_1

    .line 45
    :cond_7
    if-gtz p0, :cond_5

    .line 48
    return v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 169
    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "--"

    .line 170
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    return-void

    .line 173
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 174
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 165
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 6

    .prologue
    .line 156
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 158
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 148
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 150
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatDurationLocked(JI)I
    .locals 18

    .prologue
    .line 76
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v2, v2

    move/from16 v0, p2

    if-lt v2, v0, :cond_0

    .line 80
    :goto_0
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v4, 0x0

    .line 82
    cmp-long v3, p0, v4

    if-nez v3, :cond_2

    .line 84
    add-int/lit8 v3, p2, -0x1

    .line 85
    :goto_1
    if-gtz v3, :cond_1

    const/4 v3, 0x0

    .line 88
    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 89
    const/4 v2, 0x1

    return v2

    .line 77
    :cond_0
    move/from16 v0, p2

    new-array v2, v0, [C

    sput-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 86
    const/16 v5, 0x20

    aput-char v5, v2, v4

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    .line 93
    cmp-long v3, p0, v4

    if-gtz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_6

    .line 94
    const/16 v3, 0x2b

    move v4, v3

    :goto_3
    const-wide/16 v6, 0x3e8

    .line 100
    rem-long v6, p0, v6

    long-to-int v0, v6

    move/from16 v16, v0

    const-wide/16 v6, 0x3e8

    .line 101
    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v7, v6

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const v8, 0x15180

    .line 104
    if-gt v7, v8, :cond_7

    :goto_4
    const/16 v8, 0xe10

    .line 108
    if-gt v7, v8, :cond_8

    move v15, v6

    move v6, v7

    :goto_5
    const/16 v7, 0x3c

    .line 112
    if-gt v6, v7, :cond_9

    move v12, v5

    move v13, v6

    :goto_6
    const/4 v6, 0x0

    .line 119
    if-nez p2, :cond_a

    move v5, v6

    .line 132
    :cond_3
    int-to-char v4, v4

    aput-char v4, v2, v5

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 136
    if-nez p2, :cond_f

    const/4 v4, 0x0

    move v14, v4

    :goto_7
    const/4 v7, 0x0

    .line 137
    const/16 v4, 0x64

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 138
    if-ne v9, v5, :cond_10

    const/4 v10, 0x0

    :goto_8
    if-nez v14, :cond_11

    const/4 v11, 0x0

    :goto_9
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v15

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 139
    if-ne v9, v5, :cond_12

    const/4 v10, 0x0

    :goto_a
    if-nez v14, :cond_13

    const/4 v11, 0x0

    :goto_b
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v12

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 140
    if-ne v9, v5, :cond_14

    const/4 v10, 0x0

    :goto_c
    if-nez v14, :cond_15

    const/4 v11, 0x0

    :goto_d
    const/16 v8, 0x73

    move-object v6, v2

    move v7, v13

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v8

    .line 141
    if-nez v14, :cond_16

    :cond_4
    const/4 v7, 0x0

    :goto_e
    const/16 v4, 0x6d

    const/4 v6, 0x1

    move/from16 v3, v16

    move v5, v8

    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v3

    .line 142
    const/16 v4, 0x73

    aput-char v4, v2, v3

    .line 143
    add-int/lit8 v2, v3, 0x1

    return v2

    .line 93
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 96
    :cond_6
    const/16 v3, 0x2d

    .line 97
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move v4, v3

    goto/16 :goto_3

    :cond_7
    const v3, 0x15180

    .line 105
    div-int v3, v7, v3

    const v8, 0x15180

    .line 106
    mul-int/2addr v8, v3

    sub-int/2addr v7, v8

    goto :goto_4

    .line 109
    :cond_8
    div-int/lit16 v6, v7, 0xe10

    .line 110
    mul-int/lit16 v8, v6, 0xe10

    sub-int/2addr v7, v8

    move v15, v6

    move v6, v7

    goto :goto_5

    .line 113
    :cond_9
    div-int/lit8 v5, v6, 0x3c

    .line 114
    mul-int/lit8 v7, v5, 0x3c

    sub-int/2addr v6, v7

    move v12, v5

    move v13, v6

    goto :goto_6

    :cond_a
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    invoke-static {v3, v5, v8, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    const/4 v8, 0x1

    .line 121
    if-gtz v7, :cond_b

    const/4 v5, 0x0

    :goto_f
    const/4 v9, 0x2

    invoke-static {v15, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/2addr v7, v5

    const/4 v8, 0x1

    .line 122
    if-gtz v7, :cond_c

    const/4 v5, 0x0

    :goto_10
    const/4 v9, 0x2

    invoke-static {v12, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/2addr v7, v5

    const/4 v8, 0x1

    .line 123
    if-gtz v7, :cond_d

    const/4 v5, 0x0

    :goto_11
    const/4 v9, 0x2

    invoke-static {v13, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/2addr v7, v5

    const/4 v8, 0x2

    .line 124
    if-gtz v7, :cond_e

    const/4 v5, 0x0

    :goto_12
    const/4 v9, 0x1

    move/from16 v0, v16

    invoke-static {v0, v8, v9, v5}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    .line 125
    :goto_13
    move/from16 v0, p2

    if-ge v6, v0, :cond_3

    .line 126
    const/16 v7, 0x20

    aput-char v7, v2, v5

    .line 127
    add-int/lit8 v7, v5, 0x1

    .line 128
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v7

    goto :goto_13

    :cond_b
    const/4 v5, 0x1

    .line 121
    goto :goto_f

    :cond_c
    const/4 v5, 0x1

    .line 122
    goto :goto_10

    :cond_d
    const/4 v5, 0x1

    .line 123
    goto :goto_11

    :cond_e
    const/4 v5, 0x3

    .line 124
    goto :goto_12

    :cond_f
    const/4 v4, 0x1

    move v14, v4

    .line 136
    goto/16 :goto_7

    :cond_10
    const/4 v10, 0x1

    .line 138
    goto/16 :goto_8

    :cond_11
    const/4 v11, 0x2

    goto/16 :goto_9

    :cond_12
    const/4 v10, 0x1

    .line 139
    goto/16 :goto_a

    :cond_13
    const/4 v11, 0x2

    goto/16 :goto_b

    :cond_14
    const/4 v10, 0x1

    .line 140
    goto/16 :goto_c

    :cond_15
    const/4 v11, 0x2

    goto/16 :goto_d

    .line 141
    :cond_16
    if-eq v8, v5, :cond_4

    const/4 v7, 0x3

    goto/16 :goto_e
.end method

.method private static printField([CICIZI)I
    .locals 4

    .prologue
    .line 53
    if-eqz p4, :cond_4

    .line 55
    :cond_0
    if-nez p4, :cond_5

    :cond_1
    const/16 v0, 0x63

    if-gt p1, v0, :cond_6

    move v0, p3

    move v1, p1

    .line 61
    :goto_0
    if-nez p4, :cond_7

    :cond_2
    const/16 v2, 0x9

    if-le v1, v2, :cond_8

    .line 62
    :cond_3
    :goto_1
    div-int/lit8 v2, v1, 0xa

    .line 63
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p0, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    .line 67
    :goto_2
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, p0, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    int-to-char v1, p2

    aput-char v1, p0, v0

    .line 70
    add-int/lit8 p3, v0, 0x1

    .line 72
    :goto_3
    return p3

    .line 53
    :cond_4
    if-gtz p1, :cond_0

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    .line 55
    if-lt p5, v0, :cond_1

    .line 56
    :cond_6
    div-int/lit8 v1, p1, 0x64

    .line 57
    add-int/lit8 v0, v1, 0x30

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, p3

    .line 58
    add-int/lit8 v0, p3, 0x1

    .line 59
    mul-int/lit8 v1, v1, 0x64

    sub-int v1, p1, v1

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    .line 61
    if-lt p5, v2, :cond_2

    goto :goto_1

    :cond_8
    if-ne p3, v0, :cond_3

    goto :goto_2
.end method
