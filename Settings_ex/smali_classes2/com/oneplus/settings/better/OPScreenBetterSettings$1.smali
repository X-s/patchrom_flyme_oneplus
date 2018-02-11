.class Lcom/oneplus/settings/better/OPScreenBetterSettings$1;
.super Landroid/os/Handler;
.source "OPScreenBetterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPScreenBetterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPScreenBetterSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPScreenBetterSettings;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 97
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string/jumbo v8, "oem:qdcm:mode_1"

    invoke-static {v7, v8}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-set0(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    :goto_0
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, v8}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-set2(Lcom/oneplus/settings/better/OPScreenBetterSettings;I)I

    .line 106
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v7}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get3(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "oem_eyecare_enable"

    const/4 v9, 0x0

    .line 105
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, "eyeCareStatus":I
    if-nez v2, :cond_1

    .line 111
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V

    invoke-static {v7, v8}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-set1(Lcom/oneplus/settings/better/OPScreenBetterSettings;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 112
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v7}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get1(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v7

    new-instance v8, Landroid/net/LocalSocketAddress;

    const-string/jumbo v9, "pps"

    .line 113
    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 112
    invoke-direct {v8, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v7, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 114
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v7}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get1(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 116
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v7, 0x3

    if-ge v3, v7, :cond_0

    .line 118
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v7}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get0(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 120
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v7}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get1(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 121
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v7}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get1(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/net/LocalSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 122
    .local v4, "is":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 124
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 125
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 126
    .local v6, "result":Ljava/lang/String;
    const-string/jumbo v7, "Success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    const-string/jumbo v7, "OPScreenBetterSettings"

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "succ buffer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 127
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 146
    .end local v3    # "i":I
    .end local v5    # "os":Ljava/io/OutputStream;
    :cond_1
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v7}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get3(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "oem_better_status"

    .line 147
    iget-object v9, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v9}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get2(Lcom/oneplus/settings/better/OPScreenBetterSettings;)I

    move-result v9

    .line 145
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    const-string/jumbo v7, "OPScreenBetterSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "M_TYPE_STRING : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    invoke-static {v9}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-get0(Lcom/oneplus/settings/better/OPScreenBetterSettings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "eyeCareStatus":I
    :goto_2
    return-void

    .line 88
    :pswitch_0
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string/jumbo v8, "oem:qdcm:mode_1"

    invoke-static {v7, v8}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-set0(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 91
    :pswitch_1
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string/jumbo v8, "oem:qdcm:mode_2"

    invoke-static {v7, v8}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-set0(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 94
    :pswitch_2
    iget-object v7, p0, Lcom/oneplus/settings/better/OPScreenBetterSettings$1;->this$0:Lcom/oneplus/settings/better/OPScreenBetterSettings;

    const-string/jumbo v8, "oem:qdcm:mode_3"

    invoke-static {v7, v8}, Lcom/oneplus/settings/better/OPScreenBetterSettings;->-set0(Lcom/oneplus/settings/better/OPScreenBetterSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    .restart local v0    # "buffer":[B
    .restart local v2    # "eyeCareStatus":I
    .restart local v3    # "i":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v7, "OPScreenBetterSettings"

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fail buffer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    const-string/jumbo v9, " i = "

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 150
    .end local v0    # "buffer":[B
    .end local v2    # "eyeCareStatus":I
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const-string/jumbo v7, "OPScreenBetterSettings"

    const-string/jumbo v8, "socket exception !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
