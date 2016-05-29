.class public Lcom/android/settings_ex/ConfirmLockPassword;
.super Lcom/android/settings_ex/SettingsActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings_ex.ConfirmLockPattern.header"

.field public static final PACKAGE:Ljava/lang/String; = "com.android.settings_ex"

.field public static mNumWrongConfirmAttempts:I

.field private static mPreferences:Landroid/content/SharedPreferences;


# instance fields
.field public mActionBar:Landroid/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$500()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 72
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f0905be

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 91
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ConfirmLockPassword onCreate !"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword;->mActionBar:Landroid/app/ActionBar;

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 101
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmLockPassword;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;

    .line 102
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 108
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword;->finish()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onPause()V

    .line 121
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    sget v2, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 130
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onResume()V

    .line 131
    sget-object v4, Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 133
    .local v2, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    .local v0, "currentTime":J
    sub-long v4, v0, v2

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 138
    sget-object v4, Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    sput v8, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    .line 143
    sget-object v4, Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    sget v6, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
