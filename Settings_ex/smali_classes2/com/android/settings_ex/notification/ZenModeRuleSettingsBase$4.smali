.class Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->showDeleteRuleDialog()V
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
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v0, v0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->-set0(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;Z)Z

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->removeZenRule(Ljava/lang/String;)Z

    .line 243
    return-void
.end method
