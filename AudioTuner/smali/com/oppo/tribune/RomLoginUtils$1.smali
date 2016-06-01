.class Lcom/oppo/tribune/RomLoginUtils$1;
.super Landroid/os/Handler;
.source "RomLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/RomLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/RomLoginUtils;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oppo/tribune/RomLoginUtils$1;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nearme/aidl/UserEntity;

    .line 41
    .local v0, "entity":Lcom/nearme/aidl/UserEntity;
    if-eqz v0, :cond_2

    .line 42
    const-string v1, "RomLoginUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nearme/aidl/UserEntity;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v0}, Lcom/nearme/aidl/UserEntity;->getResult()I

    move-result v1

    const v2, 0x1c9c769

    if-ne v1, v2, :cond_1

    .line 44
    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils$1;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->doGetTokenSuccess()V
    invoke-static {v1}, Lcom/oppo/tribune/RomLoginUtils;->access$000(Lcom/oppo/tribune/RomLoginUtils;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/nearme/aidl/UserEntity;->getResult()I

    move-result v1

    const v2, 0x1c9c76c

    if-ne v1, v2, :cond_0

    .line 46
    const-string v1, ""

    invoke-virtual {v0}, Lcom/nearme/aidl/UserEntity;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Lcom/nearme/aidl/UserEntity;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils$1;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->cancleGetToken()V
    invoke-static {v1}, Lcom/oppo/tribune/RomLoginUtils;->access$100(Lcom/oppo/tribune/RomLoginUtils;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils$1;->this$0:Lcom/oppo/tribune/RomLoginUtils;

    # invokes: Lcom/oppo/tribune/RomLoginUtils;->doGetTokenFail()V
    invoke-static {v1}, Lcom/oppo/tribune/RomLoginUtils;->access$200(Lcom/oppo/tribune/RomLoginUtils;)V

    goto :goto_0
.end method
