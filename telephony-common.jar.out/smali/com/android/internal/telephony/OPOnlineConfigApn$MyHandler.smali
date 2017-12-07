.class Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;
.super Landroid/os/Handler;
.source "OPOnlineConfigApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OPOnlineConfigApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/OPOnlineConfigApn;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/OPOnlineConfigApn;
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage() message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap0(Lcom/android/internal/telephony/OPOnlineConfigApn;Ljava/lang/String;)V

    .line 135
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage() Don\'t support this handle message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap0(Lcom/android/internal/telephony/OPOnlineConfigApn;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 139
    .local v2, "reset_prop_version":I
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v3, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    invoke-static {v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-get0(Lcom/android/internal/telephony/OPOnlineConfigApn;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "OPOnlineConfigApn"

    invoke-direct {v0, v3, v4}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 141
    .local v1, "jsonArr":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap1(Lcom/android/internal/telephony/OPOnlineConfigApn;Lorg/json/JSONArray;I)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
