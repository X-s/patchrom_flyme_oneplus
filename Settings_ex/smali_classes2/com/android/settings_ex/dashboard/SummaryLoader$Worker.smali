.class Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;
.super Landroid/os/Handler;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/SummaryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# static fields
.field private static final MSG_GET_PROVIDER:I = 0x1

.field private static final MSG_SET_LISTENING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/dashboard/SummaryLoader;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/SummaryLoader;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_exlib/drawer/Tile;

    .line 230
    .local v1, "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-static {v2, v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->-wrap0(Lcom/android/settings_ex/dashboard/SummaryLoader;Lcom/android/settings_exlib/drawer/Tile;)V

    goto :goto_0

    .line 233
    .end local v1    # "tile":Lcom/android/settings_exlib/drawer/Tile;
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 234
    .local v0, "listening":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-static {v2, v0}, Lcom/android/settings_ex/dashboard/SummaryLoader;->-wrap1(Lcom/android/settings_ex/dashboard/SummaryLoader;Z)V

    goto :goto_0

    .line 233
    .end local v0    # "listening":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "listening":Z
    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
