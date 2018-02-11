.class final Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 2
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 57
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PbapServerProfile"

    const-string/jumbo v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-static {v0, p1}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->-set1(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 59
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->-set0(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;Z)Z

    .line 56
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PbapServerProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->-set0(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;Z)Z

    .line 62
    return-void
.end method
