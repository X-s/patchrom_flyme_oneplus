.class Lcom/android/settings_ex/wifi/WifiApDialog$1;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mInit:Z

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

.field final synthetic val$mChannel:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiApDialog;Landroid/widget/Spinner;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->val$mChannel:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->mInit:Z

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->mInit:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # setter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I
    invoke-static {v0, p3}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$002(Lcom/android/settings_ex/wifi/WifiApDialog;I)I

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$000(Lcom/android/settings_ex/wifi/WifiApDialog;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 184
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config on channelIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$000(Lcom/android/settings_ex/wifi/WifiApDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->mInit:Z

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->val$mChannel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mBandIndex:I
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$000(Lcom/android/settings_ex/wifi/WifiApDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
