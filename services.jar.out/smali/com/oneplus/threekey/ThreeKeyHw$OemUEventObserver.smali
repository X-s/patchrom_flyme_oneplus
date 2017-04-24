.class Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;
.super Landroid/os/UEventObserver;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method constructor <init>(Lcom/oneplus/threekey/ThreeKeyHw;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 98
    const-string v4, "ThreeKeyHw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "devPath":Ljava/lang/String;
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "name":Ljava/lang/String;
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 105
    .local v3, "state":I
    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    # invokes: Lcom/oneplus/threekey/ThreeKeyHw;->sendBroadcastForZenModeChanged(I)V
    invoke-static {v4, v3}, Lcom/oneplus/threekey/ThreeKeyHw;->access$100(Lcom/oneplus/threekey/ThreeKeyHw;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "ThreeKeyHw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startMonitor()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEVPATH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    # getter for: Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
    invoke-static {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 93
    return-void
.end method
