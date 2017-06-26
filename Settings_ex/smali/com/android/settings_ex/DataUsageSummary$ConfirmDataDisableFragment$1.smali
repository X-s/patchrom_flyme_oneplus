.class Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2288
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .line 2289
    .local v0, "target":Lcom/android/settings_ex/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2291
    sget v1, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->mSubId:I

    const/4 v2, 0x0

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$900(Lcom/android/settings_ex/DataUsageSummary;IZ)V

    .line 2293
    :cond_0
    return-void
.end method
