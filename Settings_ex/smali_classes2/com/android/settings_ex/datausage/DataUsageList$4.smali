.class Lcom/android/settings_ex/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/DataUsageList;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-wrap5(Lcom/android/settings_ex/datausage/DataUsageList;)V

    .line 759
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->setInspectRangeChanged()V

    .line 757
    return-void
.end method

.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->-wrap1(Lcom/android/settings_ex/datausage/DataUsageList;J)V

    .line 770
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-wrap4(Lcom/android/settings_ex/datausage/DataUsageList;)V

    .line 768
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList$4;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings_ex/datausage/DataUsageList;->-get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getWarningBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->-wrap2(Lcom/android/settings_ex/datausage/DataUsageList;J)V

    .line 763
    return-void
.end method

.method public requestLimitEdit()V
    .locals 0

    .prologue
    .line 778
    return-void
.end method

.method public requestWarningEdit()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method
