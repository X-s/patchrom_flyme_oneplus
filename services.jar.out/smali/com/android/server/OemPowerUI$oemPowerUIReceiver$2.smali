.class Lcom/android/server/OemPowerUI$oemPowerUIReceiver$2;
.super Ljava/lang/Object;
.source "OemPowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->showBatteryChargeDialog(Lcom/android/server/OemPowerUI$ProtectType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OemPowerUI$oemPowerUIReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/OemPowerUI$oemPowerUIReceiver;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver$2;->this$1:Lcom/android/server/OemPowerUI$oemPowerUIReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 353
    const-string v0, "OemPowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diss dialog onCancel curtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver$2;->this$1:Lcom/android/server/OemPowerUI$oemPowerUIReceiver;

    iget-object v2, v2, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;
    invoke-static {v2}, Lcom/android/server/OemPowerUI;->access$1100(Lcom/android/server/OemPowerUI;)Lcom/android/server/OemPowerUI$ProtectType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver$2;->this$1:Lcom/android/server/OemPowerUI$oemPowerUIReceiver;

    sget-object v1, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

    invoke-virtual {v0, v1}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->dismissBatteryChargeDialog(Lcom/android/server/OemPowerUI$ProtectType;)V

    .line 356
    return-void
.end method
