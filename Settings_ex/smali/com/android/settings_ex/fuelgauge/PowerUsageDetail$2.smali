.class Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;
.super Ljava/lang/Object;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;I)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    iput p2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;->val$action:I

    # invokes: Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->doAction(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;I)V

    .line 657
    const/4 v0, 0x1

    return v0
.end method
