.class public Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;
.super Landroid/app/DialogFragment;
.source "AppManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/vpn2/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CannotConnectFragment"
.end annotation


# static fields
.field private static final ARG_VPN_LABEL:Ljava/lang/String; = "label"

.field private static final TAG:Ljava/lang/String; = "CannotConnect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/vpn2/AppManagementFragment;Ljava/lang/String;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings_ex/vpn2/AppManagementFragment;
    .param p1, "vpnLabel"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "CannotConnect"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v1, Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;-><init>()V

    .line 313
    .local v1, "frag":Landroid/app/DialogFragment;
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "CannotConnect"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 307
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "frag":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "label"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "vpnLabel":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v4, 0x7f0e0d13

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0d14

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 324
    const v2, 0x7f0e05c1

    const/4 v3, 0x0

    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
