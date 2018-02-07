.class Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPreferenceList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 396
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 400
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mAddDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 394
    return-void
.end method
