.class Lcom/android/server/policy/OemThreePointersGesturesListener$1;
.super Landroid/content/BroadcastReceiver;
.source "OemThreePointersGesturesListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemThreePointersGesturesListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener$1;->this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener$1;->this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->-set0(Lcom/android/server/policy/OemThreePointersGesturesListener;I)I

    .line 90
    const-string/jumbo v0, "OemGestures"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener$1;->this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-static {v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->-get0(Lcom/android/server/policy/OemThreePointersGesturesListener;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
