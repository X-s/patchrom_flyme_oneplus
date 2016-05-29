.class Lcom/android/settings_ex/notification/SettingPref$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/SettingPref;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/notification/SettingPref$1;->this$0:Lcom/android/settings_ex/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings_ex/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 89
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 90
    .local v0, "newValueFinal":Z
    const-string v1, "touch_sounds"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    check-cast p1, Landroid/preference/TwoStatePreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 92
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings_ex/notification/SettingPref$1$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/notification/SettingPref$1$1;-><init>(Lcom/android/settings_ex/notification/SettingPref$1;Z)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 103
    :goto_0
    return v2

    .line 101
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/SettingPref$1;->this$0:Lcom/android/settings_ex/notification/SettingPref;

    iget-object v4, p0, Lcom/android/settings_ex/notification/SettingPref$1;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v4, v1}, Lcom/android/settings_ex/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
