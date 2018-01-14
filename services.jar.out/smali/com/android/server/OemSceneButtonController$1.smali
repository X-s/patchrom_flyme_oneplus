.class Lcom/android/server/OemSceneButtonController$1;
.super Landroid/os/Handler;
.source "OemSceneButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneButtonController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneButtonController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneButtonController;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-static {v0}, Lcom/android/server/OemSceneButtonController;->-wrap1(Lcom/android/server/OemSceneButtonController;)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-static {v0}, Lcom/android/server/OemSceneButtonController;->-wrap1(Lcom/android/server/OemSceneButtonController;)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->-wrap0(Lcom/android/server/OemSceneButtonController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/OemSceneButtonController;->-set0(Lcom/android/server/OemSceneButtonController;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-static {v0}, Lcom/android/server/OemSceneButtonController;->-wrap1(Lcom/android/server/OemSceneButtonController;)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
