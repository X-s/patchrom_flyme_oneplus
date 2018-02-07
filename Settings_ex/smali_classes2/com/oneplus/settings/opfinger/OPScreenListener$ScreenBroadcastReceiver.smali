.class Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OPScreenListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPScreenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPScreenListener;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/opfinger/OPScreenListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPScreenListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->this$0:Lcom/oneplus/settings/opfinger/OPScreenListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/opfinger/OPScreenListener;Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPScreenListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;-><init>(Lcom/oneplus/settings/opfinger/OPScreenListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->this$0:Lcom/oneplus/settings/opfinger/OPScreenListener;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPScreenListener;->-get0(Lcom/oneplus/settings/opfinger/OPScreenListener;)Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;->onScreenOn()V

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->this$0:Lcom/oneplus/settings/opfinger/OPScreenListener;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPScreenListener;->-get0(Lcom/oneplus/settings/opfinger/OPScreenListener;)Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;->onScreenOff()V

    goto :goto_0

    .line 32
    :cond_2
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;->this$0:Lcom/oneplus/settings/opfinger/OPScreenListener;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPScreenListener;->-get0(Lcom/oneplus/settings/opfinger/OPScreenListener;)Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;->onUserPresent()V

    goto :goto_0
.end method
