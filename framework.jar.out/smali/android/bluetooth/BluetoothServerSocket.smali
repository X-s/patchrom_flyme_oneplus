.class public final Landroid/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "BluetoothServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothServerSocket"


# instance fields
.field private mChannel:I

.field private mHandler:Landroid/os/Handler;

.field private mMessage:I

.field final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(IZZI)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 88
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 89
    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method constructor <init>(IZZIZZ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "mitm"    # Z
    .param p6, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 109
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 111
    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method constructor <init>(IZZLandroid/os/ParcelUuid;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v5, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 129
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 130
    return-void
.end method


# virtual methods
.method public accept()Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method setChannel(I)V
    .locals 3
    .param p1, "newChannel"    # I

    .prologue
    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 204
    const-string v0, "BluetoothServerSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The port set is different that the underlying port. mSocket.getPort(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested newChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 209
    return-void
.end method

.method declared-synchronized setCloseHandler(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    .line 179
    iput p2, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "ServiceName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setServiceName(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServerSocket: Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 232
    :goto_0
    const-string v1, " Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 218
    :pswitch_0
    const-string v1, "TYPE_RFCOMM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    :pswitch_1
    const-string v1, "TYPE_L2CAP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :pswitch_2
    const-string v1, "TYPE_SCO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
