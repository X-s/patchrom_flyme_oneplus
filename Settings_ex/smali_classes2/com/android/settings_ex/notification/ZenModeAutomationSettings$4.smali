.class Lcom/android/settings_ex/notification/ZenModeAutomationSettings$4;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

.field final synthetic val$ruleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeAutomationSettings;
    .param p2, "val$ruleId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$4;->val$ruleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iget-object v0, v0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$4;->val$ruleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->removeZenRule(Ljava/lang/String;)Z

    .line 131
    return-void
.end method
