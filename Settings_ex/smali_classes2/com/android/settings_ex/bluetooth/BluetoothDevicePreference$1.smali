.class Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->-get0(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 239
    return-void
.end method
