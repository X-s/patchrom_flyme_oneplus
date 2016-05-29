.class Lcom/android/settings_ex/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 363
    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    .line 386
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v3

    .line 366
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 367
    .local v1, "nextValue":Z
    const/4 v2, 0x0

    .line 368
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # getter for: Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings_ex/PrivacySettings;->access$000(Lcom/android/settings_ex/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_3

    .line 369
    if-nez v1, :cond_2

    .line 373
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->showEraseBackupDialog()V
    invoke-static {v3}, Lcom/android/settings_ex/PrivacySettings;->access$100(Lcom/android/settings_ex/PrivacySettings;)V

    :cond_1
    :goto_1
    move v3, v2

    .line 386
    goto :goto_0

    .line 375
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V
    invoke-static {v4, v3}, Lcom/android/settings_ex/PrivacySettings;->access$200(Lcom/android/settings_ex/PrivacySettings;Z)V

    .line 376
    const/4 v2, 0x1

    goto :goto_1

    .line 378
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # getter for: Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings_ex/PrivacySettings;->access$300(Lcom/android/settings_ex/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 380
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # getter for: Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v4}, Lcom/android/settings_ex/PrivacySettings;->access$400(Lcom/android/settings_ex/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    const/4 v2, 0x1

    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$1;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # getter for: Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings_ex/PrivacySettings;->access$300(Lcom/android/settings_ex/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method
