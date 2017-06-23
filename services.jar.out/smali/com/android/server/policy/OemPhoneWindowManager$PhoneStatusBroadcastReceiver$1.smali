.class Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$3300(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 1822
    return-void
.end method
