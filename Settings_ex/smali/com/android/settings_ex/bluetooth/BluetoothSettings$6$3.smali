.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dpsFragment:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;Landroid/app/Activity;Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$3;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$3;->val$dpsFragment:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$3;->val$dpsFragment:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 770
    :cond_0
    return-void
.end method
