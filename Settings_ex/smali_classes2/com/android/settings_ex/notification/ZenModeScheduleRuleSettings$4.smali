.class Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$4;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 150
    const/4 v0, 0x1

    return v0
.end method
