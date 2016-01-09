.class Lcom/android/server/DeviceKeyHandler$1;
.super Lcom/oem/os/IOemExInputCallBack$Stub;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceKeyHandler;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/DeviceKeyHandler$1;->this$0:Lcom/android/server/DeviceKeyHandler;

    invoke-direct {p0}, Lcom/oem/os/IOemExInputCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/InputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v2, "DeviceKeyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBlackEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-nez v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 234
    check-cast v0, Landroid/view/KeyEvent;

    .line 235
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x86

    if-ne v2, v3, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler$1;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;
    invoke-static {v2}, Lcom/android/server/DeviceKeyHandler;->access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 241
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler$1;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/DeviceKeyHandler;->access$400(Lcom/android/server/DeviceKeyHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler$1;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;
    invoke-static {v2}, Lcom/android/server/DeviceKeyHandler;->access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/DeviceKeyHandler$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler$1;->this$0:Lcom/android/server/DeviceKeyHandler;

    # invokes: Lcom/android/server/DeviceKeyHandler;->SensorProcessMessage()V
    invoke-static {v2}, Lcom/android/server/DeviceKeyHandler;->access$500(Lcom/android/server/DeviceKeyHandler;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler$1;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;
    invoke-static {v2}, Lcom/android/server/DeviceKeyHandler;->access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
