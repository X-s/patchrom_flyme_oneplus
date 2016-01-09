.class Lcom/oneplus/fingerprints/service/FingerprintManager$2;
.super Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/fingerprints/service/FingerprintManager;-><init>(Lcom/oneplus/fingerprints/service/IFingerprintService;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/oneplus/fingerprints/service/FingerprintManager;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$2;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(IIII)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$2;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$1100(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 735
    new-instance v0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;

    iget-object v1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$2;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;-><init>(Lcom/oneplus/fingerprints/service/FingerprintManager;III)V

    .line 736
    .local v0, "msgData":Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;
    iget-object v1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$2;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$1100(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$2;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$1100(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    const/4 v1, 0x7

    if-ne v1, p1, :cond_0

    .line 738
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Client sendMessage MSG_IDENTIFY_NO_MATCH, time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .end local v0    # "msgData":Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    const-string v1, "FingerprintManager"

    const-string v2, " when onMessage was called, mEventhHandler = null"

    invoke-static {v1, v2}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
