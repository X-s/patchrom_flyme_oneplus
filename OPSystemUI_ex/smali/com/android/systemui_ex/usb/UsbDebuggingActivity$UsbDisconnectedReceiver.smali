.class Lcom/android/systemui_ex/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDebuggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/usb/UsbDebuggingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDisconnectedReceiver"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/systemui_ex/usb/UsbDebuggingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/usb/UsbDebuggingActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui_ex/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->this$0:Lcom/android/systemui_ex/usb/UsbDebuggingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/android/systemui_ex/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 89
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v2, "connected"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    .local v1, "connected":Z
    if-nez v1, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/systemui_ex/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
