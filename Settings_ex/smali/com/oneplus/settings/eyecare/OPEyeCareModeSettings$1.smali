.class Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;
.super Landroid/os/Handler;
.source "OPEyeCareModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 167
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 198
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_1"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    iget v7, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$102(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;I)I

    .line 206
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$202(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 207
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$200(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/net/LocalSocket;

    move-result-object v6

    new-instance v7, Landroid/net/LocalSocketAddress;

    const-string v8, "pps"

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, v8, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 209
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$200(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 211
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 213
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$000(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 215
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$200(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/net/LocalSocket;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 216
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$200(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 217
    .local v3, "is":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 219
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 220
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 221
    .local v5, "result":Ljava/lang/String;
    const-string v6, "Success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    const-string v6, "OPEyeCareModeSettings"

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

    .line 234
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 241
    const-string v6, "OPEyeCareModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "M_TYPE_STRING : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$000(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v2    # "i":I
    .end local v4    # "os":Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 169
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_1"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    :pswitch_2
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_2"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :pswitch_3
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_3"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 180
    :pswitch_4
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_5"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 183
    :pswitch_5
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_6"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 186
    :pswitch_6
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_7"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    :pswitch_7
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_8"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 192
    :pswitch_8
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_9"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 195
    :pswitch_9
    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v7, "oem:qdcm:mode_10"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "OPEyeCareModeSettings"

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

    .line 230
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 243
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const-string v6, "OPEyeCareModeSettings"

    const-string v7, "socket exception !"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
