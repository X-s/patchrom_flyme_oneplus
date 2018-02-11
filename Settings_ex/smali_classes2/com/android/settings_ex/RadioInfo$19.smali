.class Lcom/android/settings_ex/RadioInfo$19;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RadioInfo;->updateAllCellInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;

.field final synthetic val$updateAllCellInfoResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RadioInfo;
    .param p2, "val$updateAllCellInfoResults"    # Ljava/lang/Runnable;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    iput-object p2, p0, Lcom/android/settings_ex/RadioInfo$19;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get14(Lcom/android/settings_ex/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioInfo;->-set1(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 964
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get14(Lcom/android/settings_ex/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioInfo;->-set2(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    .line 965
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get14(Lcom/android/settings_ex/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioInfo;->-set5(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 967
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$19;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->-get3(Lcom/android/settings_ex/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$19;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 962
    return-void
.end method
