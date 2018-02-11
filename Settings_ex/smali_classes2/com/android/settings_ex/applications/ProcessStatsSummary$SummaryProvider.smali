.class Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "ProcessStatsSummary.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ProcessStatsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 135
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 9
    .param p1, "listening"    # Z

    .prologue
    const/4 v8, 0x0

    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance v1, Lcom/android/settings_ex/applications/ProcStatsData;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v8}, Lcom/android/settings_ex/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    .line 144
    .local v1, "statsManager":Lcom/android/settings_ex/applications/ProcStatsData;
    sget-object v4, Lcom/android/settings_ex/applications/ProcessStatsSummary;->sDurations:[J

    aget-wide v4, v4, v8

    invoke-virtual {v1, v4, v5}, Lcom/android/settings_ex/applications/ProcStatsData;->setDuration(J)V

    .line 145
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v0

    .line 146
    .local v0, "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    .line 147
    iget-wide v6, v0, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realUsedRam:D

    double-to-long v6, v6

    .line 146
    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "usedResult":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    .line 149
    iget-wide v6, v0, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->realTotalRam:D

    double-to-long v6, v6

    .line 148
    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "totalResult":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 151
    aput-object v3, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 150
    const v7, 0x7f0e0fe3

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 141
    .end local v0    # "memInfo":Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .end local v1    # "statsManager":Lcom/android/settings_ex/applications/ProcStatsData;
    .end local v2    # "totalResult":Ljava/lang/String;
    .end local v3    # "usedResult":Ljava/lang/String;
    :cond_0
    return-void
.end method
