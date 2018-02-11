.class Lcom/android/settings_ex/notification/SettingPref$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;
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
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SettingPref;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/notification/SettingPref$1;->this$0:Lcom/android/settings_ex/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings_ex/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-object v2, p0, Lcom/android/settings_ex/notification/SettingPref$1;->this$0:Lcom/android/settings_ex/notification/SettingPref;

    iget-object v3, p0, Lcom/android/settings_ex/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    .line 92
    return v1

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
