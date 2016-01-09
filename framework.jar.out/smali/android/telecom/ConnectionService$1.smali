.class Landroid/telecom/ConnectionService$1;
.super Lcom/android/internal/telecom/IConnectionService$Stub;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void
.end method

.method public addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method

.method public addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "participant"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 249
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 250
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 252
    return-void
.end method

.method public answer(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void
.end method

.method public answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 162
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 163
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 164
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 165
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 236
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 237
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 146
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 147
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 148
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 149
    if-eqz p4, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 150
    if-eqz p5, :cond_1

    :goto_1
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 151
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void

    :cond_0
    move v1, v3

    .line 149
    goto :goto_0

    :cond_1
    move v2, v3

    .line 150
    goto :goto_1
.end method

.method public deflect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 176
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 177
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method

.method public hold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void
.end method

.method public mergeConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    return-void
.end method

.method public onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 203
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 204
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 205
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void
.end method

.method public onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 266
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 267
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 268
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 269
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void

    .line 268
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 211
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void
.end method

.method public reject(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method public removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method

.method public setActiveSubscription(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string/jumbo v0, "setActiveSubscription %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    return-void
.end method

.method public setLocalCallHold(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "lchState"    # I

    .prologue
    .line 221
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 222
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 223
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 224
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 225
    return-void
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public swapConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    return-void
.end method

.method public unhold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method
