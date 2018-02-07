.class public Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    .line 44
    const-class v2, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Landroid/content/Intent;
    .locals 4
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;
    .param p2, "challenge"    # J

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    .line 53
    const-class v2, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "challenge"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string/jumbo v3, "device_policy"

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 113
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 115
    .local v1, "organizationNameForUser":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .end local v1    # "organizationNameForUser":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, v2

    .line 114
    goto :goto_0
.end method

.method private isInternalActivity()Z
    .locals 1

    .prologue
    .line 107
    instance-of v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity$InternalActivity;

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 66
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "details":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v8

    .line 69
    .local v8, "userId":I
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 76
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v10

    .line 79
    .local v10, "isManagedProfile":Z
    if-nez v3, :cond_1

    if-eqz v10, :cond_1

    .line 80
    invoke-direct {p0, v8}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    :cond_1
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 83
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v12, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 88
    .local v12, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v12, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v8

    .line 96
    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result v11

    .line 99
    .local v11, "launched":Z
    :goto_1
    if-nez v11, :cond_3

    .line 100
    sget-object v1, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No pattern, password or PIN set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->finish()V

    .line 62
    return-void

    .line 72
    .end local v0    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    .end local v10    # "isManagedProfile":Z
    .end local v11    # "launched":Z
    .end local v12    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :catch_0
    move-exception v13

    .line 73
    .local v13, "se":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid intent extra"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v13    # "se":Ljava/lang/SecurityException;
    .restart local v0    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    .restart local v10    # "isManagedProfile":Z
    .restart local v12    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 94
    const-wide/16 v6, 0x0

    .line 92
    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result v11

    .restart local v11    # "launched":Z
    goto :goto_1
.end method
