.class public Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final LOG_SCALE:Z

.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 533
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 534
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .prologue
    .line 538
    const/4 v1, 0x3

    invoke-static {p1, p3, p4, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 540
    .local v0, "result":Landroid/text/format/Formatter$BytesResult;
    sget-object v1, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const-string v3, "^1"

    # invokes: Lcom/android/settings_ex/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {p2, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 541
    sget-object v1, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string v3, "^2"

    # invokes: Lcom/android/settings_ex/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {p2, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 542
    iget-wide v2, v0, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    return-wide v2
.end method

.method public convertToPoint(J)F
    .locals 7
    .param p1, "value"    # J

    .prologue
    .line 517
    iget v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 6
    .param p1, "point"    # F

    .prologue
    .line 529
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 14

    .prologue
    .line 547
    iget-wide v10, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v12, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v2, v10, v12

    .line 550
    .local v2, "range":J
    const-wide/16 v10, 0x10

    div-long v10, v2, v10

    # invokes: Lcom/android/settings_ex/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J
    invoke-static {v10, v11}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$800(J)J

    move-result-wide v4

    .line 551
    .local v4, "tickJump":J
    div-long v10, v2, v4

    long-to-int v1, v10

    .line 552
    .local v1, "tickCount":I
    new-array v6, v1, [F

    .line 553
    .local v6, "tickPoints":[F
    iget-wide v8, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 554
    .local v8, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 555
    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v7

    aput v7, v6, v0

    .line 556
    add-long/2addr v8, v4

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_0
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 484
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 3
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 491
    iput-wide p3, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    .line 492
    const/4 v0, 0x1

    .line 494
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 500
    iget v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 501
    iput p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    .line 502
    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAdjustAxis(J)I
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v0

    .line 565
    .local v0, "point":F
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 566
    const/4 v1, -0x1

    .line 570
    :goto_0
    return v1

    .line 567
    :cond_0
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v1

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 568
    const/4 v1, 0x1

    goto :goto_0

    .line 570
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
