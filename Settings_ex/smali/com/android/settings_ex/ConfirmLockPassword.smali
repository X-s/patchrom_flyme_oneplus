.class public Lcom/android/settings_ex/ConfirmLockPassword;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DETAIL_TEXTS:[I


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/settings_ex/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPassword;->DETAIL_TEXTS:[I

    .line 58
    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f0e098e
        0x7f0e098f
        0x7f0e0991
        0x7f0e0992
        0x7f0e0994
        0x7f0e0995
        0x7f0e0997
        0x7f0e0998
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 78
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1102de

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 92
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V

    .line 89
    :cond_0
    return-void
.end method
