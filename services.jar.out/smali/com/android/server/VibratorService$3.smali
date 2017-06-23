.class Lcom/android/server/VibratorService$3;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    const-string v1, "switch_state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/VibratorService;->mThreeState:I
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$502(Lcom/android/server/VibratorService;I)I

    .line 280
    return-void
.end method
