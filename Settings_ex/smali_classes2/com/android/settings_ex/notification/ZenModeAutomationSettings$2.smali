.class Lcom/android/settings_ex/notification/ZenModeAutomationSettings$2;
.super Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->showAddRuleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/settings_ex/utils/ZenServiceListing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeAutomationSettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/android/settings_ex/utils/ZenServiceListing;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/notification/ZenRuleSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/utils/ZenServiceListing;)V

    return-void
.end method


# virtual methods
.method public onExternalRuleSelected(Lcom/android/settings_ex/notification/ZenRuleInfo;)V
    .locals 3
    .param p1, "ri"    # Lcom/android/settings_ex/notification/ZenRuleInfo;

    .prologue
    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/android/settings_ex/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public onSystemRuleSelected(Lcom/android/settings_ex/notification/ZenRuleInfo;)V
    .locals 1
    .param p1, "ri"    # Lcom/android/settings_ex/notification/ZenRuleInfo;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-static {v0, p1}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->-wrap5(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;Lcom/android/settings_ex/notification/ZenRuleInfo;)V

    .line 96
    return-void
.end method
