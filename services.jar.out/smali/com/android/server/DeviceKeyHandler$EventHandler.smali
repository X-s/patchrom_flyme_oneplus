.class Lcom/android/server/DeviceKeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final MSG_KEYEVENT:I = 0x1

.field static final MSG_OPEN_CAMERA:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceKeyHandler;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceKeyHandler;Lcom/android/server/DeviceKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/DeviceKeyHandler;
    .param p2, "x1"    # Lcom/android/server/DeviceKeyHandler$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/DeviceKeyHandler;

    # invokes: Lcom/android/server/DeviceKeyHandler;->processKeyEvent()V
    invoke-static {v0}, Lcom/android/server/DeviceKeyHandler;->access$700(Lcom/android/server/DeviceKeyHandler;)V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
