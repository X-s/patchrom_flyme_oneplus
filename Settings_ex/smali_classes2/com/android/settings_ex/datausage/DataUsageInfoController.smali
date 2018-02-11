.class public Lcom/android/settings_ex/datausage/DataUsageInfoController;
.super Ljava/lang/Object;
.source "DataUsageInfoController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummaryLimit(Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;)J
    .locals 4
    .param p1, "info"    # Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;

    .prologue
    .line 45
    iget-wide v0, p1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 46
    .local v0, "limit":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 47
    iget-wide v0, p1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 49
    :cond_0
    iget-wide v2, p1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 50
    iget-wide v0, p1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 52
    :cond_1
    return-wide v0
.end method

.method public updateDataLimit(Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V
    .locals 4
    .param p1, "info"    # Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 29
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 32
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    iput-wide v0, p1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 34
    :cond_2
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 35
    iget-wide v0, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-wide v0, p1, Lcom/android/settings_exlib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 27
    :cond_3
    return-void
.end method
