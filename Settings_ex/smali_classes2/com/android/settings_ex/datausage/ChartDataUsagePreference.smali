.class public Lcom/android/settings_ex/datausage/ChartDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsagePreference.java"


# static fields
.field private static final RESOLUTION:J = 0x80000L


# instance fields
.field private mEnd:J

.field private final mLimitColor:I

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mShowWifi:Z

.field private mStart:J

.field private mSubId:I

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v4, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mSubId:I

    .line 52
    iput-boolean v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mShowWifi:Z

    .line 64
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    .line 66
    const v1, -0xbaee2

    iput v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 68
    new-array v2, v2, [I

    const v3, 0x1010038

    aput v3, v2, v4

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 70
    const v1, 0x7f040065

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    .line 62
    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings_exlib/graph/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 10
    .param p1, "chart"    # Lcom/android/settings_exlib/graph/UsageView;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "top"    # I

    .prologue
    .line 141
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 142
    .local v1, "labels":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 143
    .local v2, "middleVisibility":I
    const/4 v3, 0x0

    .line 144
    .local v3, "topVisibility":I
    if-nez p2, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 149
    iget v3, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 150
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget v5, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mLimitColor:I

    const v8, 0x7f0e0cb7

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 153
    :cond_1
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 154
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v8, 0x80000

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {p1, v5}, Lcom/android/settings_exlib/graph/UsageView;->setDividerLoc(I)V

    .line 155
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v8, 0x80000

    div-long/2addr v6, v8

    long-to-float v5, v6

    int-to-float v6, p3

    div-float v4, v5, v6

    .line 156
    .local v4, "weight":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v5, v4

    .line 157
    .local v0, "above":F
    invoke-virtual {p1, v0, v4}, Lcom/android/settings_exlib/graph/UsageView;->setSideLabelWeights(FF)V

    .line 158
    iget v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 159
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 160
    iget v5, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 159
    const v8, 0x7f0e0cb6

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 163
    .end local v0    # "above":F
    .end local v4    # "weight":F
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/settings_exlib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p1, v2, v3}, Lcom/android/settings_exlib/graph/UsageView;->setDividerColors(II)V

    .line 140
    return-void
.end method

.method private calcPoints(Lcom/android/settings_exlib/graph/UsageView;)V
    .locals 18
    .param p1, "chart"    # Lcom/android/settings_exlib/graph/UsageView;

    .prologue
    .line 108
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 109
    .local v7, "points":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .line 111
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v12, 0x0

    .line 113
    .local v12, "totalData":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v8

    .line 114
    .local v8, "start":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v2

    .line 115
    .local v2, "end":I
    if-gez v8, :cond_0

    return-void

    .line 117
    :cond_0
    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    move v6, v8

    .end local v3    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v6, "i":I
    :goto_0
    if-gt v6, v2, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v9, v6, v3}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 121
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v10, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 122
    .local v10, "startTime":J
    iget-wide v14, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v4, v10, v14

    .line 125
    .local v4, "endTime":J
    iget-wide v14, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v12, v14

    .line 127
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v9

    const-wide/32 v14, 0x80000

    div-long v14, v12, v14

    long-to-int v14, v14

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v14, v4, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v9

    const-wide/32 v14, 0x80000

    div-long v14, v12, v14

    long-to-int v14, v14

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v4    # "endTime":J
    .end local v10    # "startTime":J
    :cond_1
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    const/4 v14, 0x1

    if-le v9, v14, :cond_2

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/settings_exlib/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    .line 107
    :cond_2
    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "bytes"    # J
    .param p3, "str"    # I
    .param p4, "mLimitColor"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, p2, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 170
    .local v1, "result":Landroid/text/format/Formatter$BytesResult;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 171
    iget-object v4, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 170
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    .local v0, "label":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v0, v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private toInt(J)I
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 137
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 12

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide/16 v6, 0x0

    .line 94
    .local v6, "totalData":J
    iget-object v8, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v10, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v8, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v3

    .line 95
    .local v3, "start":I
    iget-object v8, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v10, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v8, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v0

    .line 97
    .local v0, "end":I
    move v2, v3

    .end local v1    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 98
    iget-object v8, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8, v2, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 101
    .local v1, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v8, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v8, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v10, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v10, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 104
    .local v4, "policyMax":J
    :goto_1
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/32 v10, 0x80000

    div-long/2addr v8, v10

    long-to-int v8, v8

    return v8

    .line 103
    .end local v4    # "policyMax":J
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v8, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 76
    const v2, 0x7f110127

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/graph/UsageView;

    .line 77
    .local v0, "chart":Lcom/android/settings_exlib/graph/UsageView;
    iget-object v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    if-nez v2, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getTop()I

    move-result v1

    .line 80
    .local v1, "top":I
    invoke-virtual {v0}, Lcom/android/settings_exlib/graph/UsageView;->clearPaths()V

    .line 81
    iget-wide v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v4, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v2

    invoke-virtual {v0, v2, v1, v8, v8}, Lcom/android/settings_exlib/graph/UsageView;->configureGraph(IIZZ)V

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings_exlib/graph/UsageView;)V

    .line 83
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    iget-wide v6, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings_ex/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v6, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings_ex/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings_exlib/graph/UsageView;Landroid/net/NetworkPolicy;I)V

    .line 74
    return-void
.end method

.method public setColors(II)V
    .locals 0
    .param p1, "seriesColor"    # I
    .param p2, "secondaryColor"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mSeriesColor:I

    .line 212
    iput p2, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 210
    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 6
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v3, v4}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getDataWarnState(Landroid/content/Context;I)I

    move-result v2

    .line 180
    .local v2, "warnState":I
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v3, v4}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getDataWarnBytes(Landroid/content/Context;I)J

    move-result-wide v0

    .line 181
    .local v0, "warnBytes":J
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v0, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 188
    .end local v0    # "warnBytes":J
    .end local v2    # "warnState":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 175
    return-void

    .line 184
    .restart local v0    # "warnBytes":J
    .restart local v2    # "warnState":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_0
.end method

.method public setNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "network"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 205
    return-void
.end method

.method public setShowWifi(Z)V
    .locals 0
    .param p1, "showWifi"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mShowWifi:Z

    .line 58
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "mSubId"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mSubId:I

    .line 54
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mStart:J

    .line 193
    iput-wide p3, p0, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->mEnd:J

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 191
    return-void
.end method
