.class public final Lcom/android/settings_ex/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CredentialStorage$1;,
        Lcom/android/settings_ex/CredentialStorage$UnlockDialog;,
        Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings_ex/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL:Ljava/lang/String; = "com.android.credentials.INSTALL"

.field public static final ACTION_RESET:Ljava/lang/String; = "com.android.credentials.RESET"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field private static final CONFIRM_KEY_GUARD_REQUEST:I = 0x1

.field static final MIN_PASSWORD_QUALITY:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "CredentialStorage"


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    .line 479
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/CredentialStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/CredentialStorage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CredentialStorage;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 407
    const-string v7, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v5

    .line 414
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 416
    .local v0, "launchedFromUid":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    .line 417
    const-string v5, "CredentialStorage"

    const-string v7, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 418
    goto :goto_0

    .line 420
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v0, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    .line 422
    goto :goto_0

    .line 424
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    .local v1, "launchedFromUserId":I
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 431
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 432
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_4

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    :cond_4
    move v5, v6

    .line 434
    goto :goto_0

    .line 425
    .end local v0    # "launchedFromUid":I
    .end local v1    # "launchedFromUserId":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .local v3, "re":Landroid/os/RemoteException;
    move v5, v6

    .line 427
    goto :goto_0
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 202
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 203
    .local v0, "quality":I
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 443
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 444
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x0

    const v4, 0x7f09085a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 448
    .local v0, "launched":Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/android/settings_ex/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->installIfAvailable()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 15

    .prologue
    .line 224
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 229
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 231
    const-string v12, "install_as_uid"

    const/4 v13, -0x1

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 233
    .local v10, "uid":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-static {v10, v12}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v12

    if-nez v12, :cond_3

    .line 234
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 235
    .local v5, "dstUserId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 238
    .local v9, "myUserId":I
    const/16 v12, 0x3f2

    if-eq v10, v12, :cond_2

    .line 239
    const-string v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to install credentials as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": cross-user installs"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " may only target wifi uids"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_2
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.credentials.INSTALL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x2000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 247
    .local v7, "installIntent":Landroid/content/Intent;
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v7, v12}, Lcom/android/settings_ex/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 251
    .end local v5    # "dstUserId":I
    .end local v7    # "installIntent":Landroid/content/Intent;
    .end local v9    # "myUserId":I
    :cond_3
    const-string v12, "user_private_key_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 252
    const-string v12, "user_private_key_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "key":Ljava/lang/String;
    const-string v12, "user_private_key_data"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 255
    .local v11, "value":[B
    const/4 v6, 0x1

    .line 256
    .local v6, "flags":I
    const/16 v12, 0x3f2

    if-ne v10, v12, :cond_4

    invoke-direct {p0, v11}, Lcom/android/settings_ex/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 259
    const-string v12, "CredentialStorage"

    const-string v13, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v6, 0x0

    .line 263
    :cond_4
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v12, v8, v11, v10, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v12

    if-nez v12, :cond_5

    .line 264
    const-string v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to install "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    .end local v6    # "flags":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "value":[B
    :cond_5
    const/16 v12, 0x3f2

    if-ne v10, v12, :cond_6

    const/4 v6, 0x0

    .line 271
    .restart local v6    # "flags":I
    :goto_1
    const-string v12, "user_certificate_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 272
    const-string v12, "user_certificate_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "certName":Ljava/lang/String;
    const-string v12, "user_certificate_data"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 275
    .local v3, "certData":[B
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v12, v4, v3, v10, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-nez v12, :cond_7

    .line 276
    const-string v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to install "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    .end local v3    # "certData":[B
    .end local v4    # "certName":Ljava/lang/String;
    .end local v6    # "flags":I
    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    .line 281
    .restart local v6    # "flags":I
    :cond_7
    const-string v12, "ca_certificates_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 282
    const-string v12, "ca_certificates_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "caListName":Ljava/lang/String;
    const-string v12, "ca_certificates_data"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 285
    .local v1, "caListData":[B
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v12, v2, v1, v10, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-nez v12, :cond_8

    .line 286
    const-string v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to install "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_8
    const/4 v12, -0x1

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/CredentialStorage;->setResult(I)V

    goto/16 :goto_0
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7
    .param p1, "keyData"    # [B

    .prologue
    .line 208
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 210
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "algId":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "algName":Ljava/lang/String;
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 216
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_0
    return v5

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "CredentialStorage"

    const-string v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 458
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 459
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 460
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 471
    .end local v0    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 131
    .local v2, "userManager":Landroid/os/UserManager;
    const-string v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    const-string v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    new-instance v3, Lcom/android/settings_ex/CredentialStorage$ResetDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method
