.class Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference$1;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference$1;->this$1:Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference$1;->this$1:Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference$1;->this$1:Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference$1;->this$1:Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;

    iget-object v2, v2, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->-wrap4(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method
