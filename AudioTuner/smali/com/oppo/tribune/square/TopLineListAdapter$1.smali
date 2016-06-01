.class Lcom/oppo/tribune/square/TopLineListAdapter$1;
.super Landroid/os/Handler;
.source "TopLineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/TopLineListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/TopLineListAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TopLineListAdapter;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oppo/tribune/square/TopLineListAdapter$1;->this$0:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/tribune/square/TopLineListAdapter$1;->this$0:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
