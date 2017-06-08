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

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/nfc/PaymentBackend;Lcom/android/settings_ex/nfc/PaymentBackend$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/nfc/PaymentBackend;
    .param p2, "x1"    # Lcom/android/settings_ex/nfc/PaymentBackend$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/nfc/PaymentBackend;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    # getter for: Lcom/android/settings_ex/nfc/PaymentBackend;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->access$100(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    # getter for: Lcom/android/settings_ex/nfc/PaymentBackend;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->access$100(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    # getter for: Lcom/android/settings_ex/nfc/PaymentBackend;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->access$100(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    # getter for: Lcom/android/settings_ex/nfc/PaymentBackend;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->access$100(Lcom/android/settings_ex/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method
