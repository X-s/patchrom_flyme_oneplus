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
    .line 646
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 647
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .prologue
    .line 651
    const-wide/16 v2, 0x0

    const-wide v4, 0x10000000000L

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide p3

    .line 653
    const/4 v0, 0x3

    .line 652
    invoke-static {p1, p3, p4, v0}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v6

    .line 654
    .local v6, "result":Landroid/text/format/Formatter$BytesResult;
    sget-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    iget-object v1, v6, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const-string/jumbo v2, "^1"

    invoke-static {p2, v0, v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-wrap3(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 655
    sget-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    iget-object v1, v6, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string/jumbo v2, "^2"

    invoke-static {p2, v0, v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-wrap3(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 656
    iget-wide v0, v6, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    return-wide v0
.end method

.method public convertToPoint(J)F
    .locals 7
    .param p1, "value"    # J

    .prologue
    .line 630
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
    .line 642
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
    .line 661
    iget-wide v10, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v12, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v2, v10, v12

    .line 664
    .local v2, "range":J
    const-wide/16 v10, 0x10

    div-long v10, v2, v10

    invoke-static {v10, v11}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-wrap0(J)J

    move-result-wide v4

    .line 665
    .local v4, "tickJump":J
    div-long v10, v2, v4

    long-to-int v1, v10

    .line 666
    .local v1, "tickCount":I
    new-array v6, v1, [F

    .line 667
    .local v6, "tickPoints":[F
    iget-wide v8, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 668
    .local v8, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 669
    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v7

    aput v7, v6, v0

    .line 670
    add-long/2addr v8, v4

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 597
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 3
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 604
    iput-wide p3, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    .line 605
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 613
    iget v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 614
    iput p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    .line 615
    const/4 v0, 0x1

    return v0

    .line 617
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v0

    .line 679
    .local v0, "point":F
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 680
    const/4 v1, -0x1

    return v1

    .line 681
    :cond_0
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v1

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 682
    const/4 v1, 0x1

    return v1

    .line 684
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
