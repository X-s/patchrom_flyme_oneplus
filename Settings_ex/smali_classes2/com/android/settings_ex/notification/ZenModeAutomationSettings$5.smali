.class Lcom/android/settings_ex/notification/ZenModeAutomationSettings$5;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$5;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$5;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    iget-object v0, v0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v1, 0xac

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeAutomationSettings$5;->this$0:Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;->-wrap3(Lcom/android/settings_ex/notification/ZenModeAutomationSettings;)V

    .line 178
    const/4 v0, 0x1

    return v0
.end method
