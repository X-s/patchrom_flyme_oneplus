.class Lcom/oneplus/settings/receiver/SettingsReceiver$1;
.super Ljava/lang/Object;
.source "SettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/receiver/SettingsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 209
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6, v7}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$002(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 210
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$000(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/net/LocalSocket;

    move-result-object v6

    new-instance v7, Landroid/net/LocalSocketAddress;

    const-string v8, "pps"

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, v8, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 212
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$000(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 213
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 214
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$100(Lcom/oneplus/settings/receiver/SettingsReceiver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 215
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$000(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/net/LocalSocket;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 216
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$000(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 217
    .local v3, "is":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 218
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 219
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 220
    .local v5, "result":Ljava/lang/String;
    const-string v6, "Success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    const-string v6, "SettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "succ buffer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 234
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$200(Lcom/oneplus/settings/receiver/SettingsReceiver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oem_better_status"

    iget-object v8, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->mBetterStatus:I
    invoke-static {v8}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$300(Lcom/oneplus/settings/receiver/SettingsReceiver;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    const-string v6, "SettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "M_TYPE_STRING : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    # getter for: Lcom/oneplus/settings/receiver/SettingsReceiver;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/settings/receiver/SettingsReceiver;->access$100(Lcom/oneplus/settings/receiver/SettingsReceiver;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v2    # "i":I
    .end local v4    # "os":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 226
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1
    const-string v6, "SettingsReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail buffer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 238
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    const-string v6, "SettingsReceiver"

    const-string v7, "socket exception !"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
