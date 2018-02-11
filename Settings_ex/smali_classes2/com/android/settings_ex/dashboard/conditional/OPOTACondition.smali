.class public Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;
.super Lcom/android/settings_ex/dashboard/conditional/Condition;
.source "OPOTACondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/conditional/OPOTACondition$Receiver;
    }
.end annotation


# static fields
.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final OEM_BOOT_BROADCAST:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field private static final STRONG_PROMPT_OTA:Ljava/lang/String; = "strong_prompt_ota"


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->activeRefresh()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/Condition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    .line 26
    return-void
.end method

.method private static activeRefresh()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 38
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 39
    const-string/jumbo v4, "has_new_version_to_update"

    .line 37
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 37
    if-ne v3, v4, :cond_1

    .line 39
    const/4 v2, 0x1

    .line 41
    .local v2, "systemHasUpdate":Z
    :goto_0
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 42
    const-string/jumbo v4, "strong_prompt_ota"

    .line 40
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 42
    const/16 v4, 0x64

    .line 40
    if-ne v3, v4, :cond_2

    .line 42
    const/4 v1, 0x1

    .line 43
    .local v1, "strongPromptOTA":Z
    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    .line 44
    .local v0, "active":Z
    :cond_0
    return v0

    .line 39
    .end local v0    # "active":Z
    .end local v1    # "strongPromptOTA":Z
    .end local v2    # "systemHasUpdate":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "systemHasUpdate":Z
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "strongPromptOTA":Z
    goto :goto_1
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    const v2, 0x7f0e0ff0

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    const v1, 0x7f02017c

    .line 85
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x270f

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e03e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e03e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 72
    return-void
.end method

.method public onPrimaryClick()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CheckUpdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public refreshState()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->activeRefresh()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->setActive(Z)V

    .line 31
    return-void
.end method
