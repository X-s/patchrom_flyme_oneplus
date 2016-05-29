.class Lcom/android/settings_ex/location/LocationMode$2;
.super Lcom/android/location/XT/IXTSrvCb$Stub;
.source "LocationMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationMode;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationMode$2;->this$0:Lcom/android/settings_ex/location/LocationMode;

    invoke-direct {p0}, Lcom/android/location/XT/IXTSrvCb$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public statusChanged(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode$2;->this$0:Lcom/android/settings_ex/location/LocationMode;

    # getter for: Lcom/android/settings_ex/location/LocationMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationMode;->access$100(Lcom/android/settings_ex/location/LocationMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode$2;->this$0:Lcom/android/settings_ex/location/LocationMode;

    # getter for: Lcom/android/settings_ex/location/LocationMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/location/LocationMode;->access$100(Lcom/android/settings_ex/location/LocationMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode$2;->this$0:Lcom/android/settings_ex/location/LocationMode;

    # getter for: Lcom/android/settings_ex/location/LocationMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationMode;->access$100(Lcom/android/settings_ex/location/LocationMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode$2;->this$0:Lcom/android/settings_ex/location/LocationMode;

    # getter for: Lcom/android/settings_ex/location/LocationMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/location/LocationMode;->access$100(Lcom/android/settings_ex/location/LocationMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
