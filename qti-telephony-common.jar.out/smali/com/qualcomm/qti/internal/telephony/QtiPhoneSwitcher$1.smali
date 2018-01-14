.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;
.super Ljava/lang/Object;
.source "QtiPhoneSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onAllowDataResponse(ILandroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p2, "val$phoneId"    # I

    .prologue
    .line 412
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 415
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 416
    .local v1, "ddsSubId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 417
    .local v0, "ddsPhoneId":I
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->val$phoneId:I

    if-ne v0, v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string/jumbo v3, "Running retry connect/allow_data"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->val$phoneId:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resendDataAllowed(I)V

    .line 414
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string/jumbo v3, "Dds sub changed"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->val$phoneId:I

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-wrap1(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V

    goto :goto_0
.end method
