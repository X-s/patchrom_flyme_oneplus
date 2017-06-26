.class Lcom/android/settings_ex/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1312
    .local v0, "disableAtLimit":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1319
    :goto_1
    return-void

    .line 1311
    .end local v0    # "disableAtLimit":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1317
    .restart local v0    # "disableAtLimit":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const-wide/16 v2, -0x1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1200(Lcom/android/settings_ex/DataUsageSummary;J)V

    goto :goto_1
.end method
