.class Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;
.super Lcom/android/settings_ex/notification/ZenRuleNameDialog;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->showNameRuleDialog(Lcom/android/settings_ex/notification/ZenRuleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

.field final synthetic val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings_ex/notification/ZenRuleInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeAutomationSettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Ljava/lang/CharSequence;
    .param p4, "val$ri"    # Lcom/android/settings_ex/notification/ZenRuleInfo;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iput-object p4, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;)V
    .locals 8
    .param p1, "ruleName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v2, 0xad

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 113
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    iget-object v2, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    iget-object v3, v1, Lcom/android/settings_ex/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    const/4 v4, 0x2

    .line 115
    const/4 v5, 0x1

    move-object v1, p1

    .line 113
    invoke-direct/range {v0 .. v5}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    .line 116
    .local v0, "rule":Landroid/app/AutomaticZenRule;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "savedRuleId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$3;->val$ri:Lcom/android/settings_ex/notification/ZenRuleInfo;

    iget-object v3, v3, Lcom/android/settings_ex/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    invoke-static {v2, v3, v7, v6}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->-wrap1(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->startActivity(Landroid/content/Intent;)V

    .line 111
    :cond_0
    return-void
.end method
