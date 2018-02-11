.class public Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;
.super Lcom/android/settings_ex/dashboard/conditional/Condition;
.source "BackgroundDataCondition.java"


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
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0ff0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200fd

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x17a

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0ffc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0ffb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->setActive(Z)V

    .line 76
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPrimaryClick()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.security.action.USAGE_DATA_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public refreshState()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;->setActive(Z)V

    .line 36
    return-void
.end method
