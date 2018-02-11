.class public final Lcom/android/settings_ex/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings_ex/CredentialStorage$ResetDialog;,
        Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings_ex/CredentialStorage$UnlockDialog;
    }
.end annotation


# static fields
.field private static final synthetic -android-security-KeyStore$StateSwitchesValues:[I = null

.field public static final ACTION_INSTALL:Ljava/lang/String; = "com.android.credentials.INSTALL"

.field public static final ACTION_RESET:Ljava/lang/String; = "com.android.credentials.RESET"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field private static final CONFIRM_CLEAR_SYSTEM_CREDENTIAL_REQUEST:I = 0x2

.field private static final CONFIRM_KEY_GUARD_REQUEST:I = 0x1

.field static final MIN_PASSWORD_QUALITY:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "CredentialStorage"


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private mIsConfigureKeyGuardDialogShowing:Z

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/CredentialStorage;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method private static synthetic -getandroid-security-KeyStore$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings_ex/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/security/KeyStore$State;->values()[Landroid/security/KeyStore$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/settings_ex/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/CredentialStorage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/CredentialStorage;->mIsConfigureKeyGuardDialogShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/CredentialStorage;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/CredentialStorage;I)Z
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    .line 93
    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 434
    const-string/jumbo v7, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 437
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0

    .line 443
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    .line 443
    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 445
    .local v0, "launchedFromUid":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    .line 446
    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v7, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v6

    .line 449
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v0, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 451
    return v6

    .line 453
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 459
    .local v1, "launchedFromUserId":I
    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 460
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 461
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_4

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 463
    :cond_4
    return v6

    .line 454
    .end local v0    # "launchedFromUid":I
    .end local v1    # "launchedFromUserId":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .line 456
    .local v3, "re":Landroid/os/RemoteException;
    return v6

    .line 465
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "launchedFromUid":I
    .restart local v1    # "launchedFromUserId":I
    .restart local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_5
    return v5
.end method

.method private checkKeyGuardQuality()Z
    .locals 4

    .prologue
    .line 217
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 218
    .local v0, "credentialOwner":I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 219
    .local v1, "quality":I
    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard(I)Z
    .locals 5
    .param p1, "requestCode"    # I

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 473
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 475
    const v3, 0x7f0e0c00

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    .line 473
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    .line 476
    .local v0, "launched":Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage;->mIsConfigureKeyGuardDialogShowing:Z

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;)V

    .line 202
    :cond_0
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    return-void

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    .line 193
    return-void
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/CredentialStorage;->-getandroid-security-KeyStore$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    return-void

    .line 162
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    .line 163
    return-void

    .line 166
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$UnlockDialog;)V

    .line 167
    return-void

    .line 170
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage;->mIsConfigureKeyGuardDialogShowing:Z

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;)V

    .line 176
    :cond_1
    return-void

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->installIfAvailable()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    .line 180
    return-void

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 15

    .prologue
    .line 240
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 241
    :cond_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 247
    const-string/jumbo v12, "install_as_uid"

    const/4 v13, -0x1

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 249
    .local v10, "uid":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-static {v10, v12}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 267
    :cond_2
    const-string/jumbo v12, "user_private_key_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 268
    const-string/jumbo v12, "user_private_key_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v12, "user_private_key_data"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 271
    .local v11, "value":[B
    const/4 v6, 0x1

    .line 272
    .local v6, "flags":I
    const/16 v12, 0x3f2

    if-ne v10, v12, :cond_3

    invoke-direct {p0, v11}, Lcom/android/settings_ex/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 275
    const-string/jumbo v12, "CredentialStorage"

    const-string/jumbo v13, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v6, 0x0

    .line 279
    :cond_3
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v12, v8, v11, v10, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v12

    if-nez v12, :cond_6

    .line 280
    const-string/jumbo v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to install "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 250
    .end local v6    # "flags":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "value":[B
    :cond_4
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 251
    .local v5, "dstUserId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 254
    .local v9, "myUserId":I
    const/16 v12, 0x3f2

    if-eq v10, v12, :cond_5

    .line 255
    const-string/jumbo v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to install credentials as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": cross-user installs"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 256
    const-string/jumbo v14, " may only target wifi uids"

    .line 255
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 260
    :cond_5
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "com.android.credentials.INSTALL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    const/high16 v13, 0x2000000

    .line 260
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 263
    .local v7, "installIntent":Landroid/content/Intent;
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v7, v12}, Lcom/android/settings_ex/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 264
    return-void

    .line 285
    .end local v5    # "dstUserId":I
    .end local v7    # "installIntent":Landroid/content/Intent;
    .end local v9    # "myUserId":I
    :cond_6
    const/16 v12, 0x3f2

    if-ne v10, v12, :cond_7

    const/4 v6, 0x0

    .line 287
    .restart local v6    # "flags":I
    :goto_0
    const-string/jumbo v12, "user_certificate_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 288
    const-string/jumbo v12, "user_certificate_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "certName":Ljava/lang/String;
    const-string/jumbo v12, "user_certificate_data"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 291
    .local v3, "certData":[B
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v12, v4, v3, v10, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-nez v12, :cond_8

    .line 292
    const-string/jumbo v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to install "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 285
    .end local v3    # "certData":[B
    .end local v4    # "certName":Ljava/lang/String;
    .end local v6    # "flags":I
    :cond_7
    const/4 v6, 0x1

    .restart local v6    # "flags":I
    goto :goto_0

    .line 297
    :cond_8
    const-string/jumbo v12, "ca_certificates_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 298
    const-string/jumbo v12, "ca_certificates_name"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "caListName":Ljava/lang/String;
    const-string/jumbo v12, "ca_certificates_data"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 301
    .local v1, "caListData":[B
    iget-object v12, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v12, v2, v1, v10, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-nez v12, :cond_9

    .line 302
    const-string/jumbo v12, "CredentialStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to install "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " as uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 307
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_9
    const/4 v12, -0x1

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/CredentialStorage;->setResult(I)V

    .line 239
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7
    .param p1, "keyData"    # [B

    .prologue
    .line 224
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 226
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "algOid":Ljava/lang/String;
    new-instance v5, Lsun/security/x509/AlgorithmId;

    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v5}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "algName":Ljava/lang/String;
    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 230
    .end local v0    # "algName":Ljava/lang/String;
    .end local v1    # "algOid":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v3

    .line 231
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v5, 0x0

    return v5
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 481
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 486
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 487
    if-ne p2, v2, :cond_0

    .line 488
    const-string/jumbo v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 493
    return-void

    .line 497
    .end local v0    # "password":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    .line 480
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 499
    if-ne p2, v2, :cond_3

    .line 500
    new-instance v1, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 506
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 130
    .local v2, "userManager":Landroid/os/UserManager;
    const-string/jumbo v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    const-string/jumbo v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Lcom/android/settings_ex/CredentialStorage$ResetDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$ResetDialog;)V

    .line 124
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string/jumbo v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v3, "com.android.credentials.UNLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method
