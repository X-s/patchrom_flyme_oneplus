.class public Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsageDeprecatedPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChartDataUsageDeprecatedPreference"


# instance fields
.field private mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

.field private mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mContext:Landroid/content/Context;

.field private mDetail:Landroid/net/NetworkStatsHistory;

.field private mInspectEnd:J

.field private mInspectRangeChanged:Z

.field private mInspectStart:J

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSelectLeft:J

.field private mSelectRight:J

.field private mShowWifi:Z

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 58
    iput-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 69
    iput-boolean v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    .line 72
    iput v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSubId:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mShowWifi:Z

    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    .line 88
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->setLayoutResource(I)V

    .line 85
    return-void
.end method

.method private updateChart()V
    .locals 11

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-boolean v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mShowWifi:Z

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setShowWifi(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setSubId(I)V

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mDetail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 180
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-wide v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    iget-wide v4, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    iget-wide v6, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    iget-wide v8, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    invoke-virtual/range {v1 .. v9}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibleRange(JJJJ)V

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v0

    .line 183
    .local v0, "isVisible":Z
    if-eqz v0, :cond_0

    const/4 v10, 0x0

    .line 184
    .local v10, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v10}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setDateSelectionSweepVisible(I)V

    .line 171
    return-void

    .line 183
    .end local v10    # "visible":I
    :cond_0
    const/16 v10, 0x8

    .restart local v10    # "visible":I
    goto :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mDetail:Landroid/net/NetworkStatsHistory;

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    .line 162
    return-void
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 153
    return-void
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    .line 157
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v0

    return-wide v0

    .line 116
    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectLeft()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectLeft()J

    move-result-wide v0

    return-wide v0

    .line 124
    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    return-wide v0
.end method

.method public getInspectRight()J
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectRight()J

    move-result-wide v0

    return-wide v0

    .line 132
    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 95
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/settings_ex/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 97
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->updateChart()V

    .line 101
    :cond_0
    const-string/jumbo v0, "ChartDataUsageDeprecatedPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindViewHolder mChartDataUsageView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartDataUsageView:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public setInspectRangeChanged()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectRangeChanged:Z

    .line 187
    return-void
.end method

.method public setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 167
    return-void
.end method

.method public setShowWifi(Z)V
    .locals 0
    .param p1, "showWifi"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mShowWifi:Z

    .line 79
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "mSubId"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSubId:I

    .line 75
    return-void
.end method

.method public setVisibleRange(JJJJ)V
    .locals 1
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J
    .param p5, "selectLeft"    # J
    .param p7, "selectRight"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectStart:J

    .line 147
    iput-wide p3, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mInspectEnd:J

    .line 148
    iput-wide p5, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSelectLeft:J

    .line 149
    iput-wide p7, p0, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->mSelectRight:J

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->notifyChanged()V

    .line 145
    return-void
.end method
