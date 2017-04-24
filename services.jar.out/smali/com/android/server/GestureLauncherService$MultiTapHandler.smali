.class final Lcom/android/server/GestureLauncherService$MultiTapHandler;
.super Landroid/os/Handler;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiTapHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$MultiTapHandler;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :goto_0
    return-void

    .line 454
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$MultiTapHandler;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I
    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->access$1502(Lcom/android/server/GestureLauncherService;I)I

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
