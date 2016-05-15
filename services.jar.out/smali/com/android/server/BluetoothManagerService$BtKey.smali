.class Lcom/android/server/BluetoothManagerService$BtKey;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BtKey"
.end annotation


# instance fields
.field mPid:I

.field mUid:I

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;II)V
    .locals 1
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    const/4 v0, -0x1

    .line 1785
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtKey;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1782
    iput v0, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mUid:I

    .line 1783
    iput v0, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mPid:I

    .line 1786
    iput p2, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mUid:I

    .line 1787
    iput p3, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mPid:I

    .line 1788
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1808
    if-nez p1, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1812
    check-cast v0, Lcom/android/server/BluetoothManagerService$BtKey;

    .line 1813
    .local v0, "o":Lcom/android/server/BluetoothManagerService$BtKey;
    iget v2, v0, Lcom/android/server/BluetoothManagerService$BtKey;->mUid:I

    iget v3, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mUid:I

    if-ne v2, v3, :cond_0

    .line 1816
    iget v2, v0, Lcom/android/server/BluetoothManagerService$BtKey;->mPid:I

    iget v3, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mPid:I

    if-ne v2, v3, :cond_0

    .line 1819
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 1795
    iget v0, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mPid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 1791
    iget v0, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mUid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1800
    const-string v0, ""

    .line 1801
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BtKey{uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BluetoothManagerService$BtKey;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1802
    return-object v0
.end method
