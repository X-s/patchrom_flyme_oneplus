.class Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/PaymentBackend;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/nfc/PaymentBackend;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/nfc/PaymentBackend;Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/nfc/PaymentBackend;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/nfc/PaymentBackend;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->-get0(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->-get0(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->-get0(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->-get0(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void
.end method
