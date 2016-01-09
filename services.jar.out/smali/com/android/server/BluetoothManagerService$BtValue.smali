.class Lcom/android/server/BluetoothManagerService$BtValue;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BtValue"
.end annotation


# instance fields
.field mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field mPid:I

.field mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

.field mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;IILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 2
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "adapterCallback"    # Landroid/bluetooth/IBluetoothManagerCallback;
    .param p5, "qadapterCallback"    # Landroid/bluetooth/IQBluetoothManagerCallback;
    .param p6, "stateCallback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1833
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    iput v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mUid:I

    .line 1825
    iput v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mPid:I

    .line 1826
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1827
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 1828
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1834
    iput p2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mUid:I

    .line 1835
    iput p3, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mPid:I

    .line 1836
    iput-object p4, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1837
    iput-object p5, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 1838
    iput-object p6, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1839
    return-void
.end method


# virtual methods
.method getAdapterCallback()Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method getCallbackCapacity()I
    .locals 2

    .prologue
    .line 1876
    const/4 v0, 0x0

    .line 1877
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    if-eqz v1, :cond_0

    .line 1878
    add-int/lit8 v0, v0, 0x1

    .line 1880
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    if-eqz v1, :cond_1

    .line 1881
    add-int/lit8 v0, v0, 0x1

    .line 1883
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    if-eqz v1, :cond_2

    .line 1884
    add-int/lit8 v0, v0, 0x1

    .line 1887
    :cond_2
    return v0
.end method

.method getQAdapterCallback()Landroid/bluetooth/IQBluetoothManagerCallback;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    return-object v0
.end method

.method getStateCallback()Landroid/bluetooth/IBluetoothStateChangeCallback;
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    return-object v0
.end method

.method setAdapterCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 0
    .param p1, "adapterCallback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1853
    return-void
.end method

.method setQAdapterCallback(Landroid/bluetooth/IQBluetoothManagerCallback;)V
    .locals 0
    .param p1, "qadapterCallback"    # Landroid/bluetooth/IQBluetoothManagerCallback;

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 1857
    return-void
.end method

.method setStateCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 0
    .param p1, "stateCallback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 1860
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1861
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1843
    const-string v0, ""

    .line 1844
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BtValue{uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAdapterCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mQAdapterCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mStateCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1848
    return-object v0
.end method
