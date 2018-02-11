.class Lcom/android/settings_ex/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 363
    if-eqz p2, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-wrap1(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-wrap4(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get2(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get1(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-wrap2(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 1
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get2(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get1(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->-get0(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
