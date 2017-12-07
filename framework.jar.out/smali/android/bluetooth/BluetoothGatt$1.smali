.class Landroid/bluetooth/BluetoothGatt$1;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Ljava/lang/String;II[B)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .prologue
    const/4 v6, 0x0

    .line 252
    const-string/jumbo v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCharacteristicRead() - Device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 253
    const-string/jumbo v5, " handle="

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 253
    const-string/jumbo v5, " Status="

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v4

    monitor-enter v4

    .line 260
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 263
    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    .line 264
    const/16 v3, 0xf

    if-ne p2, v3, :cond_2

    .line 265
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 268
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v3, v4, p1, p3, v5}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    return-void

    .line 259
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothGatt"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3, v6}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 277
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 278
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_3

    .line 279
    const-string/jumbo v3, "BluetoothGatt"

    const-string/jumbo v4, "onCharacteristicRead() failed to find characteristic!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 283
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v0, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 286
    :cond_4
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v4, v0, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    :goto_0
    return-void

    .line 287
    :catch_1
    move-exception v2

    .line 288
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothGatt"

    const-string/jumbo v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCharacteristicWrite(Ljava/lang/String;II)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I

    .prologue
    const/4 v10, 0x0

    .line 301
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 309
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    .line 310
    .local v7, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v7, :cond_1

    return-void

    .line 305
    .end local v7    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 312
    .restart local v7    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    .line 313
    const/16 v0, 0xf

    if-ne p2, v0, :cond_3

    .line 314
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 317
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    .line 318
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v4

    .line 319
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v6

    .line 318
    const/4 v5, 0x2

    move-object v2, p1

    move v3, p3

    .line 317
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    return-void

    .line 321
    :catch_0
    move-exception v8

    .line 322
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v10}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 329
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, v7, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    :goto_0
    return-void

    .line 330
    :catch_1
    move-exception v9

    .line 331
    .local v9, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, "Unhandled exception in callback"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string/jumbo v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClientConnectionState() - status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    const-string/jumbo v4, " clientIf="

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    const-string/jumbo v4, " device="

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x2

    .line 180
    .local v1, "profileState":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v3, p1, v1}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get8(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 186
    if-eqz p3, :cond_2

    .line 187
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set2(Landroid/bluetooth/BluetoothGatt;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v3

    .line 193
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v3

    monitor-enter v3

    .line 194
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 171
    return-void

    .line 178
    .end local v1    # "profileState":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "profileState":I
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    const-string/jumbo v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 189
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set2(Landroid/bluetooth/BluetoothGatt;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 185
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 193
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onClientRegistered(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    const/4 v1, 0x0

    .line 140
    const-string/jumbo v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClientRegistered() - status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    const-string/jumbo v4, " clientIf="

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2, p2}, Landroid/bluetooth/BluetoothGatt;->-set1(Landroid/bluetooth/BluetoothGatt;I)I

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/16 v4, 0x101

    invoke-virtual {v2, v3, v4, v1}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 153
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get8(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->-set2(Landroid/bluetooth/BluetoothGatt;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 156
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 159
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    move-result v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 160
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-get1(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-get9(Landroid/bluetooth/BluetoothGatt;)I

    move-result v5

    .line 159
    invoke-interface {v2, v3, v4, v1, v5}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_1
    return-void

    .line 160
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onConfigureMTU(Ljava/lang/String;II)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .prologue
    .line 485
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigureMTU() - Device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 486
    const-string/jumbo v3, " mtu="

    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 486
    const-string/jumbo v3, " status="

    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    return-void

    .line 491
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDescriptorRead(Ljava/lang/String;II[B)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .prologue
    const/4 v6, 0x1

    .line 366
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    return-void

    .line 370
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v4

    monitor-enter v4

    .line 371
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 374
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 375
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v0, :cond_1

    return-void

    .line 370
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 377
    .restart local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v0, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 379
    :cond_2
    const/4 v3, 0x5

    if-eq p2, v3, :cond_3

    .line 380
    const/16 v3, 0xf

    if-ne p2, v3, :cond_4

    .line 381
    :cond_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 383
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 384
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v3, v4, p1, p3, v5}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    return-void

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothGatt"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3, v6}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 394
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v4, v0, p2}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 363
    :goto_0
    return-void

    .line 395
    :catch_1
    move-exception v2

    .line 396
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothGatt"

    const-string/jumbo v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDescriptorWrite(Ljava/lang/String;II)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I

    .prologue
    const/4 v10, 0x0

    .line 407
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 412
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 415
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v7

    .line 416
    .local v7, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v7, :cond_1

    return-void

    .line 411
    .end local v7    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 418
    .restart local v7    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    .line 419
    const/16 v0, 0xf

    if-ne p2, v0, :cond_3

    .line 420
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 422
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 423
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    .line 425
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v6

    .line 424
    const/4 v4, 0x2

    .line 425
    const/4 v5, 0x2

    move-object v2, p1

    move v3, p3

    .line 423
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    return-void

    .line 427
    :catch_0
    move-exception v8

    .line 428
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v10}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 435
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, v7, p2}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 404
    :goto_0
    return-void

    .line 436
    :catch_1
    move-exception v9

    .line 437
    .local v9, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, "Unhandled exception in callback"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 448
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v2

    monitor-enter v2

    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 457
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    :goto_0
    return-void

    .line 452
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotify(Ljava/lang/String;I[B)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "value"    # [B

    .prologue
    .line 343
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    return-void

    .line 347
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 348
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    return-void

    .line 350
    :cond_1
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 353
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    const-string/jumbo v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 470
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    return-void

    .line 474
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V
    .locals 15
    .param p1, "address"    # Ljava/lang/String;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const-string/jumbo v10, "BluetoothGatt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onSearchComplete() = Device="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " Status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothGattService;

    .line 214
    .local v8, "s":Landroid/bluetooth/BluetoothGattService;
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/BluetoothGattService;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 217
    .end local v8    # "s":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get7(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get7(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "fixedService$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    .line 222
    .local v4, "fixedService":Landroid/bluetooth/BluetoothGattService;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v7, "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 225
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "brokenRef$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 226
    .local v1, "brokenRef":Landroid/bluetooth/BluetoothGattService;
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v11, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v11}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 227
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v13

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v14

    .line 226
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 228
    .local v6, "includedService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v6, :cond_3

    .line 229
    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_1

    .line 231
    :cond_3
    const-string/jumbo v10, "BluetoothGatt"

    const-string/jumbo v11, "Broken GATT database: can\'t find included service."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    .end local v1    # "brokenRef":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "brokenRef$iterator":Ljava/util/Iterator;
    .end local v4    # "fixedService":Landroid/bluetooth/BluetoothGattService;
    .end local v6    # "includedService":Landroid/bluetooth/BluetoothGattService;
    .end local v7    # "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_4
    :try_start_0
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v10

    iget-object v11, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_2
    return-void

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "BluetoothGatt"

    const-string/jumbo v11, "Unhandled exception in callback"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
