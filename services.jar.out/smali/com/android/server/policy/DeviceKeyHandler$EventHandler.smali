.class Lcom/android/server/policy/DeviceKeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final MSG_KEY_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p2, "x1"    # Lcom/android/server/policy/DeviceKeyHandler$1;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 454
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 457
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$800(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # invokes: Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V
    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$900(Lcom/android/server/policy/DeviceKeyHandler;)V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
