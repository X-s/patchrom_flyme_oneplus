.class Lcom/android/settings_ex/nfc/PaymentBackend$1;
.super Landroid/os/Handler;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/nfc/PaymentBackend;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings_ex/nfc/PaymentBackend$1;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentBackend$1;->this$0:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->refresh()V

    .line 192
    return-void
.end method
