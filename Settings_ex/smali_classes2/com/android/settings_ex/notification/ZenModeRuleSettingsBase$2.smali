.class Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-boolean v1, v1, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    if-eqz v1, :cond_0

    return v2

    .line 122
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "zenMode":I
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v1

    if-ne v0, v1, :cond_1

    return v2

    .line 124
    :cond_1
    sget-boolean v1, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange zenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v2, v2, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v3, v3, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 127
    const/4 v1, 0x1

    return v1
.end method
