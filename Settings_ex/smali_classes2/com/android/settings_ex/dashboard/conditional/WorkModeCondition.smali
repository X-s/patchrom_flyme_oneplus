.class public Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;
.super Lcom/android/settings_ex/dashboard/conditional/Condition;
.source "WorkModeCondition.java"


# instance fields
.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V
    .locals 2
    .param p1, "conditionManager"    # Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/Condition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    .line 36
    return-void
.end method

.method private updateUserHandle()V
    .locals 6

    .prologue
    .line 42
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 44
    .local v2, "profilesCount":I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 47
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    .line 41
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    return-void

    .line 45
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0fc3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    const v1, 0x7f02016a

    .line 63
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x17f

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0fd0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0fcf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/os/UserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    .line 96
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->setActive(Z)V

    .line 91
    return-void

    .line 98
    :cond_1
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
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 87
    const-class v3, Lcom/android/settings_ex/Settings$AccountSettingsActivity;

    .line 86
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public refreshState()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->updateUserHandle()V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;->setActive(Z)V

    .line 56
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
