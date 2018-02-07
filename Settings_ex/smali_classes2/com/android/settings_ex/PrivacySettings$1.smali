.class Lcom/android/settings_ex/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PrivacySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 138
    instance-of v4, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v4, :cond_0

    .line 139
    return v3

    .line 141
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 142
    .local v1, "nextValue":Z
    const/4 v2, 0x0

    .line 143
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-static {v4}, Lcom/android/settings_ex/PrivacySettings;->-get0(Lcom/android/settings_ex/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-static {v4}, Lcom/android/settings_ex/PrivacySettings;->-get1(Lcom/android/settings_ex/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v2, 0x1

    .line 151
    :cond_1
    :goto_0
    return v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-static {v4}, Lcom/android/settings_ex/PrivacySettings;->-get0(Lcom/android/settings_ex/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
