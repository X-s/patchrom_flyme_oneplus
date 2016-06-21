.class Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "CastControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/CastControllerImpl;)V

    .line 289
    :cond_0
    return-void
.end method
