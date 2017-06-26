.class public Lcom/android/settings_ex/vpn2/ConfigDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_EDITING:Ljava/lang/String; = "editing"

.field private static final ARG_EXISTS:Ljava/lang/String; = "exists"

.field private static final ARG_PROFILE:Ljava/lang/String; = "profile"

.field private static final TAG:Ljava/lang/String; = "ConfigDialogFragment"

.field private static final TAG_CONFIG_DIALOG:Ljava/lang/String; = "vpnconfigdialog"


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mUnlocking:Z

    return-void
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0b49

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Lcom/android/internal/net/VpnProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 148
    .local v0, "connected":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    const-string v3, "[Legacy VPN]"

    const-string v4, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "connected":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ConfigDialogFragment"

    const-string v3, "Failed to disconnect"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings_ex/vpn2/VpnSettings;
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "edit"    # Z
    .param p3, "exists"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "profile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    const-string v2, "editing"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string v2, "exists"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    new-instance v1, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;-><init>()V

    .line 64
    .local v1, "frag":Lcom/android/settings_ex/vpn2/ConfigDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "vpnconfigdialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->dismiss()V

    .line 134
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 135
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, -0x1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/ConfigDialog;

    .line 103
    .local v0, "dialog":Lcom/android/settings_ex/vpn2/ConfigDialog;
    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 105
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    if-ne p2, v7, :cond_1

    .line 107
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 111
    invoke-direct {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/ConfigDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->dismiss()V

    .line 129
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "ConfigDialogFragment"

    const-string v4, "Failed to connect"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, -0x3

    if-ne p2, v3, :cond_0

    .line 123
    invoke-direct {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)V

    .line 126
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 93
    .local v6, "args":Landroid/os/Bundle;
    const-string v0, "profile"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 94
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    const-string v0, "editing"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 95
    .local v4, "editing":Z
    const-string v0, "exists"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 97
    .local v5, "exists":Z
    new-instance v0, Lcom/android/settings_ex/vpn2/ConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/vpn2/ConfigDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 74
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v1, :cond_1

    .line 77
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 82
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 88
    :goto_1
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->dismiss()V

    goto :goto_0

    .line 87
    :cond_2
    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->mUnlocking:Z

    goto :goto_1
.end method
