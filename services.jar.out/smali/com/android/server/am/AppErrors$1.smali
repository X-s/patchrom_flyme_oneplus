.class Lcom/android/server/am/AppErrors$1;
.super Landroid/os/Handler;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrors;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrors;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrors;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppErrors;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1113
    :goto_0
    return-void

    .line 1117
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/AppErrors;->-wrap0(Lcom/android/server/am/AppErrors;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
