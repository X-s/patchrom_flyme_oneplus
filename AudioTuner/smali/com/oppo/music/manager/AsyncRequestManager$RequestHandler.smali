.class Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;
.super Landroid/os/Handler;
.source "AsyncRequestManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/manager/AsyncRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# static fields
.field public static final MSG_REQUEST_BACK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestHandler"


# instance fields
.field final synthetic this$0:Lcom/oppo/music/manager/AsyncRequestManager;


# direct methods
.method private constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/AsyncRequestManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/music/manager/AsyncRequestManager;
    .param p2, "x1"    # Lcom/oppo/music/manager/AsyncRequestManager$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;

    .line 158
    .local v0, "requestWrap":Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;
    if-eqz v0, :cond_1

    .line 159
    iget-object v1, v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    iget-object v2, v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mRequest:Lcom/oppo/music/manager/Request;

    invoke-interface {v1, v2}, Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;->onRequestBack(Lcom/oppo/music/manager/Request;)V

    goto :goto_0

    .line 163
    :cond_1
    const-string v1, "RequestHandler"

    const-string v2, "handleMessage() msg.obj is empty?"

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
