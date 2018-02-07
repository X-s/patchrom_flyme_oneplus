.class public final Lcom/android/settings_ex/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final EXTRA_KEY_CHALLENGE:Ljava/lang/String; = "challenge"

.field public static final EXTRA_KEY_CHALLENGE_TOKEN:Ljava/lang/String; = "hw_auth_token"

.field public static final EXTRA_KEY_FOR_CHANGE_CRED_REQUIRED_FOR_BOOT:Ljava/lang/String; = "for_cred_req_boot"

.field public static final EXTRA_KEY_FOR_FINGERPRINT:Ljava/lang/String; = "for_fingerprint"

.field public static final EXTRA_KEY_HAS_CHALLENGE:Ljava/lang/String; = "has_challenge"

.field static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_KEY_RETURN_CREDENTIALS:Ljava/lang/String; = "return_credentials"

.field static final EXTRA_KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 51
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 56
    iput-object p2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 54
    return-void
.end method

.method private copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "inIntent"    # Landroid/content/Intent;
    .param p2, "outIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 285
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 286
    .local v0, "intentSender":Landroid/content/IntentSender;
    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    :cond_0
    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 290
    .local v1, "taskId":I
    if-eq v1, v3, :cond_1

    .line 291
    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    :cond_1
    if-nez v0, :cond_2

    if-eq v1, v3, :cond_3

    .line 298
    :cond_2
    const/high16 v2, 0x800000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    :cond_3
    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJI)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p6, "returnCredentials"    # Z
    .param p7, "external"    # Z
    .param p8, "hasChallenge"    # Z
    .param p9, "challenge"    # J
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<*>;ZZZJI)Z"
        }
    .end annotation

    .prologue
    .local p5, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 250
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings_ex.ConfirmCredentials.title"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 252
    const-string/jumbo v3, "com.android.settings_ex.ConfirmCredentials.header"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 253
    const-string/jumbo v3, "com.android.settings_ex.ConfirmCredentials.details"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v3, "com.android.settings_ex.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string/jumbo v3, "com.android.settings_ex.ConfirmCredentials.darkTheme"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const-string/jumbo v3, "com.android.settings_ex.ConfirmCredentials.showCancelButton"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const-string/jumbo v3, "com.android.settings_ex.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const-string/jumbo v3, "return_credentials"

    invoke-virtual {v2, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    const-string/jumbo v3, "challenge"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    const-string/jumbo v3, ":settings:hide_drawer"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    move/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string/jumbo v3, "com.android.settings_ex"

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    if-eqz p7, :cond_1

    .line 266
    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 269
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 281
    :goto_0
    return v5

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 272
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    .line 276
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v2, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 16
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "userId"    # I

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v2

    .line 207
    .local v2, "effectiveUserId":I
    const/4 v15, 0x0

    .line 209
    .local v15, "launched":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 243
    .end local v15    # "launched":Z
    :goto_0
    return v15

    .line 212
    .restart local v15    # "launched":Z
    :sswitch_0
    if-nez p5, :cond_0

    if-eqz p7, :cond_1

    .line 213
    :cond_0
    const-class v8, Lcom/android/settings_ex/ConfirmLockPattern$InternalActivity;

    :goto_1
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    .line 211
    invoke-direct/range {v3 .. v14}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJI)Z

    move-result v15

    .local v15, "launched":Z
    goto :goto_0

    .line 214
    .local v15, "launched":Z
    :cond_1
    const-class v8, Lcom/android/settings_ex/ConfirmLockPattern;

    goto :goto_1

    .line 236
    :sswitch_1
    if-nez p5, :cond_2

    if-eqz p7, :cond_3

    .line 237
    :cond_2
    const-class v8, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    :goto_2
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    .line 235
    invoke-direct/range {v3 .. v14}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJI)Z

    move-result v15

    .local v15, "launched":Z
    goto :goto_0

    .line 238
    .local v15, "launched":Z
    :cond_3
    const-class v8, Lcom/android/settings_ex/ConfirmLockPassword;

    goto :goto_2

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public isPasswordLockMode()Z
    .locals 3

    .prologue
    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    .line 326
    .local v0, "effectiveUserId":I
    const/4 v1, 0x0

    .line 327
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 337
    :goto_0
    return v1

    .line 334
    :sswitch_0
    const/4 v1, 0x1

    .line 335
    goto :goto_0

    .line 327
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

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v6, v5

    .line 71
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
    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v8, p5

    .line 159
    invoke-direct/range {v0 .. v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J
    .param p7, "userId"    # I

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v10, p5

    .line 177
    invoke-direct/range {v2 .. v12}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v2

    return v2
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z

    .prologue
    .line 121
    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 120
    invoke-direct/range {v0 .. v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 143
    const-wide/16 v10, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v12

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 142
    invoke-direct/range {v2 .. v12}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v2

    return v2
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

.method public launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 100
    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p4}, Lcom/android/settings_ex/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move v7, v6

    .line 99
    invoke-direct/range {v0 .. v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z
    .locals 14
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "external"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v0, p8

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v12

    .line 198
    const/4 v7, 0x0

    .line 199
    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-wide/from16 v10, p6

    .line 198
    invoke-direct/range {v2 .. v12}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v2

    return v2
.end method

.method public lockMode()I
    .locals 3

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    .line 307
    .local v0, "effectiveUserId":I
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 320
    :goto_0
    :sswitch_0
    return v1

    .line 310
    :sswitch_1
    const/4 v1, 0x1

    .line 311
    goto :goto_0

    .line 313
    :sswitch_2
    const/4 v1, 0x2

    .line 314
    goto :goto_0

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
