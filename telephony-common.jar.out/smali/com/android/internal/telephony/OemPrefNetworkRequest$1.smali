.class Lcom/android/internal/telephony/OemPrefNetworkRequest$1;
.super Landroid/os/Handler;
.source "OemPrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OemPrefNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OemPrefNetworkRequest;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OemPrefNetworkRequest;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$1;->this$0:Lcom/android/internal/telephony/OemPrefNetworkRequest;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$1;->this$0:Lcom/android/internal/telephony/OemPrefNetworkRequest;

    # invokes: Lcom/android/internal/telephony/OemPrefNetworkRequest;->handleSetPreferredNetwork(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->access$000(Lcom/android/internal/telephony/OemPrefNetworkRequest;Landroid/os/Message;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$1;->this$0:Lcom/android/internal/telephony/OemPrefNetworkRequest;

    # invokes: Lcom/android/internal/telephony/OemPrefNetworkRequest;->handleGetPreferredNetwork(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->access$100(Lcom/android/internal/telephony/OemPrefNetworkRequest;Landroid/os/Message;)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/OemPrefNetworkRequest$1;->this$0:Lcom/android/internal/telephony/OemPrefNetworkRequest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/internal/telephony/OemPrefNetworkRequest;->request(I)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->access$200(Lcom/android/internal/telephony/OemPrefNetworkRequest;I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
