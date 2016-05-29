.class public final Lcom/android/settings_ex/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field static final EXTRA_KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 37
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 43
    return-void
.end method

.method private confirmPassword(ILjava/lang/CharSequence;Z)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 177
    :goto_0
    return v1

    .line 165
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings_ex.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 168
    const-string v2, "com.android.settings_ex"

    if-eqz p3, :cond_1

    const-class v1, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const-class v1, Lcom/android/settings_ex/ConfirmLockPassword;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;
    .param p4, "returnCredentials"    # Z

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    .line 139
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings_ex.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 142
    const-string v1, "com.android.settings_ex.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 143
    const-string v2, "com.android.settings_ex"

    if-eqz p4, :cond_2

    const-class v1, Lcom/android/settings_ex/ConfirmLockPattern$InternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    const-class v1, Lcom/android/settings_ex/ConfirmLockPattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method


# virtual methods
.method public confirmPassword(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings_ex.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 186
    const-string v1, "com.android.settings_ex"

    const-class v2, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    if-eqz p2, :cond_0

    .line 192
    const-string v1, "HEADER_TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 195
    :cond_0
    if-eqz p3, :cond_1

    .line 196
    const-string v1, "FOOTER_TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 200
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mFragment ... "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 203
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mActivity ... "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public isPasswordLockMode()Z
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 99
    :goto_0
    return v0

    .line 96
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;
    .param p4, "returnCredentials"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "launched":Z
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 85
    :goto_0
    return v0

    .line 74
    :sswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 75
    goto :goto_0

    .line 82
    :sswitch_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->confirmPassword(ILjava/lang/CharSequence;Z)Z

    move-result v0

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public lockMode()I
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 122
    :goto_0
    return v0

    .line 112
    :sswitch_0
    const/4 v0, 0x1

    .line 113
    goto :goto_0

    .line 115
    :sswitch_1
    const/4 v0, 0x2

    .line 116
    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
