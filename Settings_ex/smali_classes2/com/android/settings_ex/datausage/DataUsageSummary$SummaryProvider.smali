.class Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDataController:Lcom/android/settings_exlib/net/DataUsageController;

.field private final mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    .line 381
    iput-object p2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 382
    new-instance v0, Lcom/android/settings_exlib/net/DataUsageController;

    invoke-direct {v0, p1}, Lcom/android/settings_exlib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settings_exlib/net/DataUsageController;

    .line 379
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 6
    .param p1, "listening"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 387
    if-eqz p1, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settings_exlib/net/DataUsageController;

    invoke-virtual {v2}, Lcom/android/settings_exlib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 390
    .local v0, "info":Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    if-nez v0, :cond_1

    .line 391
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "used":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 398
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0e0fdc

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-virtual {v2, p0, v3}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 386
    .end local v0    # "info":Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    .end local v1    # "used":Ljava/lang/String;
    :cond_0
    return-void

    .line 392
    .restart local v0    # "info":Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    :cond_1
    iget-wide v2, v0, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v4, v0, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "used":Ljava/lang/String;
    goto :goto_0

    .line 395
    .end local v1    # "used":Ljava/lang/String;
    :cond_2
    iget-wide v2, v0, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v4, v0, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings_ex/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "used":Ljava/lang/String;
    goto :goto_0
.end method
