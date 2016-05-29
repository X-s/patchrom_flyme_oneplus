.class Lcom/android/settings_ex/notification/SettingPref$1$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/SettingPref$1;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/SettingPref$1;

.field final synthetic val$newValueFinal:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/SettingPref$1;Z)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/notification/SettingPref$1$1;->this$1:Lcom/android/settings_ex/notification/SettingPref$1;

    iput-boolean p2, p0, Lcom/android/settings_ex/notification/SettingPref$1$1;->val$newValueFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/notification/SettingPref$1$1;->this$1:Lcom/android/settings_ex/notification/SettingPref$1;

    iget-object v1, v0, Lcom/android/settings_ex/notification/SettingPref$1;->this$0:Lcom/android/settings_ex/notification/SettingPref;

    iget-object v0, p0, Lcom/android/settings_ex/notification/SettingPref$1$1;->this$1:Lcom/android/settings_ex/notification/SettingPref$1;

    iget-object v2, v0, Lcom/android/settings_ex/notification/SettingPref$1;->val$context:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/SettingPref$1$1;->val$newValueFinal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
