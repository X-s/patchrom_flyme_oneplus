.class Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;
.super Landroid/os/AsyncTask;
.source "OPElectronicCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElecEnsurenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field imei:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;
    .param p2, "imei"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->imei:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/settings/electroniccard/OneplusServiceTools;->elecEnsurance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->imei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->doInBackground([Ljava/lang/String;)Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;)V
    .locals 6
    .param p1, "ensuranceResponse"    # Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->getWarrantyStart()J

    move-result-wide v0

    .line 94
    .local v0, "warrantyStartTime":J
    iget-object v2, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    iget-object v2, v2, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    invoke-virtual {v2}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->getWarrantyExpriedDateTv()Landroid/widget/TextView;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 95
    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPTimeUtil;->UnixTimeRead(J)Ljava/lang/String;

    move-result-object v2

    .line 94
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const-string/jumbo v2, "key_warranty_time"

    invoke-static {v2, v0, v1}, Lcom/oneplus/settings/utils/OPPrefUtil;->putLong(Ljava/lang/String;J)V

    .line 90
    .end local v0    # "warrantyStartTime":J
    :goto_1
    return-void

    .line 95
    .restart local v0    # "warrantyStartTime":J
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    const v4, 0x7f0e0077

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    .end local v0    # "warrantyStartTime":J
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    iget-object v2, v2, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    invoke-virtual {v2}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->getWarrantyExpriedDateTv()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    const v4, 0x7f0e03e4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "ensuranceResponse"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;

    .end local p1    # "ensuranceResponse":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->onPostExecute(Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    iget-object v0, v0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->card:Lcom/oneplus/settings/electroniccard/OPElectronicCardView;

    invoke-virtual {v0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->getWarrantyExpriedDateTv()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity$ElecEnsurenceTask;->this$0:Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;

    const v2, 0x7f0e03e3

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/electroniccard/OPElectronicCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
