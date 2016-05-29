.class public final Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothVisibilityTimeoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothVisibilityTimeoutActivity"


# instance fields
.field private final mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 53
    .local v0, "manager":Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getDiscoverableEnabler()Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "BluetoothVisibilityTimeoutActivity"

    const-string v2, "Error: Can\'t get LocalBluetoothManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableTimeout(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;->dismiss()V

    .line 74
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001a

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeoutIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
