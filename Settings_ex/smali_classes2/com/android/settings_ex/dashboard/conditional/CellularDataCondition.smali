.class public Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;
.super Lcom/android/settings_ex/dashboard/conditional/Condition;
.source "CellularDataCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition$Receiver;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/Condition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0fc3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x17c

    return v0
.end method

.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0fcc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0fcb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 90
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 87
    return-void

    .line 94
    .end local v0    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPrimaryClick()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.security.action.USAGE_DATA_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public refreshState()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    const-class v5, Landroid/net/ConnectivityManager;

    .line 37
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 40
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    const-class v2, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "connectivity.isNetworkSupported(ConnectivityManager.TYPE_MOBILE) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-class v2, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "telephony.getSimState() != TelephonyManager.SIM_STATE_READY = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v7, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v7, :cond_2

    .line 44
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 45
    return-void

    :cond_1
    move v2, v4

    .line 41
    goto :goto_0

    .line 47
    :cond_2
    const-class v2, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "telephony.getDataEnabled() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    .line 36
    return-void

    :cond_3
    move v4, v3

    .line 48
    goto :goto_1
.end method
