.class Lcom/android/settings_ex/RadioInfo$23;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RadioInfo;->setImsVoLteProvisionedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RadioInfo;
    .param p2, "val$state"    # Z

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$23;->this$0:Lcom/android/settings_ex/RadioInfo;

    iput-boolean p2, p0, Lcom/android/settings_ex/RadioInfo$23;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1138
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$23;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get6(Lcom/android/settings_ex/RadioInfo;)Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v2

    .line 1140
    iget-boolean v1, p0, Lcom/android/settings_ex/RadioInfo$23;->val$state:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1139
    :goto_0
    const/16 v3, 0xa

    .line 1138
    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_1
    return-void

    .line 1140
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v1, "RadioInfo"

    const-string/jumbo v2, "setImsVoLteProvisioned() exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
