.class public final Lcom/android/settings_ex/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final EXTRA_KEY_CHALLENGE:Ljava/lang/String; = "challenge"

.field public static final EXTRA_KEY_CHALLENGE_TOKEN:Ljava/lang/String; = "hw_auth_token"

.field public static final EXTRA_KEY_FOR_FINGERPRINT:Ljava/lang/String; = "for_fingerprint"

.field public static final EXTRA_KEY_FOR_PASSWORD_TOGGLE_TO_POWERON:Ljava/lang/String; = "for_password_toggle_to_poweron"

.field public static final EXTRA_KEY_HAS_CHALLENGE:Ljava/lang/String; = "has_challenge"

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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 50
    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z
    .locals 4
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<*>;ZZJ)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p5, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 289
    const-string v1, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 290
    const-string v1, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 292
    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    const-string v1, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    const-string v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 304
    const-string v1, "com.android.settings"

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJZ)Z
    .locals 4
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "forPasswordToPowerOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<*>;ZZJZ)Z"
        }
    .end annotation

    .prologue
    .line 330
    .local p5, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 332
    const-string v1, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 333
    const-string v1, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 335
    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string v1, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    const-string v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 347
    const-string v1, "for_password_toggle_to_poweron"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string v1, "com.android.settings"

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 355
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z
    .locals 12
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J

    .prologue
    .line 158
    const/4 v11, 0x0

    .line 160
    .local v11, "launched":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v10

    .line 162
    .local v10, "effectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 189
    :goto_0
    return v11

    .line 165
    :sswitch_0
    if-nez p5, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const-class v5, Lcom/android/settings_ex/ConfirmLockPattern$InternalActivity;

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z

    move-result v11

    .line 173
    goto :goto_0

    .line 165
    :cond_1
    const-class v5, Lcom/android/settings_ex/ConfirmLockPattern;

    goto :goto_1

    .line 179
    :sswitch_1
    if-nez p5, :cond_2

    if-eqz p7, :cond_3

    :cond_2
    const-class v5, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    :goto_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z

    move-result v11

    goto :goto_0

    :cond_3
    const-class v5, Lcom/android/settings_ex/ConfirmLockPassword;

    goto :goto_2

    .line 162
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

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJZ)Z
    .locals 14
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "forPasswordToPowerOn"    # Z

    .prologue
    .line 209
    const/4 v12, 0x0

    .line 211
    .local v12, "launched":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v11

    .line 213
    .local v11, "effectiveUserId":I
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 240
    :goto_0
    return v12

    .line 216
    :sswitch_0
    if-nez p5, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const-class v5, Lcom/android/settings_ex/ConfirmLockPattern$InternalActivity;

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJZ)Z

    move-result v12

    .line 224
    goto :goto_0

    .line 216
    :cond_1
    const-class v5, Lcom/android/settings_ex/ConfirmLockPattern;

    goto :goto_1

    .line 230
    :sswitch_1
    if-nez p5, :cond_2

    if-eqz p7, :cond_3

    :cond_2
    const-class v5, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    :goto_2
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJZ)Z

    move-result v12

    goto :goto_0

    :cond_3
    const-class v5, Lcom/android/settings_ex/ConfirmLockPassword;

    goto :goto_2

    .line 213
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


# virtual methods
.method public isPasswordLockMode()Z
    .locals 3

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    .line 270
    .local v0, "effectiveUserId":I
    const/4 v1, 0x0

    .line 271
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 281
    :goto_0
    return v1

    .line 278
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 271
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

.method public launchConfirmationActivity(ILjava/lang/CharSequence;)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J

    .prologue
    .line 133
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZ)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J
    .param p7, "forPasswordToPowerOn"    # Z

    .prologue
    .line 150
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJZ)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 10
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z

    .prologue
    .line 112
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z

    .prologue
    const/4 v3, 0x0

    .line 84
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public lockMode()I
    .locals 3

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    .line 251
    .local v0, "effectiveUserId":I
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 264
    :goto_0
    return v1

    .line 254
    :sswitch_0
    const/4 v1, 0x1

    .line 255
    goto :goto_0

    .line 257
    :sswitch_1
    const/4 v1, 0x2

    .line 258
    goto :goto_0

    .line 251
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
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
