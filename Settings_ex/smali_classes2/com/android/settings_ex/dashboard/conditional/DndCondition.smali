.class public Lcom/android/settings_ex/dashboard/conditional/DndCondition;
.super Lcom/android/settings_ex/dashboard/conditional/Condition;
.source "DndCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/conditional/DndCondition$Receiver;
    }
.end annotation


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "DndCondition"


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mZen:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/Condition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    .line 42
    return-void
.end method

.method private getZenState()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    const-string/jumbo v0, "DndCondition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getZenState mZen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v0, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    packed-switch v0, :pswitch_data_0

    .line 93
    return-object v3

    .line 83
    :pswitch_0
    return-object v3

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    const v1, 0x7f0e0360

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0e35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

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
    .locals 5

    .prologue
    const v4, 0x7f020201

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 100
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    .line 102
    const-string/jumbo v1, "DndCondition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIcon mZen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    packed-switch v1, :pswitch_data_0

    .line 109
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 105
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 107
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020200

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0x17d

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
    .line 74
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/DndCondition$Receiver;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->getZenState()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    const-class v2, Landroid/app/NotificationManager;

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 155
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v1, "DndCondition"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->setActive(Z)V

    .line 151
    return-void

    .line 158
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
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
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public refreshState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 50
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    .line 51
    iget v2, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 52
    .local v1, "zenModeEnabled":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 57
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->setActive(Z)V

    .line 47
    return-void

    .line 55
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    goto :goto_0
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    .line 69
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    .line 67
    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 62
    const-string/jumbo v0, "state"

    iget v1, p0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;->mZen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0
.end method
