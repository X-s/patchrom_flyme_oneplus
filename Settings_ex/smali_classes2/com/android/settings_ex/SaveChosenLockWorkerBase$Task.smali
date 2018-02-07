.class Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;
.super Landroid/os/AsyncTask;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SaveChosenLockWorkerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SaveChosenLockWorkerBase;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/SaveChosenLockWorkerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/SaveChosenLockWorkerBase;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings_ex/SaveChosenLockWorkerBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/SaveChosenLockWorkerBase;Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/SaveChosenLockWorkerBase;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings_ex/SaveChosenLockWorkerBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings_ex/SaveChosenLockWorkerBase;

    invoke-virtual {v0}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 1
    .param p1, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings_ex/SaveChosenLockWorkerBase;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "resultData"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Landroid/content/Intent;

    .end local p1    # "resultData":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SaveChosenLockWorkerBase$Task;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
