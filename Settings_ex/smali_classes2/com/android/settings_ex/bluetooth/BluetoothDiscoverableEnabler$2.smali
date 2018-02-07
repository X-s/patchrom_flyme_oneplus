.class Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->-wrap0(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 89
    return-void
.end method
