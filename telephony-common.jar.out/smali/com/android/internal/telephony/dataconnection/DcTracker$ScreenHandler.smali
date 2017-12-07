.class final Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;
.super Landroid/os/Handler;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenHandler"
.end annotation


# static fields
.field static final MSG_BROADCAST_OFF:I = 0x2

.field static final MSG_BROADCAST_ON:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 5019
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 5020
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 5019
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5025
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5026
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5024
    :goto_0
    return-void

    .line 5028
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 5029
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap7(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5030
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap6(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5031
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 5034
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 5035
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap7(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5036
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap6(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5037
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 5026
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
