.class public Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;
.super Landroid/app/DialogFragment;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
    }
.end annotation


# static fields
.field private static final ARG_CREDENTIAL:Ljava/lang/String; = "credential"

.field private static final TAG:Ljava/lang/String; = "CredentialDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/android/settings_ex/UserCredentialsSettings$Credential;)V
    .locals 4
    .param p0, "target"    # Landroid/app/Fragment;
    .param p1, "item"    # Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .prologue
    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "credential"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "CredentialDialogFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 109
    new-instance v1, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;-><init>()V

    .line 110
    .local v1, "frag":Landroid/app/DialogFragment;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "CredentialDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    .end local v1    # "frag":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "credential"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .line 119
    .local v2, "item":Lcom/android/settings_ex/UserCredentialsSettings$Credential;
    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 120
    const v10, 0x7f0401f9

    const/4 v11, 0x0

    .line 119
    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 121
    .local v6, "root":Landroid/view/View;
    const v9, 0x7f110354

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 122
    .local v1, "infoContainer":Landroid/view/ViewGroup;
    new-instance v9, Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 123
    const/4 v11, 0x1

    new-array v11, v11, [Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    .line 122
    const v12, 0x7f0401f8

    invoke-direct {v9, v10, v12, v11}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings_ex/UserCredentialsSettings$Credential;)V

    .line 123
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 122
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 124
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 129
    .local v7, "userManager":Landroid/os/UserManager;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 131
    const v10, 0x7f0e0d01

    .line 129
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 132
    const v10, 0x7f0e0597

    const/4 v11, 0x0

    .line 129
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, "no_config_credentials"

    .line 135
    .local v5, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 136
    .local v4, "myUserId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "no_config_credentials"

    invoke-static {v9, v10, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 137
    new-instance v3, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;

    invoke-direct {v3, p0, v4, v2}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;-><init>(Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings_ex/UserCredentialsSettings$Credential;)V

    .line 151
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    const v9, 0x7f0e0cf8

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method
