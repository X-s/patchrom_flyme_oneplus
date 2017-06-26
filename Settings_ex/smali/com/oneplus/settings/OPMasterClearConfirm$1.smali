.class Lcom/oneplus/settings/OPMasterClearConfirm$1;
.super Ljava/lang/Object;
.source "OPMasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPMasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPMasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPMasterClearConfirm;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPMasterClearConfirm$1;)Lcom/oneplus/app/OPProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPMasterClearConfirm$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/oneplus/settings/OPMasterClearConfirm$1;->getProgressDialog()Lcom/oneplus/app/OPProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private getProgressDialog()Lcom/oneplus/app/OPProgressDialog;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/oneplus/app/OPProgressDialog;

    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "progressDialog":Lcom/oneplus/app/OPProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPProgressDialog;->setIndeterminate(Z)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPProgressDialog;->setCancelable(Z)V

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c06f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c06f8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 86
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;-><init>(Lcom/oneplus/settings/OPMasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    # invokes: Lcom/oneplus/settings/OPMasterClearConfirm;->doMasterClear()V
    invoke-static {v1}, Lcom/oneplus/settings/OPMasterClearConfirm;->access$000(Lcom/oneplus/settings/OPMasterClearConfirm;)V

    goto :goto_0
.end method
