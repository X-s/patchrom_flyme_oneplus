.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->this$1:Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 756
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->val$activity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02005c

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/Utils;->updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 760
    return-void
.end method
