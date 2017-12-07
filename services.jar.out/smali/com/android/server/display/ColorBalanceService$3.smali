.class Lcom/android/server/display/ColorBalanceService$3;
.super Landroid/content/BroadcastReceiver;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorBalanceService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$3;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$3;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get9(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$3;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get16(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$3;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/ColorBalanceService;->-set2(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 287
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$3;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 289
    :cond_0
    const-string/jumbo v1, "ColorBalanceService"

    const-string/jumbo v2, "POWER down..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    return-void
.end method
