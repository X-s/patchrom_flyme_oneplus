.class Lcom/android/settings_ex/datausage/DataUsageList$6;
.super Landroid/os/AsyncTask;
.source "DataUsageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/datausage/DataUsageList;->onResume()V
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
.field final synthetic this$0:Lcom/android/settings_ex/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/DataUsageList;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageList$6;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageList$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 256
    const-wide/16 v2, 0xfa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList$6;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    iget-object v2, v2, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 259
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageList$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$6;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const-string/jumbo v0, "DataUsage"

    const-string/jumbo v1, "AsyncTask is not Added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList$6;->this$0:Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/DataUsageList;->-wrap4(Lcom/android/settings_ex/datausage/DataUsageList;)V

    .line 265
    return-void
.end method
