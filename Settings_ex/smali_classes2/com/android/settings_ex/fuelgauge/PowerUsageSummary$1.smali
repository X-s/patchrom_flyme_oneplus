.class Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->-get0(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->stopApp(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->-get0(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    .line 411
    :cond_0
    return-void
.end method
