.class Lcom/android/server/OemExService$3;
.super Lcom/oem/os/IOemUeventCallback$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Lcom/oem/os/IOemUeventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 631
    iget-object v1, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mSystemComplete:Z
    invoke-static {v1}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v1, p1}, Lcom/android/server/OemExService;->access$600(Lcom/android/server/OemExService;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 635
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oemEvent message switch_state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/OemExService;->switch_state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v1, "SWITCH_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/OemExService;->switch_state:Ljava/lang/String;

    .line 637
    iget-object v1, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$1000(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    iget-object v1, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$1000(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
