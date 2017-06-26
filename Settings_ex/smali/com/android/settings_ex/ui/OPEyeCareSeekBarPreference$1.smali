.class Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;
.super Landroid/os/Handler;
.source "OPEyeCareSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 262
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 282
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    const-string v7, "oem:qdcm:mode_5"

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    iget-object v7, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I
    invoke-static {v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$200(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I

    move-result v7

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$102(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;I)I

    .line 287
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    iget v7, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$202(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;I)I

    .line 289
    const-string v6, "OPEyeCareSeekBarPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBetterStatus 456: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I
    invoke-static {v8}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$200(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mPrevBetterStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I
    invoke-static {v8}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$100(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mPrevBetterStatus:I
    invoke-static {v6}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$100(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I
    invoke-static {v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$200(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 338
    :goto_1
    return-void

    .line 264
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    const-string v7, "oem:qdcm:mode_5"

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    const-string v7, "oem:qdcm:mode_6"

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    const-string v7, "oem:qdcm:mode_7"

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 273
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    const-string v7, "oem:qdcm:mode_8"

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 276
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    const-string v7, "oem:qdcm:mode_9"

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 279
    :pswitch_5
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    const-string v7, "oem:qdcm:mode_10"

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$002(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_0
    const-string v6, "OPEyeCareSeekBarPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBetterStatus 456: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->mBetterStatus:I
    invoke-static {v8}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$200(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$302(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 300
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$300(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Landroid/net/LocalSocket;

    move-result-object v6

    new-instance v7, Landroid/net/LocalSocketAddress;

    const-string v8, "pps"

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, v8, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 302
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$300(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 304
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v6, 0x3

    if-ge v2, v6, :cond_1

    .line 306
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$000(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 308
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$300(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Landroid/net/LocalSocket;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 309
    iget-object v6, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->localSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$300(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 310
    .local v3, "is":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 312
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 313
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 314
    .local v5, "result":Ljava/lang/String;
    const-string v6, "Success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 315
    const-string v6, "OPEyeCareSeekBarPreference"

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

    .line 327
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 329
    const-string v6, "OPEyeCareSeekBarPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "M_TYPE_STRING : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference$1;->this$0:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    # getter for: Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->access$000(Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 331
    .end local v2    # "i":I
    .end local v4    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const-string v6, "OPEyeCareSeekBarPreference"

    const-string v7, "socket exception !"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "OPEyeCareSeekBarPreference"

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

    .line 323
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
