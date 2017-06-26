.class public Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 38
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Landroid/content/Intent;
    .locals 4
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;
    .param p2, "challenge"    # J

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 48
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 75
    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 76
    .local v0, "credentialsConfirmed":Z
    :goto_0
    sget-object v3, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device credentials confirmed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->finish()V

    .line 79
    return-void

    .end local v0    # "credentialsConfirmed":Z
    :cond_1
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 58
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "android.app.extra.TITLE"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "title":Ljava/lang/String;
    const-string v2, "android.app.extra.DESCRIPTION"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "details":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 64
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/4 v2, 0x0

    const/4 v6, 0x1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    sget-object v1, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v2, "No pattern, password or PIN set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialActivity;->finish()V

    .line 71
    .end local v0    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_0
    return-void
.end method
