.class Lcom/android/settings_ex/deviceinfo/SimStatus$3;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 565
    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get1(Lcom/android/settings_ex/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v2, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-set0(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get0(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get5(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get5(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get0(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    .line 568
    const/4 v3, 0x0

    .line 567
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-wrap4(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    .line 572
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get5(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get0(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    .line 573
    const/16 v3, 0x141

    .line 572
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 576
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-wrap2(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    .line 577
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-wrap3(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    .line 578
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-wrap5(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    .line 563
    return-void
.end method
