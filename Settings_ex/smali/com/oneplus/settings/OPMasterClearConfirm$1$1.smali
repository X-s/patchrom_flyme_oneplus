.class Lcom/oneplus/settings/OPMasterClearConfirm$1$1;
.super Landroid/os/AsyncTask;
.source "OPMasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPMasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mOldOrientation:I

.field mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

.field final synthetic this$1:Lcom/oneplus/settings/OPMasterClearConfirm$1;

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPMasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->this$1:Lcom/oneplus/settings/OPMasterClearConfirm$1;

    iput-object p2, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->this$1:Lcom/oneplus/settings/OPMasterClearConfirm$1;

    iget-object v0, v0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->this$1:Lcom/oneplus/settings/OPMasterClearConfirm$1;

    iget-object v0, v0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    # invokes: Lcom/oneplus/settings/OPMasterClearConfirm;->doMasterClear()V
    invoke-static {v0}, Lcom/oneplus/settings/OPMasterClearConfirm;->access$000(Lcom/oneplus/settings/OPMasterClearConfirm;)V

    .line 107
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->this$1:Lcom/oneplus/settings/OPMasterClearConfirm$1;

    # invokes: Lcom/oneplus/settings/OPMasterClearConfirm$1;->getProgressDialog()Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v0}, Lcom/oneplus/settings/OPMasterClearConfirm$1;->access$100(Lcom/oneplus/settings/OPMasterClearConfirm$1;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/app/OPProgressDialog;->show()V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->this$1:Lcom/oneplus/settings/OPMasterClearConfirm$1;

    iget-object v0, v0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->mOldOrientation:I

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$1$1;->this$1:Lcom/oneplus/settings/OPMasterClearConfirm$1;

    iget-object v0, v0, Lcom/oneplus/settings/OPMasterClearConfirm$1;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPMasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 122
    return-void
.end method
