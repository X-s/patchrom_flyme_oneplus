.class public final Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;
.super Lcom/android/settings_ex/dashboard/conditional/Condition;
.source "NightDisplayCondition.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/Condition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    .line 34
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0fc2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020157

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x1ec

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0fd2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0fd1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 70
    return-void

    .line 74
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

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->refreshState()V

    .line 84
    return-void
.end method

.method public onPrimaryClick()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/display/NightDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    const/4 v4, 0x0

    const v5, 0x7f0e07f6

    move-object v3, v2

    move-object v6, v2

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public refreshState()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/conditional/NightDisplayCondition;->setActive(Z)V

    .line 79
    return-void
.end method
